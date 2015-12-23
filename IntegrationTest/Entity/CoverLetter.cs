using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("cover_letter")]
    public class CoverLetter
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("cover_letter_name")]
        public string CoverLetterName { get; set; }

        [Column("cover_letter_content")]
        public string CoverLetterContent { get; set; }

        [Column("cover_last_modified")]
        public DateTime? CoverLastModified { get; set; }
    }
}