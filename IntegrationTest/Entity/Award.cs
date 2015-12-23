using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("award")]
    public class Award
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("award_name")]
        public string AwardName { get; set; }

        [Column("award_level")]
        public string AwardLevel { get; set; }

        [Column("award_get_date")]
        public DateTime? AwardGetDate { get; set; }

        [Column("award_desc")]
        public string AwardDesc { get; set; }

        [Column("award_order")]
        public int AwardOrder { get; set; }

        public Award() { }

        public Award(
            string fId, 
            string fResumeId, 
            string fAwardName, 
            string fAwardLevel, 
            DateTime fAwardGetDate, 
            string fAwardDesc, 
            int fAwardOrder)
        {
            this.Id = fId;
            this.ResumeId = fResumeId;
            this.AwardName = fAwardName;
            this.AwardLevel = fAwardLevel;
            this.AwardGetDate = fAwardGetDate;
            this.AwardDesc = fAwardDesc;
            this.AwardOrder = fAwardOrder;
        }
    }
}