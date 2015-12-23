using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrameDAL.Core;
using ResumeFactory.Entity;

namespace ResumeFactory.Service.Details
{
    public class SocialPracticeService : BaseService<SocialPractice>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            if (GetPractices(resume).Count != 0)
            {
                return 2;
            }
            else
            {
                return 0;
            }
        }

        public List<SocialPractice> GetPractices(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select t1.* from social_practice t1 where t1.resume_id = ? order by practice_order";
                return session.CreateQuery(sql, resume.Id).ExecuteGetList<SocialPractice>();
            }
        }
    }
}
