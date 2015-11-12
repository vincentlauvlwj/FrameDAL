using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace FrameDAL.Query
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 用于MySQL数据库的Query类
    /// </summary>
    public class MySqlQuery : BaseQuery
    {
        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理
        /// </summary>
        /// <returns>返回预处理后的SQL命令</returns>
        protected override string BeforeQuery()
        {
            if (PageSize == 0) return SqlText;
            return SqlText + " limit " + FirstResult + ", " + PageSize;
        }
    }
}
