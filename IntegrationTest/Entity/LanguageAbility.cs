using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("language_ability")]
    public class LanguageAbility
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("language_type")]
        public string LanguageType { get; set; }

        [Column("rw_ability")]
        public string RwAbility { get; set; }

        [Column("ls_ability")]
        public string LsAbility { get; set; }
    }
}