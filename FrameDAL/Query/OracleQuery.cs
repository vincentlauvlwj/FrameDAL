using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Query
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 用于Oracle数据库的Query类
    /// </summary>
    public class OracleQuery : BaseQuery
    {
        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理
        /// </summary>
        /// <returns>返回预处理后的SQL命令</returns>
        protected override string BeforeQuery()
        {
            if (PageSize == 0) return SqlText;
            int minRowNum = FirstResult + 1;
            int maxRowNum = FirstResult + PageSize;
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT * FROM ");
            sb.Append("( ");
            sb.Append("SELECT ROWNUM RN, A.* ");
            sb.Append("FROM (" + SqlText + ") A ");
            sb.Append("WHERE ROWNUM<=" + maxRowNum);
            sb.Append(") ");
            sb.Append("WHERE RN>=" + minRowNum);
            return sb.ToString();
        }
    }
}
