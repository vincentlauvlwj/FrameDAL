using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 表示主键生成策略的枚举类
    /// </summary>
    public enum GeneratorType
    {
        /// <summary>
        /// 手动为主键赋值
        /// </summary>
        Assign = 1,

        /// <summary>
        /// 由框架自动生成UUID作为主键
        /// </summary>
        Uuid = 2,

        /// <summary>
        /// 使用数据库的自增长机制生成主键
        /// </summary>
        Identity = 3,

        /// <summary>
        /// 使用数据库的序列生成主键，主要针对Oracle
        /// </summary>
        Sequence = 4
    }
}
