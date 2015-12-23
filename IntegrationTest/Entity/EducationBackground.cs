using System;
using FrameDAL.Attributes;
namespace ResumeFactory.Entity
{
    [Table("education_background")]
    public class EducationBackground
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("edu_start_date")]
        public DateTime? EduStartDate { get; set; }

        [Column("edu_end_date")]
        public DateTime? EduEndDate { get; set; }
        public string EduDate
        {
            get
            {
                return EduStartDate.Value.ToString("yyyy年MM月dd日") + "——" + EduEndDate.Value.ToString("yyyy年MM月dd日");
            }
        }

        [Column("edu_school_name")]
        public string EduSchoolName { get; set; }

        [Column("edu_major_name")]
        public string EduMajorName { get; set; }

        [Column("edu_degree")]
        public string EduDegree { get; set; }

        [Column("edu_unified_enrollment")]
        public int EduUnifiedEnrollment { get; set; }
    }
}