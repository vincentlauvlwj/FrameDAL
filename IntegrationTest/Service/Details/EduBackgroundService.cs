using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    public class EduBackgroundService : BaseService<EducationBackground>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            string sql = @"select count(id)
                            from education_background
                                where resume_id=?";
            using (ISession session = context.OpenSession())
            {
                object count = session.CreateSqlQuery(sql, resume.Id).ExecuteScalar();
                if (Convert.ToInt32(count) == 0)
                    return 0;
                return 2;
            }
        }
        public List<EducationBackground> GetEduBgdList(Resume resume)
        { 
            string sql = @"select * 
                            from education_background
                               where resume_id=?";
            using(ISession session = context.OpenSession())
            {
                return session.CreateSqlQuery(sql, resume.Id).ExecuteGetList<EducationBackground>();

            }
        }
    }
}
