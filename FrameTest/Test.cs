using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Attributes;

namespace FrameTest
{
    [Table("test")]
    public class Test
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public int? Id { get; set; }

        [Column("name")]
        public string Name { get; set; }
    }
}
