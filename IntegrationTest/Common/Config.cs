using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Config;
using FrameDAL.Utility;

namespace ResumeFactory.Common
{
    public class Config
    {
        private static string _DefaultPath = Environment.CurrentDirectory + @"\ResumeFactory.ini";

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
        /// 获取或设置皮肤文件路径
        /// </summary>
        public static string SkinFile
        {
            get
            {
                return IniConfigUtil.GetStringValue(DefaultPath, "ResumeFactory", "SkinFile", "");
            }
            set
            {
                IniConfigUtil.WriteValue(DefaultPath, "ResumeFactory", "SkinFile", value);
            }
        }

        /// <summary>
        /// 获取或设置是否记住密码
        /// </summary>
        public static bool RememberPassword
        {
            get
            {
                return IniConfigUtil.GetStringValue(DefaultPath, "ResumeFactory", "RememberPassword", "0") == "1" ? true : false;
            }
            set
            {
                IniConfigUtil.WriteValue(DefaultPath, "ResumeFactory", "RememberPassword", value ? "1" : "0");
            }
        }

        /// <summary>
        /// 获取或设置记住的用户名
        /// </summary>
        public static string UserName
        {
            get
            {
                return IniConfigUtil.GetStringValue(DefaultPath, "ResumeFactory", "UserName", "");
            }
            set
            {
                IniConfigUtil.WriteValue(DefaultPath, "ResumeFactory", "UserName", value);
            }
        }

        /// <summary>
        /// 获取或设置记住的密码
        /// </summary>
        public static string Password
        {
            get
            {
                return IniConfigUtil.GetStringValue(DefaultPath, "ResumeFactory", "Password", "");
            }
            set
            {
                IniConfigUtil.WriteValue(DefaultPath, "ResumeFactory", "Password", value);
            }
        }
    }
}
