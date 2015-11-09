using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using MySql.Data.MySqlClient;

namespace FrameDAL.DbHelper
{
    public class MySqlHelper : BaseHelper
    {
        public MySqlHelper(string connStr) : base(connStr) { }

        protected override DbConnection NewConnection(string connStr)
        {
            return new MySqlConnection(connStr);
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

        protected override DbDataAdapter NewDataAdapter(DbCommand cmd)
        {
            return new MySqlDataAdapter(cmd as MySqlCommand);
        }
    }
}
