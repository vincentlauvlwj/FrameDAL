using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using FrameDAL.Attributes;
using FrameDAL.Dialect;
using FrameDAL.Utility;
using Castle.DynamicProxy;

namespace FrameDAL.Core
{
    public class EntityFactory : IInterceptor 
    {
        private static ProxyGenerator generator = new ProxyGenerator();

        public static object GetEntity(Type entityType, bool enableLazy, bool enforceLazy)
        {
            Dictionary<string, bool> initialized = entityType.GetCachedProperties()
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
            ColumnAttribute col = prop.GetColumnAttribute();
            if (col != null && col.LazyLoad && enableLazy)
            {
                return true;
            }
            ManyToOneAttribute manyToOne = prop.GetManyToOneAttribute();
            if (manyToOne != null && (manyToOne.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            OneToManyAttribute oneToMany = prop.GetOneToManyAttribute();
            if (oneToMany != null && (oneToMany.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            ManyToManyAttribute manyToMany = prop.GetManyToManyAttribute();
            if (manyToMany != null && (manyToMany.LazyLoad && enableLazy || enforceLazy))
            {
                return true;
            }
            return false;
        }

        private static MethodInfo executeGetList = typeof(ISqlQuery).GetMethod("ExecuteGetList", new Type[0]);
        private static MethodInfo executeGetEntity = typeof(ISqlQuery).GetMethod("ExecuteGetEntity", new Type[0]);

        private Dictionary<string, bool> initialized;

        private EntityFactory(Dictionary<string, bool> initialized)
        {
            this.initialized = initialized;
        }

        public void Intercept(IInvocation invocation)
        {
            string propName = invocation.Method.Name.Substring(4);

            if (invocation.Method.Name.StartsWith("get_") && initialized.ContainsKey(propName) && !initialized[propName])
            {
                PropertyInfo prop = invocation.TargetType.GetCachedProperties().Where(p => p.Name == propName).First();
                object id = invocation.TargetType.GetIdProperty().GetValue(invocation.InvocationTarget, null);
                ISession session = AppContext.Instance.OpenSession();
                object result = null;
                IDialect dialect = AppContext.Instance.DbHelper.Dialect;

                if (prop.GetColumnAttribute() != null)
                {
                    string sql = AppContext.Instance.DbHelper.Dialect.GetLoadColumnPropertySql(prop);
                    result = session.CreateSqlQuery(sql, id).ExecuteScalar();
                }
                else if (prop.GetManyToOneAttribute() != null)
                {
                    Dictionary<string, string> resultMap;
                    string sql = dialect.GetLoadManyToOnePropertySql(prop, AppContext.Instance.Configuration.EnableLazy, out resultMap);
                    ISqlQuery query = session.CreateSqlQuery(sql, id);
                    query.ResultMap = resultMap;
                    result = executeGetEntity.MakeGenericMethod(prop.PropertyType).Invoke(query, null);
                }
                else if (prop.GetOneToManyAttribute() != null)
                {
                    Dictionary<string, string> resultMap;
                    string sql = dialect.GetLoadOneToManyPropertySql(prop, AppContext.Instance.Configuration.EnableLazy, out resultMap);
                    ISqlQuery query = session.CreateSqlQuery(sql, id);
                    query.ResultMap = resultMap;
                    result = executeGetList.MakeGenericMethod(prop.PropertyType.GetGenericArguments()[0]).Invoke(query, null);
                }
                else if (prop.GetManyToManyAttribute() != null)
                {
                    Dictionary<string, string> resultMap;
                    string sql = dialect.GetLoadManyToManyPropertySql(prop, AppContext.Instance.Configuration.EnableLazy, out resultMap);
                    ISqlQuery query = session.CreateSqlQuery(sql, id);
                    query.ResultMap = resultMap;
                    result = executeGetList.MakeGenericMethod(prop.PropertyType.GetGenericArguments()[0]).Invoke(query, null);
                }

                prop.SetValueSafely(invocation.InvocationTarget, result);
                invocation.ReturnValue = prop.GetValue(invocation.InvocationTarget, null);
                session.Close();
            }
            else
            {
                invocation.Proceed();
                if (invocation.Method.Name.StartsWith("set_") && initialized.ContainsKey(propName)) initialized[propName] = true;
            }
        }
    }
}
