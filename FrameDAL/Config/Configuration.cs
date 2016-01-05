using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using FrameDAL.Exceptions;
using FrameDAL.Utility;

namespace FrameDAL.Config
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 封装了框架配置文件中的配置信息的类。
    /// 本框架的默认的配置文件名为FrameDAL.ini，放在程序启动目录，
    /// 也可在获取AppContext之前设置Configuration.DefaultPath属性改变默认的路径
    /// </summary>
    public class Configuration
    {
        static Configuration()
        { 
            DefaultPath = Environment.CurrentDirectory + @"\FrameDAL.ini";
        }

        /// <summary>
        /// 获取或设置配置文件的默认路径
        /// </summary>
        public static string DefaultPath { get; set; }

        public bool EnableLazy { get; private set; }

        public bool EnableCascade { get; private set; }

        public string LogFile { get; private set; }

        public bool LogAppend { get; private set; }

        /// <summary>
        /// 数据库访问助手所在的程序集的文件名（dll或exe）
        /// </summary>
        public string DbHelperAssembly { get; private set; }

        /// <summary>
        /// 数据库访问助手的命名空间限定类名
        /// </summary>
        public string DbHelperClass { get; private set; }

        /// <summary>
        /// 数据库连接串，不同数据库的连接串是不同的，具体可从数据库提供商的官网查询
        /// </summary>
        public string ConnStr { get; private set; }

        private Dictionary<string, string> namedSql;

        /// <summary>
        /// 获得配置文件中的命名SQL
        /// </summary>
        /// <param name="name">要获得的SQL的名称</param>
        /// <returns>SQL字符串</returns>
        /// <exception cref="ArgumentNullException">name为null</exception>
        /// <exception cref="KeyNotFoundException">不存在该名称的SQL</exception>
        public string GetNamedSql(string name)
        { 
            return namedSql[name];
        }

        /// <summary>
        /// 加载指定目录的配置文件
        /// </summary>
        /// <param name="path">文件路径</param>
        /// <exception cref="FileNotFoundException">配置文件不存在</exception>
        /// <exception cref="ConfigurationException">配置文件中没有配置数据库连接串</exception>
        public void Load(string path)
        {
            if (!File.Exists(path)) throw new FileNotFoundException("配置文件不存在。", path);

            EnableLazy          = IniConfigUtil.GetValidatedValue<bool>(path, "Settings", "EnableLazy", true);
            EnableCascade       = IniConfigUtil.GetValidatedValue<bool>(path, "Settings", "EnableCascade", true);
            LogFile             = IniConfigUtil.GetValidatedValue<string>(path, "Settings", "LogFile", false);
            LogAppend           = IniConfigUtil.GetValidatedValue<bool>(path, "Settings", "LogAppend", true);
            DbHelperAssembly    = IniConfigUtil.GetValidatedValue<string>(path, "Settings", "DbHelperAssembly", true);
            DbHelperClass       = IniConfigUtil.GetValidatedValue<string>(path, "Settings", "DbHelperClass", true);
            ConnStr             = IniConfigUtil.GetAllItems(path, "ConnStr").JoinWith(";", () =>
                {
                    throw new ConfigurationException("配置文件没有配置数据库连接串。");
                });
            namedSql            = IniConfigUtil.GetAllItems(path, "NamedSql")
                .ToDictionary(s => s.Remove(s.IndexOf('=')), s => s.Remove(0, s.IndexOf('=') + 1));
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
