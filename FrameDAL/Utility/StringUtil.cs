using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Utility
{
    public static class StringUtil
    {
        public static string Repeat(this string str, uint times)
        {
            StringBuilder sb = new StringBuilder();
            while (times-- > 0)
            {
                sb.Append(str);
            }
            return sb.ToString();
        }

        public static string JoinWith(this IEnumerable<string> collection, string connector, Func<string> collectionEmpty)
        {
            StringBuilder sb = new StringBuilder();
            foreach (string elem in collection)
            {
                sb.Append(elem + connector);
            }
            if (sb.Length == 0 && collectionEmpty != null)
            {
                return collectionEmpty();
            }
            else
            {
                return sb.Remove(sb.Length - connector.Length, connector.Length).ToString();
            }
        }
    }
}
