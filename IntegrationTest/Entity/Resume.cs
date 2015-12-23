using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("resume")]
    public class Resume
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("user_id")]
        public string UserId { get; set; }

        [Column("template_id")]
        public string TemplateId { get; set; }

        [Column("resume_name")]
        public string ResumeName { get; set; }

        [Column("resume_share")]
        public int ResumeShare { get; set; }

        [Column("resume_create_time")]
        public DateTime? ResumeCreateTime { get; set; }
    }
}