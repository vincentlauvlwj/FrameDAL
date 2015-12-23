using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ResumeFactory.Common
{
    public static class StringUtil
    {
        /// <summary>
        /// 获取两个字符串的公共前缀
        /// </summary>
        /// <param name="str1"></param>
        /// <param name="str2"></param>
        /// <returns></returns>
        public static string GetCommonPrefix(string str1, string str2)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str1.Length && i < str2.Length; i++)
            {
                if (str1[i] == str2[i])
                    sb.Append(str1[i]);
                else
                    break;
            }
            return sb.ToString();
        }
    }
}
