using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using FrameDAL.Dialect;
using FrameDAL.Exceptions;

namespace FrameDAL.DbHelper
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 数据库访问助手接口。
    /// 数据库访问助手是直接与数据库进行交互的类，不同的数据库使用不同的访问助手。
    /// 为支持不同的数据库，可实现此接口，也可继承BaseHelper类。
    /// DbHelper是线程安全的，不同线程可使用同一个DbHelper对象同时访问数据库。
    /// </summary>
    public interface IDbHelper
    {
        /// <summary>
        /// 获取或设置数据库连接字符串
        /// </summary>
        string ConnectionString { get; set; }

        /// <summary>
        /// 获取数据库方言
        /// </summary>
        IDialect Dialect { get; }

        /// <summary>
        /// 创建一个DbConnection对象
        /// </summary>
        /// <returns>DbConnection对象</returns>
        DbConnection NewConnection();

        /// <summary>
        /// 使用给定参数创建DbCommand对象
        /// </summary>
        /// <param name="conn">数据库连接</param>
        /// <param name="trans">数据库事务</param>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回DbCommand对象</returns>
        DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters);

        /// <summary>
        /// 创建一个数据适配器对象
        /// </summary>
        /// <param name="cmd">命令对象</param>
        /// <returns>返回一个数据适配器对象</returns>
        DbDataAdapter NewDataAdapter(DbCommand cmd);

        /// <summary>
        /// 返回一个bool值，指示当前线程是否已开启事务
        /// </summary>
        /// <returns>事务已开启返回true，否则返回false</returns>
        bool InTransaction();

        /// <summary>
        /// 在当前线程开启事务
        /// </summary>
        void BeginTransaction();

        /// <summary>
        /// 提交当前线程上的事务
        /// </summary>
        void CommitTransaction();

        /// <summary>
        /// 回滚当前线程上的事务
        /// </summary>
        void RollbackTransaction();

        /// <summary>
        /// 执行非查询操作
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>受影响的记录数</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        int ExecuteNonQuery(string sqlText, params object[] parameters);

        /// <summary>
        /// 获得一个标量值
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回一个标量值</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        object ExecuteScalar(string sqlText, params object[] parameters);

        T ExecuteReader<T>(string sqlText, object[] parameters, Func<DbDataReader, T> func);

        /// <summary>
        /// 执行查询，返回数据集
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回数据集</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        DataSet ExecuteGetDataSet(string sqlText, params object[] parameters);

        /// <summary>
        /// 执行查询，返回数据表
        /// </summary>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回数据表</returns>
        /// <exception cref="DbAccessException">执行SQL命令出错</exception>
        DataTable ExecuteGetDataTable(string sqlText, params object[] parameters);

        void DoInCurrentTransaction(Action<DbConnection, DbTransaction> action);

        T DoInCurrentTransaction<T>(Func<DbConnection, DbTransaction, T> func);
    }
}
