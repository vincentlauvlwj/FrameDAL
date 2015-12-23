using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("experience")]
    public class Experience
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("exp_company_name")]
        public string ExpCompanyName { get; set; }

        [Column("exp_industry")]
        public string ExpIndustry { get; set; }

        [Column("exp_job_class")]
        public string ExpJobClass { get; set; }

        [Column("exp_job_subclass")]
        public string ExpJobSubclass { get; set; }

        [Column("exp_job_name")]
        public string ExpJobName { get; set; }

        [Column("exp_start_date")]
        public DateTime? ExpStartDate { get; set; }

        [Column("exp_end_date")]
        public DateTime? ExpEndDate { get; set; }

        [Column("exp_salary")]
        public string ExpSalary { get; set; }

        [Column("exp_company_type")]
        public string ExpCompanyType { get; set; }

        [Column("exp_company_scale")]
        public string ExpCompanyScale { get; set; }

        [Column("exp_job_desc")]
        public string ExpJobDesc { get; set; }
    }
}