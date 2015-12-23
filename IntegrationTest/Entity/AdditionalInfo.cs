using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("additional_info")]
    public class AdditionalInfo
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("aditional_info_title")]
        public string AditionalInfoTitle { get; set; }

        [Column("aditional_info_desc")]
        public string AditionalInfoDesc { get; set; }
    }
}