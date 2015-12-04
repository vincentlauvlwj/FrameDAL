﻿using System;
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
    /// 本框架的默认的配置文件名为FrameDAL.ini，放在程序启动目录，
    /// 也可在获取AppContext之前设置Configuration.DefaultPath属性改变默认的路径，
    /// 配置文件的具体的内容格式如下
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
        private static string _DefaultPath = Environment.CurrentDirectory + @"\FrameDAL.ini";

        /// <summary>
        /// 获取或设置配置文件的默认路径
        /// </summary>
        public static string DefaultPath 
        {
            get
            {
                return _DefaultPath;
            }
            set
            {
                _DefaultPath = value;
            }
        }

        /// <summary>
        /// 数据库访问助手所在的程序集的文件名（dll或exe）
        /// </summary>
        public string DbHelperAssembly { get; set; }

        /// <summary>
        /// 数据库访问助手的命名空间限定类名
        /// </summary>
        public string DbHelperClass { get; set; }

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

            DbHelperAssembly = ConfigUtil.GetStringValue(path, "Settings", "DbHelperAssembly", "");
            if (string.IsNullOrWhiteSpace(DbHelperAssembly)) throw new ConfigurationException("配置文件没有配置DbHelperAssembly属性。");

            DbHelperClass = ConfigUtil.GetStringValue(path, "Settings", "DbHelperClass", "");
            if (string.IsNullOrWhiteSpace(DbHelperClass)) throw new ConfigurationException("配置文件没有配置DbHelperClass属性。");

            StringBuilder sb = new StringBuilder();
            foreach (string item in ConfigUtil.GetAllItems(path, "ConnStr"))
            {
                sb.Append(item + ";");
            }
            if (sb.Length == 0) throw new ConfigurationException("配置文件没有配置数据库连接串。");
            ConnStr = sb.Remove(sb.Length - 1, 1).ToString();

            NamedSql = new Dictionary<string, string>();
            foreach (string item in ConfigUtil.GetAllItems(path, "NamedSql"))
            {
                int index = item.IndexOf('=');
                NamedSql.Add(item.Substring(0, index), item.Substring(index + 1, item.Length - index - 1));
            }
        }

        /// <summary>
        /// 加载默认路径的配置文件，默认路径由Configuration.DefaultPath指定
        /// </summary>
        /// <exception cref="FileNotFoundException">配置文件不存在</exception>
        /// <exception cref="ConfigurationException">配置文件中没有配置数据库连接串</exception>
        public void Load()
        {
            Load(DefaultPath);
        }
    }
}
