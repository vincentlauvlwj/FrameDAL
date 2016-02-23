using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class OneToManyAttribute : Attribute
    {
        public string InverseForeignKey { get; set; }

        public bool LazyLoad { get; set; }

        public int Cascade { get; set; }

        public OneToManyAttribute(string inverseForeignKey)
        {
            this.InverseForeignKey = inverseForeignKey;
            LazyLoad = true;
            Cascade = CascadeType.Insert | CascadeType.Update | CascadeType.Delete;
        }
    }
}
