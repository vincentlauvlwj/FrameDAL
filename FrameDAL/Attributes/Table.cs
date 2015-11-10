using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    /// <summary>
    /// Author: Vincent Lau
    /// 表示数据表信息的特性类。
    /// 施加在实体类上，配置该实体类到数据表的映射。
    /// </summary>
    [AttributeUsage(AttributeTargets.Class)]
    public class Table : Attribute
    {
        /// <summary>
        /// 表示该实体类对应的数据表的表名
        /// </summary>
        public string Name { get; set; }

        public Table(string name)
        {
            this.Name = name;
        }
    }
}
