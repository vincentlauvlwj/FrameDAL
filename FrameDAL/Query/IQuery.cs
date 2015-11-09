using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrameDAL.Core;

namespace FrameDAL.Query
{
    public interface IQuery
    {
        ISession Session { get; set; }

        string SqlText { get; set; }

        object[] Parameters { get; set; }

        int FirstResult { get; set; }

        int PageSize { get; set; }

        void ExecuteNonQuery();

        object ExecuteScalar();

        DataSet ExecuteGetDataSet();

        DataTable ExecuteGetDataTable();

        List<T> ExecuteGetList<T>();

        T ExecuteGetEntity<T>();
    }
}
