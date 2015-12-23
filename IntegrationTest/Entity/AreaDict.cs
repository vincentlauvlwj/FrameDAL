using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("area_dict")]
    public class AreaDict
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("area_code")]
        public string AreaCode { get; set; }

        [Column("area_name")]
        public string AreaName { get; set; }
    }
}