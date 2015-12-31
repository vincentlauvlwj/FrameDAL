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
    public class EntityFactory : IInterceptor 
    {
        private static ProxyGenerator generator = new ProxyGenerator();

        public static object GetEntity(Type entityType, bool enableLazy, bool enforceLazy)
        {
            Dictionary<string, bool> initialized = AppContext.Instance.GetProperties(entityType)
                .Where(p => NeedProxy(p, enableLazy, enforceLazy))
                .ToDictionary(p => p.Name, p => false);
            if (initialized.Count == 0)
            {
                return Activator.CreateInstance(entityType);
            }
            else
            {
                return generator.CreateClassProxy(entityType, new EntityFactory(initialized));
            }
        }

        private static bool NeedProxy(PropertyInfo prop, bool enableLazy, bool enforceLazy)
        {
            ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
            if (col != null && col.LazyLoad && enableLazy)
            {
                return true;
            }
            ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);
            if (manyToOne != null && (manyToOne.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            OneToManyAttribute oneToMany = AppContext.Instance.GetOneToManyAttribute(prop);
            if (oneToMany != null && (oneToMany.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            ManyToManyAttribute manyToMany = AppContext.Instance.GetManyToManyAttribute(prop);
            if (manyToMany != null && (manyToMany.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            return false;
        }



        private Dictionary<string, bool> initialized;

        private EntityFactory(Dictionary<string, bool> initialized)
        {
            this.initialized = initialized;
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
                PropertyInfo prop = AppContext.Instance.GetProperties(invocation.TargetType).Where(p => p.Name == propName).First();
                object id = AppContext.Instance.GetIdProperty(invocation.TargetType).GetValue(invocation.InvocationTarget, null);
                ColumnAttribute column = AppContext.Instance.GetColumnAttribute(prop);
                ManyToOneAttribute manyToOne = AppContext.Instance.GetManyToOneAttribute(prop);
                OneToManyAttribute oneToMany = AppContext.Instance.GetOneToManyAttribute(prop);
                ManyToManyAttribute manyToMany = AppContext.Instance.GetManyToManyAttribute(prop);
                ISession session = AppContext.Instance.OpenSession();
                object result;
                if (column != null)
                {
                    string sql = AppContext.Instance.DbHelper.Dialect.GetLoadColumnPropertySql(prop);
                    result = session.CreateQuery(sql, id).ExecuteScalar();
                }
                else if (manyToOne != null)
                { 
                    
                }
                else if (oneToMany != null)
                { 
                    
                }
                else if (manyToMany != null)
                { 
                    
                }
                AppContext.Instance.SetPropertyValue(invocation.InvocationTarget, prop, result);
                invocation.ReturnValue = prop.GetValue(invocation.InvocationTarget, null);
                session.Close();
            }
        }
    }
}
