using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Threading;

namespace FrameDAL.DbHelper
{
    public abstract class BaseHelper : IDbHelper
    {
        protected string connStr;

        protected BaseHelper(string connStr)
        {
            this.connStr = connStr;
        }

        protected class Bundle
        {
            public DbConnection Connection;
            public DbTransaction Transaction;
            public int Tier;
        }

        protected Dictionary<int, Bundle> dict = new Dictionary<int, Bundle>();

        protected int GetTransactionTier()
        {
            return dict.ContainsKey(Thread.CurrentThread.ManagedThreadId) ? dict[Thread.CurrentThread.ManagedThreadId].Tier : 0;
        }

        public bool InTransaction()
        {
            return dict.ContainsKey(Thread.CurrentThread.ManagedThreadId);
        }

        public void BeginTransaction()
        {
            if (GetTransactionTier() == 0)
            {
                Bundle bundle = new Bundle();
                bundle.Connection = NewConnection(connStr);
                bundle.Connection.Open();
                bundle.Transaction = bundle.Connection.BeginTransaction();
                bundle.Tier = 1;
                dict.Add(Thread.CurrentThread.ManagedThreadId, bundle);
            }
            else
            {
                dict[Thread.CurrentThread.ManagedThreadId].Tier++;
            }
        }

        protected abstract DbConnection NewConnection(string connStr);

        public void CommitTransaction()
        {
            if (GetTransactionTier() == 1)
            {
                Bundle bundle = dict[Thread.CurrentThread.ManagedThreadId];
                dict.Remove(Thread.CurrentThread.ManagedThreadId);
                bundle.Transaction.Commit();
                bundle.Connection.Close();
            }
            else
            {
                dict[Thread.CurrentThread.ManagedThreadId].Tier--;
            }
        }


        public void RollbackTransaction()
        {
            if (GetTransactionTier() == 1)
            {
                Bundle bundle = dict[Thread.CurrentThread.ManagedThreadId];
                dict.Remove(Thread.CurrentThread.ManagedThreadId);
                bundle.Transaction.Rollback();
                bundle.Connection.Close();
            }
            else
            {
                dict[Thread.CurrentThread.ManagedThreadId].Tier--;
            }
        }

        protected abstract DbCommand NewCommand();

        protected abstract DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters);

        public int ExecuteNonQuery(string sqlText, params object[] parameters)
        {
            if (InTransaction())
            {
                Bundle bundle = dict[Thread.CurrentThread.ManagedThreadId];
                return PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters).ExecuteNonQuery();
            }
            else using (DbConnection conn = NewConnection(connStr))
                {
                    conn.Open();
                    return PrepareCommand(conn, null, sqlText, parameters).ExecuteNonQuery();
                }
        }

        public object ExecuteScalar(string sqlText, params object[] parameters)
        {
            if (InTransaction())
            {
                Bundle bundle = dict[Thread.CurrentThread.ManagedThreadId];
                return PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters).ExecuteScalar();
            }
            else using (DbConnection conn = NewConnection(connStr))
                {
                    conn.Open();
                    return PrepareCommand(conn, null, sqlText, parameters).ExecuteScalar();
                }
        }

        protected abstract DbDataAdapter NewDataAdapter(DbCommand cmd);

        public DataSet ExecuteGetDataSet(string sqlText, params object[] parameters)
        {
            if (InTransaction())
            {
                Bundle bundle = dict[Thread.CurrentThread.ManagedThreadId];
                DataSet ds = new DataSet();
                NewDataAdapter(PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters)).Fill(ds);
                return ds;
            }
            else using (DbConnection conn = NewConnection(connStr))
                {
                    conn.Open();
                    DataSet ds = new DataSet();
                    NewDataAdapter(PrepareCommand(conn, null, sqlText, parameters)).Fill(ds);
                    return ds;
                }
        }

        public DataTable ExecuteGetDataTable(string sqlText, params object[] parameters)
        {
            DataSet ds = ExecuteGetDataSet(sqlText, parameters);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public List<T> ExecuteGetList<T>(string sqlText, params object[] parameters)
        {
            throw new NotImplementedException();
        }

        public T ExecuteGetEntity<T>(string sqlText, params object[] parameters)
        {
            return ExecuteGetList<T>(sqlText, parameters)[0];
        }
    }
}
