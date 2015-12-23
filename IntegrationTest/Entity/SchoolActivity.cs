using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("school_activity")]
    public class SchoolActivity
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("school_activity")]
        public string Activity { get; set; }

        public SchoolActivity() { }

        public SchoolActivity(string fId, string fResumeId, string fActivity)
        {
            this.Id = fId;
            this.ResumeId = fResumeId;
            this.Activity = fActivity;
        }
    }
}