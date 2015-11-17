using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using MySql.Data.MySqlClient;

namespace FrameDAL.DbHelper
{
    /// <summary>
    /// Author: Vincent Lau.
    /// MySql数据库访问助手
    /// </summary>
    public class MySqlHelper : BaseHelper
    {
        internal MySqlHelper(string connStr) : base(connStr) { }

        /// <summary>
        /// 创建一个DbConnection对象
        /// </summary>
        /// <param name="connStr">连接字符串</param>
        /// <returns>DbConnection对象</returns>
        protected override DbConnection NewConnection(string connStr)
        {
            return new MySqlConnection(connStr);
        }

        /// <summary>
        /// 使用给定参数创建DbCommand对象
        /// </summary>
        /// <param name="conn">数据库连接</param>
        /// <param name="trans">数据库事务</param>
        /// <param name="sqlText">含有问号占位符的SQL命令</param>
        /// <param name="parameters">SQL命令中的参数值</param>
        /// <returns>返回DbCommand对象</returns>
        protected override DbCommand PrepareCommand(DbConnection conn, DbTransaction trans, string sqlText, params object[] parameters)
        {
            DbCommand cmd = new MySqlCommand();
            if (conn != null) cmd.Connection = conn;
            if (trans != null) cmd.Transaction = trans;

            cmd.CommandText = sqlText;
            if (parameters != null && parameters.Length != 0)
            {
                AddParamsToCmd(cmd as MySqlCommand, parameters);
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
            return new MySqlDataAdapter(cmd as MySqlCommand);
        }

        private void AddParamsToList(ArrayList arr, object[] parameters)
        {
            foreach (object param in parameters)
            {
                if (param is object[])
                {
                    AddParamsToList(arr, param as object[]);
                }
                else
                {
                    arr.Add(param == null ? DBNull.Value : param);
                }
            }
        }

        private void AddParamsToCmd(MySqlCommand cmd, object[] parameters)
        {
            ArrayList arr = new ArrayList();
            AddParamsToList(arr, parameters);
            parameters = arr.ToArray();

            StringBuilder sb = new StringBuilder();
            string[] temp = cmd.CommandText.Split('?');
            for (int i = 0; i < temp.Length - 1; i++)
            {
                string paramName = "@param" + i;
                sb.Append(temp[i] + paramName);
                cmd.Parameters.AddWithValue(paramName, parameters[i]);
            }
            sb.Append(temp[temp.Length - 1]);
            cmd.CommandText = sb.ToString();
        }
    }
}
