using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Threading;
using FrameDAL.Exceptions;
using FrameDAL.Dialect;

namespace FrameDAL.DbHelper
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 数据库访问助手的基类。
    /// 数据库访问助手是直接与数据库进行交互的类，不同的数据库使用不同的访问助手，
    /// 此类实现了数据库访问助手的一些通用方法，继承此类，实现几个方法
    /// 即可支持一个新的数据库，当然也可以选择实现IDbHelper接口。
    /// 此类是线程安全的，不同线程可使用同一个DbHelper对象同时访问数据库。
    /// </summary>
    public abstract class BaseHelper : IDbHelper
    {
        /// <summary>
        /// 获取数据库方言
        /// </summary>
        public abstract IDialect Dialect { get; }

        /// <summary>
        /// 创建一个DbConnection对象，由子类实现
        /// </summary>
        /// <returns>DbConnection对象</returns>
        public abstract DbConnection NewConnection();

        /// <summary>
        /// 使用给定参数创建DbCommand对象，由子类实现
        /// </summary>
        /// <param name="conn">数据库连接</param>
        /// <param name="trans">数据库事务</param>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回DbCommand对象</returns>
        public abstract DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters);

        /// <summary>
        /// 创建一个数据适配器对象，由子类实现
        /// </summary>
        /// <param name="cmd">命令对象</param>
        /// <returns>返回一个数据适配器对象</returns>
        public abstract DbDataAdapter NewDataAdapter(DbCommand cmd);

        private string connStr;

        /// <summary>
        /// 获取或设置数据库连接字符串
        /// </summary>
        public string ConnectionString 
        {
            get
            {
                if (string.IsNullOrWhiteSpace(connStr))
                    throw new InvalidOperationException("ConnectionString属性尚未初始化。");
                return connStr;
            }
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("数据库连接串不可为null或空白字符：" + value);
                connStr = value;
            }
        }

        protected BaseHelper() { }

        protected BaseHelper(string connStr)
        {
            this.ConnectionString = connStr;
        }

        protected class Bundle
        {
            public DbConnection Connection { get; set; }
            public DbTransaction Transaction { get; set; }
            public int Tier { get; set; }
        }

        protected ThreadLocal<Bundle> local = new ThreadLocal<Bundle>();

        /// <summary>
        /// 获得事务的嵌套层级，实际上此类并不支持事务嵌套，子事务操作将被忽略
        /// </summary>
        /// <returns>返回嵌套层级</returns>
        protected int GetTransactionTier()
        {
            return InTransaction() ? local.Value.Tier : 0;
        }

        /// <summary>
        /// 返回一个bool值，指示当前线程是否已开启事务
        /// </summary>
        /// <returns>事务已开启返回true，否则返回false</returns>
        public virtual bool InTransaction()
        {
            return local.IsValueCreated && local.Value != null;
        }

        /// <summary>
        /// 在当前线程开启事务，当多次调用此方法时，只有第一次会生效
        /// </summary>
        public virtual void BeginTransaction()
        {
            if (GetTransactionTier() == 0)
            {
                Bundle bundle = new Bundle();
                bundle.Connection = NewConnection();
                bundle.Connection.Open();
                bundle.Transaction = bundle.Connection.BeginTransaction();
                bundle.Tier = 1;
                local.Value = bundle;
            }
            else
            {
                local.Value.Tier++;
            }
        }

        /// <summary>
        /// 提交当前线程上的事务，当嵌套打开事务时，只有与第一次BeginTransaction对应的那次
        /// CommitTransaction或RollbackTransaction调用会生效
        /// </summary>
        public virtual void CommitTransaction()
        {
            int tier = GetTransactionTier();
            if (tier == 0) throw new InvalidOperationException("非法操作，事务尚未开启。");
            if (tier == 1)
            {
                Bundle bundle = local.Value;
                local.Value = null;
                bundle.Transaction.Commit();
                bundle.Connection.Close();
            }
            else
            {
                local.Value.Tier--;
            }
        }

        /// <summary>
        /// 回滚当前线程上的事务，当嵌套打开事务时，只有与第一次BeginTransaction对应的那次
        /// CommitTransaction或RollbackTransaction调用会生效
        /// </summary>
        public virtual void RollbackTransaction()
        {
            int tier = GetTransactionTier();
            if (tier == 0) throw new InvalidOperationException("非法操作，事务尚未开启。");
            if (tier == 1)
            {
                Bundle bundle = local.Value;
                local.Value = null;
                bundle.Transaction.Rollback();
                bundle.Connection.Close();
            }
            else
            {
                local.Value.Tier--;
            }
        }

        /// <summary>
        /// 执行非查询操作
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>受影响的记录数</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        public virtual int ExecuteNonQuery(string sqlText, params object[] parameters)
        {
            try
            {
                if (InTransaction())
                {
                    Bundle bundle = local.Value;
                    return PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters).ExecuteNonQuery();
                }
                else
                {
                    using (DbConnection conn = NewConnection())
                    {
                        conn.Open();
                        return PrepareCommand(conn, null, sqlText, parameters).ExecuteNonQuery();
                    }
                }
            }
            catch (Exception e)
            {
                throw new DbAccessException("SQL执行出错：" + sqlText + "。错误信息：" + e.Message + "。更多异常信息请参考InnerException。", e);
            }
        }

        /// <summary>
        /// 获得一个标量值
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回一个标量值</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        public virtual object ExecuteScalar(string sqlText, params object[] parameters)
        {
            try
            {
                if (InTransaction())
                {
                    Bundle bundle = local.Value;
                    return PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters).ExecuteScalar();
                }
                else
                {
                    using (DbConnection conn = NewConnection())
                    {
                        conn.Open();
                        return PrepareCommand(conn, null, sqlText, parameters).ExecuteScalar();
                    }
                }
            }
            catch (Exception e)
            {
                throw new DbAccessException("SQL执行出错：" + sqlText + "。错误信息：" + e.Message + "。更多异常信息请参考InnerException。", e);
            }
        }

        public virtual object ExecuteReader(string sqlText, object[] parameters, Func<DbDataReader, object> func)
        {
            try
            {
                if (InTransaction())
                {
                    Bundle bundle = local.Value;
                    using (DbDataReader reader = PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters).ExecuteReader())
                    {
                        return func(reader);
                    }
                }
                else
                {
                    using (DbConnection conn = NewConnection())
                    {
                        conn.Open();
                        using (DbDataReader reader = PrepareCommand(conn, null, sqlText, parameters).ExecuteReader())
                        {
                            return func(reader);
                        }
                    }
                }
            }
            catch (Exception e)
            {
                throw new DbAccessException("SQL执行出错：" + sqlText + "。错误信息：" + e.Message + "。更多异常信息请参考InnerException。", e);
            }
        }

        /// <summary>
        /// 执行查询，返回数据集
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回数据集</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        public virtual DataSet ExecuteGetDataSet(string sqlText, params object[] parameters)
        {
            try
            {
                if (InTransaction())
                {
                    Bundle bundle = local.Value;
                    DataSet ds = new DataSet();
                    NewDataAdapter(PrepareCommand(bundle.Connection, bundle.Transaction, sqlText, parameters)).Fill(ds);
                    return ds;
                }
                else
                {
                    using (DbConnection conn = NewConnection())
                    {
                        conn.Open();
                        DataSet ds = new DataSet();
                        NewDataAdapter(PrepareCommand(conn, null, sqlText, parameters)).Fill(ds);
                        return ds;
                    }
                }
            }
            catch (Exception e)
            {
                throw new DbAccessException("SQL执行出错：" + sqlText + "。错误信息：" + e.Message + "。更多异常信息请参考InnerException。", e);
            }
        }

        /// <summary>
        /// 执行查询，返回数据表
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回数据表</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        public virtual DataTable ExecuteGetDataTable(string sqlText, params object[] parameters)
        {
            DataSet ds = ExecuteGetDataSet(sqlText, parameters);

            if (ds != null && ds.Tables.Count > 0)
                return ds.Tables[0];
            else
                return null;
        }

        public virtual object DoInCurrentTransaction(Func<DbConnection, DbTransaction, object> func)
        {
            if (InTransaction())
            {
                Bundle bundle = local.Value;
                return func(bundle.Connection, bundle.Transaction);
            }
            else
            {
                using (DbConnection conn = NewConnection())
                {
                    conn.Open();
                    DbTransaction trans = conn.BeginTransaction();
                    try
                    {
                        object result = func(conn, trans);
                        trans.Commit();
                        return result;
                    }
                    catch
                    {
                        trans.Rollback();
                        throw;
                    }
                }
            }
        }
    }
}
