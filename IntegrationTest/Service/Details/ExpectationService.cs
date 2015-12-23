using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 求职意向Service
    /// </summary>
    public class ExpectationService : BaseService<Expect>, IFinishStatusAccessable
    {
        /// <summary>
        /// 获取行业类别字典的内容
        /// </summary>
        /// <returns>行业类别</returns>
        public DataTable GetIndustries()
        {
            using (ISession session = context.OpenSession())
            {
                return session.CreateQuery("select industry_type from industry_dict").ExecuteGetDataTable();
            }
        }

        /// <summary>
        /// 获取指定简历中的求职意向
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>求职意向实体</returns>
        public Expect GetExpect(Resume resume)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = "select * from expect where resume_id = ?";
                return session.CreateQuery(sql, resume.Id).ExecuteGetEntity<Expect>();
            }
        }

        /// <summary>
        /// 获得指定简历的求职意向的完成状态
        /// </summary>
        /// <param name="resume">简历</param>
        /// <returns>完成状态，0未填，1部分已填，2全部已填</returns>
        public int GetFinishStatus(Resume resume)
        {
            Expect expect = GetExpect(resume);
            if (expect == null) return 0;

            if (string.IsNullOrWhiteSpace(expect.ExpectArea1)
                || string.IsNullOrWhiteSpace(expect.ExpectArea2)
                || string.IsNullOrWhiteSpace(expect.ExpectIndustry1)
                || string.IsNullOrWhiteSpace(expect.ExpectIndustry2)
                || string.IsNullOrWhiteSpace(expect.ExpectJobClass1)
                || string.IsNullOrWhiteSpace(expect.ExpectJobSubclass1)
                || string.IsNullOrWhiteSpace(expect.ExpectJobClass2)
                || string.IsNullOrWhiteSpace(expect.ExpectJobSubclass2)
                || string.IsNullOrWhiteSpace(expect.ExpectSalary)
                || string.IsNullOrWhiteSpace(expect.WorkStatus)
                )
                return 1;

            return 2;
        }
    }
}
