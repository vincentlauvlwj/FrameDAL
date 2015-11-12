using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data.OleDb;

namespace FrameDAL.DbHelper
{
    /// <summary>
    /// Author: Vincent Lau.
    /// Oracle数据库访问助手
    /// </summary>
    public class OracleHelper : BaseHelper
    {
        public OracleHelper(string connStr) : base(connStr) { }

        /// <summary>
        /// 创建一个DbConnection对象
        /// </summary>
        /// <param name="connStr">连接字符串</param>
        /// <returns>DbConnection对象</returns>
        protected override DbConnection NewConnection(string connStr)
        {
            return new OleDbConnection(connStr);
        }

        /// <summary>
        /// 使用给定参数创建DbCommand对象
        /// </summary>
        /// <param name="conn">数据库连接</param>
        /// <param name="trans">数据库事务</param>
        /// <param name="sqlText">含有问号通配符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回DbCommand对象</returns>
        protected override DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters)
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
        protected override DbDataAdapter NewDataAdapter(DbCommand cmd)
        {
            return new OleDbDataAdapter(cmd as OleDbCommand);
        }

        private void AddParamsToCmd(OleDbCommand cmd, object[] parameters)
        {
            foreach (object param in parameters)
            {
                if (param is object[])
                {
                    AddParamsToCmd(cmd, param as object[]);
                }
                else
                {
                    cmd.Parameters.AddWithValue(null, param == null ? DBNull.Value : param);
                }
            }
        }
    }
}
