using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;
namespace ResumeFactory.Service.Details
{
    public class CoverLetterService : BaseService<CoverLetter>, IFinishStatusAccessable
    {
        private List<CoverLetter> coverletterlist;
        /// <summary>
        /// 获取求职信模块完成状态
        /// </summary>
        /// <param name="resume"></param>
        /// <returns>0，外添加求职信   1，至少添加一项</returns>
        public int GetFinishStatus(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from cover_letter where resume_id=?";
                object result = session.CreateSqlQuery(sql, resume.Id).ExecuteScalar();
                return (result == null) ? 0 : 2;
            }
        }
        /// <summary>
        /// 获取介绍信列表
        /// </summary>
        /// <param name="resume"></param>
        /// <returns>返回列表</returns>
        public List<CoverLetter> GetCoverLetterListByResume(Resume resume)
        {
            using( ISession session= AppContext.Instance.OpenSession())
            {
                String sql = "select * from cover_letter where resume_id=? order by cover_last_modified DESC";
                coverletterlist= session.CreateSqlQuery(sql,resume.Id).ExecuteGetList<CoverLetter>();
                if (coverletterlist != null)
                    return coverletterlist;
                else coverletterlist = new List<CoverLetter>();
            }
            return coverletterlist;
        }
    }
}
