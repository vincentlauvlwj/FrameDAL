using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Attributes;
using FrameDAL.Dialect;
using Castle.DynamicProxy;

namespace FrameDAL.Core
{
    public class EntityProxy<T> : IInterceptor where T : class, new()
    {
        private static ProxyGenerator generator = new ProxyGenerator();

        public static T Get(bool enableLazy) 
        {
            if (AppContext.Instance.GetProperties(typeof(T)).Count(p => NeedProxy(p, enableLazy)) == 0)
            {
                return new T();
            }
            else
            {
                return generator.CreateClassProxy<T>(new EntityProxy<T>(enableLazy));
            }
        }

        private static bool NeedProxy(PropertyInfo prop, bool enableLazy)
        {
            if (!enableLazy) return false;
            ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
            if (col != null && col.LazyLoad)
            {
                return true;
            }
            ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);
            if (manyToOne != null && manyToOne.LazyLoad)
            {
                return true;
            }
            OneToManyAttribute oneToMany = AppContext.Instance.GetOneToManyAttribute(prop);
            if (oneToMany != null && oneToMany.LazyLoad)
            {
                return true;
            }
            ManyToManyAttribute manyToMany = AppContext.Instance.GetManyToManyAttribute(prop);
            if (manyToMany != null && manyToMany.LazyLoad)
            {
                return true;
            }
            return false;
        }

        private Dictionary<string, bool> initialized;

        public EntityProxy(bool enableLazy)
        {
            initialized = AppContext.Instance.GetProperties(typeof(T))
                .Where(p => NeedProxy(p, enableLazy))
                .ToDictionary(p => p.Name, p => false);
        }

        public void Intercept(IInvocation invocation)
        {
            string propName = invocation.Method.Name.Substring(4);

            if (!invocation.Method.Name.StartsWith("get_") || !initialized.ContainsKey(propName) || initialized[propName])
            {
                invocation.Proceed();
                if (invocation.Method.Name.StartsWith("set_") && initialized.ContainsKey(propName)) initialized[propName] = true;
            }
            else
            {
                using (ISession session = AppContext.Instance.OpenSession())
                {
                    PropertyInfo prop = AppContext.Instance.GetProperties(invocation.TargetType).Where(p => p.Name == propName).First();
                    PropertyInfo idProp = AppContext.Instance.GetIdProperty(invocation.TargetType);

                    string sql = AppContext.Instance.DbHelper.Dialect.GetLoadPropertySql(prop);
                    object result = session.CreateQuery(sql, idProp.GetValue(invocation.InvocationTarget, null)).ExecuteScalar();

                    AppContext.Instance.SetPropertyValue(invocation.InvocationTarget, prop, result);
                    invocation.ReturnValue = prop.GetValue(invocation.InvocationTarget, null);
                }
            }
        }
    }
}
