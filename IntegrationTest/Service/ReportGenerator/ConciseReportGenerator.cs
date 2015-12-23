using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;
using ResumeFactory.Entity;
using FastReport;
using FrameDAL.Core;

namespace ResumeFactory.Service.ReportGenerator
{
    /// <summary>
    /// Author: Vincent Lau.
    /// “极致简约”简历模版生成器
    /// </summary>
    public class ConciseReportGenerator : IReportGenerator
    {
        public Report PrepareReport(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                Report report = new Report();
                report.Load(Environment.CurrentDirectory + @"\Templates\极致简约.frx");
                report.RegisterData(GetPersonInfo(session, resume), "person_info");
                report.RegisterData(GetEducationBackground(session, resume), "education_background");
                report.RegisterData(GetWorkExperience(session, resume), "experience");
                report.RegisterData(GetProjectExperience(session, resume), "project_experience");
                report.RegisterData(GetProfessionalSkill(session, resume), "professional_skill");
                report.RegisterData(GetAward(session, resume), "award");
                return report;
            }
        }

        private DataTable GetPersonInfo(ISession session, Resume resume)
        {
            string sql = @"
                select  person_info.*, 
                        case person_gender 
                            when 1 then '男'
                            else '女'
                        end as person_sex,
                        area_name as living_place
                from    person_info join area_dict 
                        on (person_info.person_living_area = area_dict.area_code)
                where   resume_id=?";
            return session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
        }

        private DataTable GetEducationBackground(ISession session, Resume resume)
        {
            string sql = "select * from education_background where resume_id=? order by edu_end_date desc";
            IQuery query = session.CreateQuery(sql, resume.Id);
            query.FirstResult = 0;
            query.PageSize = 1;
            return query.ExecuteGetDataTable();
        }

        private DataTable GetWorkExperience(ISession session, Resume resume)
        {
            string sql = "select * from experience where resume_id=? order by exp_end_date desc";
            return session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
        }

        private DataTable GetProjectExperience(ISession session, Resume resume)
        {
            string sql = "select * from project_experience where resume_id=? order by project_exp_end_date desc";
            return session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
        }

        private DataTable GetProfessionalSkill(ISession session, Resume resume)
        {
            string sql = "select * from professional_skill where resume_id=? order by skill_order";
            return session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
        }

        private DataTable GetAward(ISession session, Resume resume)
        {
            string sql = "select * from award where resume_id=? order by award_order";
            return session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
        }
    }
}
