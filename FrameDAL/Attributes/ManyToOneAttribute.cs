using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class ManyToOneAttribute : Attribute
    {
        public string ForeignKey { get; set; }

        public bool LazyLoad { get; set; }

        public int Cascade { get; set; }

        public ManyToOneAttribute(string foreignKey)
        {
            this.ForeignKey = foreignKey;
            LazyLoad = true;
            Cascade = CascadeType.All;
        }
    }
}
