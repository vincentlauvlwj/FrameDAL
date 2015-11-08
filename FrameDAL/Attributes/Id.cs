using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameDAL.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class Id : Attribute
    {
        public GeneratorType GeneratorType { get; set; }

        public string SeqName { get; set; }

        public Id(GeneratorType type)
        {
            GeneratorType = type;
        }
    }
}
