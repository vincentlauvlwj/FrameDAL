using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Dialect
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 表示数据库方言的接口，可通过此接口获得针对不同数据库定制的访问SQL
    /// </summary>
    public interface IDialect
    {
        /// <summary>
        /// 从缓存中获得实体类对应的表的insert sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>insert sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        /// <exception cref="EntityMappingException">该类中没有任何公开属性</exception>
        string GetInsertSql(Type type);

        /// <summary>
        /// 从缓存中获得实体类对应的delete sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>delete sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">该类没有添加Table特性，或者Table.Name属性为空或空白字符串</exception>
        string GetDeleteSql(Type type);

        /// <summary>
        /// 从缓存中获得实体类对应的update sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>update sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        string GetUpdateSql(Type type);

        /// <summary>
        /// 从缓存中获得实体类对应的select sql
        /// </summary>
        /// <param name="type">实体类</param>
        /// <returns>select sql</returns>
        /// <exception cref="ArgumentNullException">type为null</exception>
        /// <exception cref="EntityMappingException">实体类映射错误</exception>
        string GetSelectSql(Type type);

        /// <summary>
        /// 执行查询之前，对SQL命令进行预处理
        /// </summary>
        /// <param name="sqlText">要进行预处理的SQL</param>
        /// <param name="firstResult">要返回的第一条结果的索引，该索引从0开始</param>
        /// <param name="pageSize">返回的结果数量，若为0，则返回所有结果，不进行分页查询</param>
        /// <returns>返回预处理后的SQL命令</returns>
        string GetPagingSql(string sqlText, int firstResult, int pageSize);

        /// <summary>
        /// 清除缓存的SQL
        /// </summary>
        void ClearCache();
    }
}
