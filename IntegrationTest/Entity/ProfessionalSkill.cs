using System;
using FrameDAL.Attributes;
using ResumeFactory.Common;

namespace ResumeFactory.Entity
{
    [Table("professional_skill")]
    public class ProfessionalSkill
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_id")]
        public string ResumeId { get; set; }

        [Column("skill_type_id")]
        public int SkillTypeId { get; set; }

        [Column("skill_name")]
        public string SkillName { get; set; }

        [Column("use_time")]
        public int UseTime { get; set; }

        [Column("familiarity")]
        public string Familiarity { get; set; }

        [Column("skill_order")]
        public int SkillOrder { get; set; }

        public ProfessionalSkill() { }

        /// <summary>
        /// 使用此构造方法，请确定DataRow的列顺序与数据库列顺序一致
        /// </summary>
        /// <param name="skill"></param>
        /// <param name="fOrder"></param>
        public ProfessionalSkill(System.Data.DataRow skill, int fSkillOrder)
        {
            this.Id = skill[0] as string;
            this.ResumeId = skill[1] as string;
            this.SkillTypeId = skill[2].ToInt32(1);
            this.SkillName = skill[3] as string;
            this.UseTime = skill[4].ToInt32(0);
            this.Familiarity = skill[5] as string;
            this.SkillOrder = fSkillOrder;
        }

        /// <summary>
        /// 传递所有需要的参数进行初始化
        /// </summary>
        /// <param name="fId"></param>
        /// <param name="fResumeId"></param>
        /// <param name="fSkillType"></param>
        /// <param name="fSkillName"></param>
        /// <param name="fUseTime"></param>
        /// <param name="fFamiliarity"></param>
        /// <param name="fSkillOrder"></param>
        public ProfessionalSkill(
            string fId, 
            string fResumeId, 
            int fSkillType, 
            string fSkillName, 
            int fUseTime, 
            string fFamiliarity, 
            int fSkillOrder)
        {
            this.Id = fId;
            this.ResumeId = fResumeId;
            this.SkillTypeId = fSkillType;
            this.SkillName = fSkillName;
            this.UseTime = fUseTime;
            this.Familiarity = fFamiliarity;
            this.SkillOrder = fSkillOrder;
        }
    }
}