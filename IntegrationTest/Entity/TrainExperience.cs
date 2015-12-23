using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("train_experience")]
    public class TrainExperience
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("train_start_date")]
        public DateTime? TrainStartDate { get; set; }

        [Column("train_end_date")]
        public DateTime? TrainEndDate { get; set; }

        public string TrainTime
        {
            get
            {
                return TrainStartDate.Value.ToString("yyyy年MM月dd日") + "——" + TrainEndDate.Value.ToString("yyyy年MM月dd日");
            }
        }
        [Column("train_school")]
        public string TrainSchool { get; set; }

        [Column("train_course")]
        public string TrainCourse { get; set; }

        [Column("train_address")]
        public string TrainAddress { get; set; }

        [Column("train_certificate")]
        public string TrainCertificate { get; set; }

        [Column("train_desc")]
        public string TrainDesc { get; set; }

        [Column("train_order")]
        public int TrainOrder { get; set; }
    }
}