using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("certificate_dict")]
    public class CertificateDict
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public int Id { get; set; }

        [Column("certificate_type")]
        public string CertificateType { get; set; }

        [Column("certificate_name_language")]
        public string CertificateNameLanguage { get; set; }

        [Column("certificate_name_computer")]
        public string CertificateNameComputer { get; set; }

        [Column("certificate_name_accounting")]
        public string CertificateNameAccounting { get; set; }

        [Column("certificate_name_post")]
        public string CertificateNamePost { get; set; }

        [Column("certificate_name_other")]
        public string CertificateNameOther { get; set; }
    }
}