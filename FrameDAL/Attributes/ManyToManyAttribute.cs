using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class ManyToManyAttribute : Attribute
    {
        public string JoinTable { get; set; }

        public string JoinColumn { get; set; }

        public string InverseJoinColumn { get; set; }

        public bool LazyLoad { get; set; }

        public int Cascade { get; set; }

        public ManyToManyAttribute()
        {
            LazyLoad = true;
            Cascade = CascadeType.Insert | CascadeType.Update;
        }
    }
}
