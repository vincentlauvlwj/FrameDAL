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
        public ISession Session 
        {
            get
            {
                return Sess;
            }
            set
            {
                Sess = (BaseSession) value;
            }
        }

        protected BaseSession Sess { get; set; }

        public string SqlText { get; set; }

        public object[] Parameters { get; set; }

        public int FirstResult { get; set; }

        public int PageSize { get; set; }

        public int? ExecuteNonQuery()
        {
            if (Sess.DbHelper.InTransaction())
            {
                return Sess.DbHelper.ExecuteNonQuery(SqlText, Parameters);
            }
            else
            {
                Sess.AddToCache(SqlText, Parameters);
                return null;
            }
        }

        public object ExecuteScalar()
        {
            Sess.Flush();
            return Sess.DbHelper.ExecuteScalar(SqlText, Parameters);
        }

        protected abstract void BeforeQuery();

        public DataSet ExecuteGetDataSet()
        {
            Sess.Flush();
            BeforeQuery();
            return Sess.DbHelper.ExecuteGetDataSet(SqlText, Parameters);
        }

        public DataTable ExecuteGetDataTable()
        {
            Sess.Flush();
            BeforeQuery();
            return Sess.DbHelper.ExecuteGetDataTable(SqlText, Parameters);
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
