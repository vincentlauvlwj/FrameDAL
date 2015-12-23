using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("resume_scores")]
    public class ResumeScores
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("score")]
        public int Score { get; set; }

        [Column("user_id")]
        public string UserId { get; set; }

        [Column("score_date")]
        public DateTime? ScoreDate { get; set; }
    }
}