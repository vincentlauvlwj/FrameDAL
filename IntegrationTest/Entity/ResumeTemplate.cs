using System;
using FrameDAL.Attributes;

namespace ResumeFactory.Entity
{
    [Table("resume_template")]
    public class ResumeTemplate
    {
        [Id(GeneratorType.Identity)]
        [Column("id")]
        public string Id { get; set; }

        [Column("template_name")]
        public string TemplateName { get; set; }

        [Column("template_generator_class")]
        public string TemplateGeneratorClass { get; set; }
    }
}
