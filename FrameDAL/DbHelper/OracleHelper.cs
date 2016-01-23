using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data.OleDb;
using FrameDAL.Dialect;

namespace FrameDAL.DbHelper
{
    /// <summary>
    /// Author: Vincent Lau.
    /// Oracle数据库访问助手
    /// </summary>
    public class OracleHelper : BaseHelper
    {
        private IDialect _Dialect;

        /// <summary>
        /// 获取Oracle数据库方言
        /// </summary>
        public override IDialect Dialect
        {
            get { return _Dialect; }
        }

        public OracleHelper()
        {
            _Dialect = new OracleDialect();
        }

        public OracleHelper(string connStr) : base(connStr) 
        {
            _Dialect = new OracleDialect();
        }

        /// <summary>
        /// 创建一个DbConnection对象
        /// </summary>
        /// <returns>DbConnection对象</returns>
        public override DbConnection NewConnection()
        {
            return new OleDbConnection(ConnectionString);
        }

        /// <summary>
        /// 使用给定参数创建DbCommand对象
        /// </summary>
        /// <param name="conn">数据库连接</param>
        /// <param name="trans">数据库事务</param>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回DbCommand对象</returns>
        public override DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters)
        {
            DbCommand cmd = new OleDbCommand();
            if (conn != null) cmd.Connection = conn;
            if (trans != null) cmd.Transaction = trans;

            cmd.CommandText = sqlText;
            if (parameters != null && parameters.Length != 0)
            {
                AddParamsToCmd(cmd as OleDbCommand, parameters);
            }
            return cmd;
        }

        /// <summary>
        /// 创建一个数据适配器对象
        /// </summary>
        /// <param name="cmd">命令对象</param>
        /// <returns>返回一个数据适配器对象</returns>
        public override DbDataAdapter NewDataAdapter(DbCommand cmd)
        {
            return new OleDbDataAdapter(cmd as OleDbCommand);
        }

        private void AddParamsToCmd(OleDbCommand cmd, ICollection parameters)
        {
            foreach (object param in parameters)
            {
                if (param is ICollection && !(param is byte[]))
                {
                    AddParamsToCmd(cmd, param as ICollection);
                }
                else
                {
                    cmd.Parameters.AddWithValue(null, param == null ? DBNull.Value : param);
                }
            }
        }
    }
}
