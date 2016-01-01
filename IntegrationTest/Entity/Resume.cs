using System;
using System.Collections.Generic;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("resume")]
    public class Resume
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [ManyToOne("user_id")]
        public virtual User User { get; set; }

        [ManyToOne("template_id")]
        public virtual ResumeTemplate ResumeTemplate { get; set; }

        [Column("resume_name")]
        public string ResumeName { get; set; }

        [Column("resume_share")]
        public int ResumeShare { get; set; }

        [Column("resume_create_time")]
        public DateTime? ResumeCreateTime { get; set; }

        [OneToMany("resume_id")]
        public virtual List<PersonInfo> PersonInfo { get; set; }

        [OneToMany("resume_id")]
        public virtual List<EducationBackground> EducationBackgrounds { get; set; }
    }
}