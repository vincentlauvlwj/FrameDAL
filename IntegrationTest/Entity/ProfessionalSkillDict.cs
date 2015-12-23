using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("professional_skill_dict")]
    public class ProfessionalSkillDict
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("skill_type_name")]
        public string SkillTypeName { get; set; }
    }
}