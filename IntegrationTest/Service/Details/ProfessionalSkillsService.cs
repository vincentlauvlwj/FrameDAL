using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ResumeFactory.Entity;
using FrameDAL.Attributes;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    public class ProfessionalSkillsService : BaseService<ProfessionalSkill>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            if (GetSkills(resume).Count != 0)
            {
                return 2;
            }
            else
            {
                return 0;
            }
        }

        public DataTable GetSkillType()
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select id, skill_type_name from professional_skill_dict";
                return session.CreateSqlQuery(sql).ExecuteGetDataTable();
            }
        }

        public List<UIProfessionalSkill> GetSkills(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select t1.*, t2.skill_type_name from professional_skill t1, professional_skill_dict t2 where t1.resume_id = ? and t1.skill_type_id = t2.id order by skill_order";
                return session.CreateSqlQuery(sql, resume.Id).ExecuteGetList <UIProfessionalSkill>();
            }
        }
    }

    public class UIProfessionalSkill : ProfessionalSkill
    {
        [Column("skill_type_name", ReadOnly = true)]
        public string SkillTypeName { get; set; }

        public UIProfessionalSkill() { }

        public UIProfessionalSkill(
            string fId,
            string fResumeId,
            int fSkillType,
            string fSkillTypeName,
            string fSkillName,
            int fUseTime,
            string fFamiliarity,
            int fSkillOrder)
            : base(fId, fResumeId, fSkillType, fSkillName, fUseTime, fFamiliarity, fSkillOrder)
        {
            this.SkillTypeName = fSkillTypeName;
        }
    }
}
