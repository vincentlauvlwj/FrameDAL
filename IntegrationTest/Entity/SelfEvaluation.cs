using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("self_evalution")]
    public class SelfEvaluation
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("self_evaluation_title")]
        public string SelfEvaluationTitle { get; set; }

        [Column("self_evaluation_content")]
        public string SelfEvaluationContent { get; set; }
    }
}