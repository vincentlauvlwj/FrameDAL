using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("job_dict")]
    public class JobDict
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("job_class")]
        public string JobClass { get; set; }

        [Column("job_subclass")]
        public string JobSubclass { get; set; }
    }
}