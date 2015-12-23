using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service.Details
{
    public class ProjectExperienceService : BaseService<ProjectExperience>, IFinishStatusAccessable
    {
        private List<ProjectExperience> peList;
        /// <summary>
        /// 获取项目经验模块完成状态
        /// </summary>
        /// <param name="resume"></param>
        /// <returns>返回0，未添项目经验，返回2，至少添加一项</returns>
        public int GetFinishStatus(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from project_experience where resume_id=?";
                object result = session.CreateQuery(sql, resume.Id).ExecuteScalar();
                return (result == null) ? 0 : 2;
            }
        }
        /// <summary>
        /// 查询项目经验列表
        /// </summary>
        /// <param name="resume"></param>
        /// <returns></returns>
        public List<ProjectExperience> GetProjExpreienceListByResume(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from project_experience where resume_id=?";
                peList = session.CreateQuery(sql, resume.Id).ExecuteGetList<ProjectExperience>();
                if (peList != null)
                    return peList;
                return null;
            }
            //throw new NotImplementedException.);
        }
    }
}
