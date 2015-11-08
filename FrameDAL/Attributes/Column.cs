using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class Column : Attribute
    {
        public string Name { get; set; }

        public Column(string name)
        {
            this.Name = name;
        }
    }
}
