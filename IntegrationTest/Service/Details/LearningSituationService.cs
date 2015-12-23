using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using FrameDAL.Core;
using ResumeFactory.Entity;

namespace ResumeFactory.Service.Details
{
    public class LearningSituationService : BaseService<Award>, IFinishStatusAccessable
    {
        public int GetFinishStatus(Resume resume)
        {
            if (GetAwards(resume).Count == 0
                && (GetSchoolActivity(resume) == null || string.IsNullOrWhiteSpace(GetSchoolActivity(resume).Activity))
                && (GetScholarships(resume) == null || GetScholarships(resume).Count == 0))
            {
                return 0;
            }
            else if (GetAwards(resume).Count != 0
                && (GetSchoolActivity(resume) != null && !string.IsNullOrWhiteSpace(GetSchoolActivity(resume).Activity))
                && (GetScholarships(resume) != null && GetScholarships(resume).Count != 0))
            {
                return 2;
            }
            else
            {
                return 1;
            }
        }

        public List<Award> GetAwards(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select t1.* from award t1 where t1.resume_id = ? order by award_order asc";
                return session.CreateQuery(sql, resume.Id).ExecuteGetList<Award>();
            }
        }

        public void AddOrUpdateSchoolActivity(SchoolActivity activity)
        {
            using (ISession session = context.OpenSession())
            {
                if (string.IsNullOrEmpty(activity.Id)) session.Add(activity);
                else session.Update(activity);
            }
        }

        public SchoolActivity GetSchoolActivity(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select * from school_activity where resume_id = ?";
                return session.CreateQuery(sql, resume.Id).ExecuteGetEntity<SchoolActivity>();
            }
        }

        public void UpdateScholarships(Resume resume, List<Scholarship> scholarships)
        {
            using (ISession session = context.OpenSession())
            {
                try
                {
                    session.BeginTransaction();
                    string sql = "delete from scholarship where resume_id = ?";
                    session.CreateQuery(sql, resume.Id).ExecuteNonQuery();
                    foreach (Scholarship ss in scholarships)
                    {
                        if (string.IsNullOrEmpty(ss.Id)) session.Add(ss);
                        else session.Update(ss);
                    }
                    session.CommitTransaction();
                }
                catch (Exception ex)
                {
                    session.RollbackTransaction();
                    throw ex;
                }
            }
        }

        public List<Scholarship> GetScholarships(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select * from scholarship where resume_id = ?";
                return session.CreateQuery(sql, resume.Id).ExecuteGetList<Scholarship>();
            }
        }
    }
}
