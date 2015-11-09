using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Config
{
    public class Configuration
    {
        public class DatabaseType
        {
            public const string MySql = "MySql";
            public const string Oracle = "Oracle";
        }

        public string DbType { get; set; }

        public string ConnStr { get; set; }

        public Dictionary<string, string> NamedSql { get; set; }

        public void Load(string path)
        {
            DbType = ConfigUtil.GetStringValue(path, "Settings", "DbType", "");

            StringBuilder sb = new StringBuilder();
            foreach (string item in ConfigUtil.GetAllItems(path, "ConnStr"))
            {
                sb.Append(item + ";");
            }
            ConnStr = sb.Remove(sb.Length - 1, 1).ToString();

            sb = new StringBuilder();
            NamedSql = new Dictionary<string, string>();
            foreach (string item in ConfigUtil.GetAllItems(path, "NamedSql"))
            {
                int index = item.IndexOf('=');
                NamedSql.Add(item.Substring(0, index), item.Substring(index + 1, item.Length - index - 1));
            }
        }
    }
}
