using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using FrameDAL.Exceptions;

namespace FrameDAL.Config
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 封装了框架配置文件中的配置信息的类。
    /// 本框架的配置文件名为FrameDAL.ini，应放在程序启动目录，其具体的内容格式如下
    /// <code>
    /// [Settings]
    /// DbType=MySQL
    /// [ConnStr]
    /// server=localhost
    /// ; ...
    /// ; 其他连接串中需要的配置信息...
    /// ; ...
    /// [NamedSql]
    /// test.query=select * from account where id=?
    /// ; ...
    /// ; 其他命名SQL的名称和值...
    /// ; ...
    /// </code>
    /// </summary>
    public class Configuration
    {
        /// <summary>
        /// 保存数据库类型常量的内部类，目前支持MySql, Oracle，更多数据库支持期望日后更新。。。
        /// </summary>
        public class DatabaseType
        {
            public const string MySQL = "MySQL";
            public const string Oracle = "Oracle";
        }

        /// <summary>
        /// 数据库类型，不同数据具体的值参照DatabaseType类中的常量值
        /// </summary>
        public string DbType { get; set; }

        /// <summary>
        /// 数据库连接串，不同数据库的连接串是不同的，具体可从数据库提供商的官网查询
        /// </summary>
        public string ConnStr { get; set; }

        /// <summary>
        /// 保存了命名SQL键值对的Dictionary
        /// </summary>
        public Dictionary<string, string> NamedSql { get; set; }

        /// <summary>
        /// 加载指定目录的配置文件
        /// </summary>
        /// <param name="path">文件路径</param>
        /// <exception cref="FileNotFoundException">配置文件不存在</exception>
        /// <exception cref="ConfigurationException">配置文件中没有配置数据库连接串</exception>
        public void Load(string path)
        {
            if (!File.Exists(path)) throw new FileNotFoundException("配置文件不存在。", path);

            DbType = ConfigUtil.GetStringValue(path, "Settings", "DbType", "");

            StringBuilder sb = new StringBuilder();
            foreach (string item in ConfigUtil.GetAllItems(path, "ConnStr"))
            {
                sb.Append(item + ";");
            }
            if (sb.Length == 0) throw new ConfigurationException("没有配置数据库连接串。");
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
