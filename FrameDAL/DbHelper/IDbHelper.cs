using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace FrameDAL.DbHelper
{
    public interface IDbHelper
    {
        bool InTransaction();

        void BeginTransaction();

        void CommitTransaction();

        void RollbackTransaction();

        int ExecuteNonQuery(string sqlText, params object[] parameters);

        object ExecuteScalar(string sqlText, params object[] parameters);

        DataSet ExecuteGetDataSet(string sqlText, params object[] parameters);

        DataTable ExecuteGetDataTable(string sqlText, params object[] parameters);
    }
}
