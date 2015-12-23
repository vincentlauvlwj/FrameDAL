using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    public class LanguageSkillService : BaseService<LanguageAbility>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            string sql = @"select count(id) 
                            from language_ability
                                where resume_id = ?";
            using (ISession session = context.OpenSession())
            {
                 Object count = session.CreateQuery(sql, resume.Id).ExecuteScalar();
                 if (Convert.ToInt32(count) == 0)
                     return 0;
                 return 2;
            }
        }
        public List<LanguageAbility> GetLanguageSkillList(Resume resume)
        {
            string sql = @"select * 
                            from language_ability
                                where resume_id = ?";
            using (ISession session = context.OpenSession())
            {
                return session.CreateQuery(sql, resume.Id).ExecuteGetList<LanguageAbility>();
            }
        }
    }
}
