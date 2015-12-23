using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("expect")]
    public class Expect
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("expect_full_time")]
        public int ExpectFullTime { get; set; }

        public bool IsFullTime
        {
            get
            {
                return ExpectFullTime == 1;
            }
            set
            {
                ExpectFullTime = value ? 1 : 0;
            }
        }

        [Column("expect_part_time")]
        public int ExpectPartTime { get; set; }
        
        public bool IsPartTime
        {
            get
            {
                return ExpectPartTime == 1;
            }
            set
            {
                ExpectPartTime = value ? 1 : 0;
            }
        }

        [Column("expect_practice")]
        public int ExpectPractice { get; set; }

        public bool IsPractice
        {
            get
            {
                return ExpectPractice == 1;
            }
            set
            {
                ExpectPractice = value ? 1 : 0;
            }
        }

        [Column("expect_area1")]
        public string ExpectArea1 { get; set; }

        [Column("expect_area2")]
        public string ExpectArea2 { get; set; }

        [Column("expect_industry1")]
        public string ExpectIndustry1 { get; set; }
        
        [Column("expect_industry2")]
        public string ExpectIndustry2 { get; set; }

        [Column("expect_job_class1")]
        public string ExpectJobClass1 { get; set; }

        [Column("expect_job_subclass1")]
        public string ExpectJobSubclass1 { get; set; }

        [Column("expect_job_class2")]
        public string ExpectJobClass2 { get; set; }

        [Column("expect_job_subclass2")]
        public string ExpectJobSubclass2 { get; set; }

        [Column("expect_salary")]
        public string ExpectSalary { get; set; }

        [Column("work_status")]
        public string WorkStatus { get; set; }
    }
}