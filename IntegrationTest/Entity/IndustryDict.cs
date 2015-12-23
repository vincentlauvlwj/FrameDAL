using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("industry_dict")]
    public class IndustryDict
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("industry_type")]
        public string IndustryType { get; set; }
    }
}
