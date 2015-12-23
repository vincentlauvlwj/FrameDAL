using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("identity_type_dict")]
    public class IdentityTypeDict
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("identity_type")]
        public string IdentityType { get; set; }
    }
}