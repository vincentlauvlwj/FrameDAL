using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("social_practice")]
    public class SocialPractice
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("practice_name")]
        public string PracticeName { get; set; }

        [Column("practice_start_date")]
        public DateTime? PracticeStartDate { get; set; }

        [Column("practice_end_date")]
        public DateTime? PracticeEndDate { get; set; }

        [Column("practice_desc")]
        public string PracticeDesc { get; set; }

        [Column("practice_order")]
        public int PracticeOrder { get; set; }

        public SocialPractice() { }

        public SocialPractice(
            string fId,
            string fResumeId,
            string fPracticeName,
            DateTime fPracticeStartDate,
            DateTime fPracticeEndDate,
            string fPracticeDesc,
            int fPracticeOrder)
        {
            this.Id = fId;
            this.ResumeId = fResumeId;
            this.PracticeName = fPracticeName;
            this.PracticeStartDate = fPracticeStartDate;
            this.PracticeEndDate = fPracticeEndDate;
            this.PracticeDesc = fPracticeDesc;
            this.PracticeOrder = fPracticeOrder;
        }
    }
}