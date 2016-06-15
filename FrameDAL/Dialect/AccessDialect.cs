using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Dialect
{
    /// <summary>
    /// Author: Vincent Lau.
    /// Access数据库方言，针对MySQL数据库进行SQL优化
    /// </summary>
    public class AccessDialect : BaseDialect
    {
        /// <summary>
        /// 获得一条SQL，该SQL从数据库中查询最近一次插入操作生成的主键
        /// </summary>
        /// <param name="seqName">生成主键的序列，如果此方法的实现不需要此参数，可忽略</param>
        /// <returns>SQL</returns>
        public override string GetGeneratedKeySql(string seqName)
        {
            return "SELECT @@IDENTITY";
        }

        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理
        /// </summary>
        /// <param name="sqlText">要进行预处理的SQL</param>
        /// <param name="firstResult">要返回的第一条结果的索引，该索引从0开始</param>
        /// <param name="pageSize">返回的结果数量，若为0，则返回所有结果，不进行分页查询</param>
        /// <returns>返回预处理后的SQL命令</returns>
        public override string GetPagingSql(string sqlText, int firstResult, int pageSize)
        {
            if (pageSize == 0)
            {
                return sqlText;
            } 
            else
            {
                throw new NotImplementedException("暂不支持Access数据库分页，请期待更新。");
            }
        }
    }
}
