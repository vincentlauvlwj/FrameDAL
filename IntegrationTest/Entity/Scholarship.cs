using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("scholarship")]
    public class Scholarship
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("scholarship_type")]
        public string ScholarshipType { get; set; }

        [Column("scholarship_level")]
        public string ScholarshipLevel { get; set; }

        public Scholarship() { }

        public Scholarship(
            string fId,
            string fResumeId,
            string fScholarshipType,
            string fScholarshipLevel)
        {
            this.Id = fId;
            this.ResumeId = fResumeId;
            this.ScholarshipType = fScholarshipType;
            this.ScholarshipLevel = fScholarshipLevel;
        }
    }
}