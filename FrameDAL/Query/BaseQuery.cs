using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Reflection;
using FrameDAL.Core;

namespace FrameDAL.Query
{
    public abstract class BaseQuery : IQuery
    {
        public Core.ISession Session { get; set; }

        public string SqlText { get; set; }

        public object[] Parameters { get; set; }

        public int FirstResult { get; set; }

        public int PageSize { get; set; }

        public void ExecuteNonQuery()
        {
            throw new NotImplementedException();
        }

        public object ExecuteScalar()
        {
            throw new NotImplementedException();
        }

        public System.Data.DataSet ExecuteGetDataSet()
        {
            throw new NotImplementedException();
        }

        public System.Data.DataTable ExecuteGetDataTable()
        {
            throw new NotImplementedException();
        }

        public List<T> ExecuteGetList<T>()
        {
            List<T> results = new List<T>();
            DataTable dt = ExecuteGetDataTable();
            foreach (DataRow row in dt.Rows)
            {
                T entity = (T)AppContext.Instance.GetConstructor(typeof(T)).Invoke(null);
                foreach (PropertyInfo prop in AppContext.Instance.GetProperties(typeof(T)))
                {
                    object value = row[AppContext.Instance.GetColumn(prop).Name];
                    if (!(value is DBNull))
                    {
                        Type t = prop.PropertyType;
                        prop.SetValue(
                            entity,
                            Convert.ChangeType(value, t.IsGenericType ? t.GetGenericArguments()[0] : t),
                            null);
                    }
                }
                results.Add(entity);
            }
            return results;
        }

        public T ExecuteGetEntity<T>()
        {
            return ExecuteGetList<T>()[0];
        }
    }
}
