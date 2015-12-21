using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Attributes;

namespace FrameTest
{
    [TableAttribute("test")]
    public class Test
    {
        [IdAttribute(GeneratorType.Identity)]
        [ColumnAttribute("id")]
        public int? Id { get; set; }

        [ColumnAttribute("name")]
        public string Name { get; set; }
    }
}
