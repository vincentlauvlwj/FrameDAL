using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Query
{
    public abstract class BaseQuery : IQuery
    {
        public Core.ISession Session { get; set; }

        public string SqlText { get; set; }

        public object[] Parameters { get; set; }

        public int FirstResult { get; set; }

        public int PageSize { get; set; }

        public int ExecuteNonQuery()
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
            throw new NotImplementedException();
        }

        public T ExecuteGetEntity<T>()
        {
            throw new NotImplementedException();
        }
    }
}
