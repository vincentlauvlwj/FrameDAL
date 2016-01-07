using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ResumeFactory.Entity;
using ResumeFactory.Common;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 工作经历Service
    /// </summary>
    public class WorkExperienceService : BaseService<Experience>, IFinishStatusAccessable
    {
        /// <summary>
        /// 获取行业类别字典的内容
        /// </summary>
        /// <returns>行业类别</returns>
        public DataTable GetIndustries()
        {
            using (ISession session = context.OpenSession())
            {
                return session.CreateSqlQuery("select industry_type from industry_dict").ExecuteGetDataTable();
            }
        }

        /// <summary>
        /// 工作经历实体类的子类，增加了一个ExpDate属性用于在DataGridView中的时间显示
        /// </summary>
        public class ExperienceInfo : Experience
        {
            public string ExpDate
            {
                get
                {
                    StringBuilder sb = new StringBuilder();
                    if (ExpStartDate != null)
                    {
                        sb.Append(ExpStartDate.Value.ToString("yyyy年MM月") + " - ");
                    }
                    if (ExpEndDate != null)
                    {
                        sb.Append(ExpEndDate.Value.ToString("yyyy年MM月"));
                    }
                    else
                    {
                        sb.Append("至今");
                    }
                    return sb.ToString();
                }
            }
        }

        /// <summary>
        /// 获取简历中所有的工作经历
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>工作经历列表</returns>
        public List<ExperienceInfo> GetExperienceInfos(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select * from experience where resume_id = ?";
                return session.CreateSqlQuery(sql, resume.Id).ExecuteGetList<ExperienceInfo>();
            }
        }

        /// <summary>
        /// 获得指定简历的工作经验的完成状态
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>完成状态，0未填，1部分已填，2全部已填</returns>
        public int GetFinishStatus(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select count(*) from experience where resume_id = ?";
                object count = session.CreateSqlQuery(sql, resume.Id).ExecuteScalar();
                return Convert.ToInt32(count) == 0 ? 0 : 2;
            }
        }
    }
}
