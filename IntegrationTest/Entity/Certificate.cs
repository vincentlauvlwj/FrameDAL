using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("certificate")]
    public class Certificate
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("certificate_type")]
        public string CertificateType { get; set; }

        [Column("certificate_name")]
        public string CertificateName { get; set; }

        [Column("certificate_get_date")]
        public DateTime? CertificateGetDate { get; set; }
        public String GetDate
        {
            get { return CertificateGetDate.Value.ToString("yyyyÄêMMÔÂ"); }
        }

        [Column("certificate_order")]
        public int CertificateOrder { get; set; }
    }
}