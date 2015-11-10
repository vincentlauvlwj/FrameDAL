﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 声明数据库字段信息的特性类。
    /// 施加在具有Table特性的实体类的属性上，可配置从该属性到数据库字段之间的映射关系。
    /// 也可施加在普通的VO类的属性上，该VO类可用于封装查询返回的数据记录，
    /// 这时，Column特性表示了从属性到查询返回的数据列之间的映射关系。
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class Column : Attribute
    {
        /// <summary>
        /// 表示属性对应的数据库字段的字段名，或者查询返回的数据列的列名（当有别名时，使用别名）
        /// </summary>
        public string Name { get; set; }

        public Column(string name)
        {
            this.Name = name;
        }
    }
}
