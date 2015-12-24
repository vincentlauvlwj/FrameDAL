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

        public static T Get() 
        {
            return generator.CreateClassProxy<T>(new EntityProxy<T>());
        }


        private Dictionary<string, bool> initialized = new Dictionary<string, bool>();

        public EntityProxy()
        {
            foreach (PropertyInfo prop in AppContext.Instance.GetProperties(typeof(T)))
            {
                ColumnAttribute col = AppContext.Instance.GetColumnAttribute(prop);
                if (col == null || !col.LazyLoad) continue;
                initialized[prop.Name] = false;
            }
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
