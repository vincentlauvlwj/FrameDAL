using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 声明数据库主键信息的特性类。
    /// 施加在具有Table特性的实体类的属性上，表示该属性对应的数据库字段是主键。
    /// 建议不要使用具有实际意义的物理主键，应该为数据库增加一列，作为没有任何实际意义的逻辑主键。
    /// 即主键仅用于表示数据记录的唯一性，不具有具体的含义
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class Id : Attribute
    {
        /// <summary>
        /// 主键生成策略
        /// </summary>
        public GeneratorType GeneratorType { get; set; }

        /// <summary>
        /// 序列名，当主键生成策略为GeneratorType.Sequence时，需要设置此属性
        /// </summary>
        public string SeqName { get; set; }

        public Id(GeneratorType type)
        {
            GeneratorType = type;
        }
    }
}
