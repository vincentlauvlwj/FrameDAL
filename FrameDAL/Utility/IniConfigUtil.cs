﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace FrameDAL.Utility
{
    /// <summary>
    /// 针对INI文件的API操作方法，其中的节点（Section)、键（KEY）都不区分大小写
    /// 如果指定的INI文件不存在，会自动创建该文件。
    /// 
    /// CharSet定义的时候使用了什么类型，在使用相关方法时必须要使用相应的类型
    /// 例如 GetPrivateProfileSectionNames声明为CharSet.Auto,那么就应该使用 Marshal.PtrToStringAuto来读取相关内容
    /// 如果使用的是CharSet.Ansi，就应该使用Marshal.PtrToStringAnsi来读取内容
    /// </summary>
    public class IniConfigUtil
    {
        #region API声明

        /// <summary>
        /// 获取所有节点名称(Section)
        /// </summary>
        /// <param name="lpszReturnBuffer">存放节点名称的内存地址,每个节点之间用\0分隔</param>
        /// <param name="nSize">内存大小(characters)</param>
        /// <param name="lpFileName">Ini文件</param>
        /// <returns>内容的实际长度,为0表示没有内容,为nSize-2表示内存大小不够</returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        private static extern uint GetPrivateProfileSectionNames(IntPtr lpszReturnBuffer, uint nSize, string lpFileName);

        /// <summary>
        /// 获取某个指定节点(Section)中所有KEY和Value
        /// </summary>
        /// <param name="lpAppName">节点名称</param>
        /// <param name="lpReturnedString">返回值的内存地址,每个之间用\0分隔</param>
        /// <param name="nSize">内存大小(characters)</param>
        /// <param name="lpFileName">Ini文件</param>
        /// <returns>内容的实际长度,为0表示没有内容,为nSize-2表示内存大小不够</returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        private static extern uint GetPrivateProfileSection(string lpAppName, IntPtr lpReturnedString, uint nSize, string lpFileName);

        /// <summary>
        /// 读取INI文件中指定的Key的值
        /// </summary>
        /// <param name="lpAppName">节点名称。如果为null,则读取INI中所有节点名称,每个节点名称之间用\0分隔</param>
        /// <param name="lpKeyName">Key名称。如果为null,则读取INI中指定节点中的所有KEY,每个KEY之间用\0分隔</param>
        /// <param name="lpDefault">读取失败时的默认值</param>
        /// <param name="lpReturnedString">读取的内容缓冲区，读取之后，多余的地方使用\0填充</param>
        /// <param name="nSize">内容缓冲区的长度</param>
        /// <param name="lpFileName">INI文件名</param>
        /// <returns>实际读取到的长度</returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        private static extern uint GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, [In, Out] char[] lpReturnedString, uint nSize, string lpFileName);

        //另一种声明方式,使用 StringBuilder 作为缓冲区类型的缺点是不能接受\0字符，会将\0及其后的字符截断,
        //所以对于lpAppName或lpKeyName为null的情况就不适用
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        private static extern uint GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, StringBuilder lpReturnedString, uint nSize, string lpFileName);

        //再一种声明，使用string作为缓冲区的类型同char[]
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        private static extern uint GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, string lpReturnedString, uint nSize, string lpFileName);

        /// <summary>
        /// 将指定的键值对写到指定的节点，如果已经存在则替换。
        /// </summary>
        /// <param name="lpAppName">节点，如果不存在此节点，则创建此节点</param>
        /// <param name="lpString">Item键值对，多个用\0分隔,形如key1=value1\0key2=value2
        /// <para>如果为string.Empty，则删除指定节点下的所有内容，保留节点</para>
        /// <para>如果为null，则删除指定节点下的所有内容，并且删除该节点</para>
        /// </param>
        /// <param name="lpFileName">INI文件</param>
        /// <returns>是否成功写入</returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
        [return: MarshalAs(UnmanagedType.Bool)]     //可以没有此行
        private static extern bool WritePrivateProfileSection(string lpAppName, string lpString, string lpFileName);

        /// <summary>
        /// 将指定的键和值写到指定的节点，如果已经存在则替换
        /// </summary>
        /// <param name="lpAppName">节点名称</param>
        /// <param name="lpKeyName">键名称。如果为null，则删除指定的节点及其所有的项目</param>
        /// <param name="lpString">值内容。如果为null，则删除指定节点中指定的键。</param>
        /// <param name="lpFileName">INI文件</param>
        /// <returns>操作是否成功</returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool WritePrivateProfileString(string lpAppName, string lpKeyName, string lpString, string lpFileName);

        #endregion

        #region 封装

        /// <summary>
        /// 读取指定INI文件中的所有节点名称(Section)
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <returns>所有节点,没有内容则返回string[0]</returns>
        public static string[] GetAllSectionNames(string iniFile)
        {
            uint MAX_BUFFER = 32767;    //默认为32767

            string[] sections = new string[0];      //返回值

            //申请内存
            IntPtr pReturnedString = Marshal.AllocCoTaskMem((int)MAX_BUFFER * sizeof(char));
            uint bytesReturned = GetPrivateProfileSectionNames(pReturnedString, MAX_BUFFER, iniFile);
            if (bytesReturned != 0)
            {
                //读取指定内存的内容
                string local = Marshal.PtrToStringUni(pReturnedString, (int)bytesReturned).ToString();
                //每个节点之间用\0分隔,末尾有一个\0,去除空字符串
                sections = local.Split(new char[] { '\0' }, StringSplitOptions.RemoveEmptyEntries);
            }

            //释放内存
            Marshal.FreeCoTaskMem(pReturnedString);

            return sections;
        }

        /// <summary>
        /// 获取INI文件中指定节点(Section)中的所有键值对(key=value形式)
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <returns>指定节点中的所有项目,没有内容则返回string[0]</returns>
        public static string[] GetAllItems(string iniFile, string section)
        {
            //返回值形式为 key=value,例如 Color=Red
            uint MAX_BUFFER = 32767;    //默认为32767

            string[] items = new string[0];      //返回值

            //分配内存
            IntPtr pReturnedString = Marshal.AllocCoTaskMem((int)MAX_BUFFER * sizeof(char));

            uint bytesReturned = GetPrivateProfileSection(section, pReturnedString, MAX_BUFFER, iniFile);

            if (bytesReturned != MAX_BUFFER - 2 && bytesReturned != 0)
            {
                string returnedString = Marshal.PtrToStringUni(pReturnedString, (int)bytesReturned);
                items = returnedString.Split(new char[] { '\0' }, StringSplitOptions.RemoveEmptyEntries);
            }

            Marshal.FreeCoTaskMem(pReturnedString);     //释放内存

            return items;
        }

        /// <summary>
        /// 获取INI文件中指定节点(Section)中的所有键(Key)
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <returns>如果没有内容,则返回string[0]</returns>
        public static string[] GetAllItemKeys(string iniFile, string section)
        {
            string[] value = new string[0];
            const int SIZE = 1024 * 10;

            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            char[] chars = new char[SIZE];
            uint bytesReturned = GetPrivateProfileString(section, null, null, chars, SIZE, iniFile);

            if (bytesReturned != 0)
            {
                value = new string(chars).Split(new char[] { '\0' }, StringSplitOptions.RemoveEmptyEntries);
            }
            chars = null;

            return value;
        }

        /// <summary>
        /// 获取INI文件中指定键(KEY)的字符串型值
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <param name="key">键(Key)名称</param>
        /// <param name="defaultValue">如果没此键(Key),则返回此默认值</param>
        /// <returns>读取到的值</returns>
        public static string GetStringValue(string iniFile, string section, string key, string defaultValue)
        {
            string value = defaultValue;
            const int SIZE = 1024 * 10;

            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            if (string.IsNullOrEmpty(key))
            {
                throw new ArgumentException("必须指定键名称(key)", "key");
            }

            StringBuilder sb = new StringBuilder(SIZE);
            uint bytesReturned = GetPrivateProfileString(section, key, defaultValue, sb, SIZE, iniFile);

            if (bytesReturned != 0)
            {
                value = sb.ToString();
            }
            sb = null;

            return value;
        }

        /// <summary>
        /// 在INI文件中，将指定的键值对(key=value)写到指定的节点，如果已经存在则替换
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称，如果不存在此节点，则创建此节点</param>
        /// <param name="items">键值对，多个用\0分隔,形如key1=value1\0key2=value2</param>
        /// <returns>操作是否成功</returns>
        public static bool WriteItems(string iniFile, string section, string items)
        {
            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            if (string.IsNullOrEmpty(items))
            {
                throw new ArgumentException("必须指定键值对", "items");
            }

            return WritePrivateProfileSection(section, items, iniFile);
        }

        /// <summary>
        /// 在INI文件中，往指定节点写入指定的键及值。如果已经存在，则替换。如果没有则创建。
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <param name="key">键(Key)</param>
        /// <param name="value">值(Value)</param>
        /// <returns>操作是否成功</returns>
        public static bool WriteValue(string iniFile, string section, string key, string value)
        {
            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            if (string.IsNullOrEmpty(key))
            {
                throw new ArgumentException("必须指定键名称", "key");
            }

            if (value == null)
            {
                throw new ArgumentException("值不能为null", "value");
            }

            return WritePrivateProfileString(section, key, value, iniFile);

        }

        /// <summary>
        /// 在INI文件中，删除指定节点中的指定的键值对。
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <param name="key">键(Key)</param>
        /// <returns>操作是否成功</returns>
        public static bool DeleteKey(string iniFile, string section, string key)
        {
            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            if (string.IsNullOrEmpty(key))
            {
                throw new ArgumentException("必须指定键名称", "key");
            }

            return WritePrivateProfileString(section, key, null, iniFile);
        }

        /// <summary>
        /// 在INI文件中，删除指定的节点。
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <returns>操作是否成功</returns>
        public static bool DeleteSection(string iniFile, string section)
        {
            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            return WritePrivateProfileString(section, null, null, iniFile);
        }

        /// <summary>
        /// 在INI文件中，清空指定节点中的所有内容。
        /// </summary>
        /// <param name="iniFile">INI文件路径</param>
        /// <param name="section">配置节点名称</param>
        /// <returns>操作是否成功</returns>
        public static bool EmptySection(string iniFile, string section)
        {
            if (string.IsNullOrEmpty(section))
            {
                throw new ArgumentException("必须指定节点名称", "section");
            }

            return WritePrivateProfileSection(section, string.Empty, iniFile);
        }

        #endregion
    }
}