using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Attributes;
using Castle.DynamicProxy;

namespace FrameDAL.Core
{
    public class EntityProxy<T> : IInterceptor where T : class
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
            
        }
    }
}
