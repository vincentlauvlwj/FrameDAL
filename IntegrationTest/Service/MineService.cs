using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Attributes;
using FrameDAL.Core;

namespace ResumeFactory.Service
{
    /// <summary>
    /// Author: Vincent Lau.
    /// “我的”模块Service
    /// </summary>
    public class MineService : BaseService<Resume>
    {
        /// <summary>
        /// 加载简历模版
        /// </summary>
        /// <returns>模版列表</returns>
        public List<ResumeTemplate> GetTemplates()
        {
            return new BaseService<ResumeTemplate>().GetAll();
        }

        /// <summary>
        /// 简历信息类，继承于Resume类，比父类多了一些其他属性
        /// </summary>
        public class ResumeInfo : Resume
        {
            [Column("template_name", ReadOnly=true)]
            public string TemplateName { get; set; }

            [Column("template_generator_class", ReadOnly=true)]
            public string TemplateGeneratorClass { get; set; }

            public string ResumeShareStr { get { return ResumeShare == 1 ? "是" : "否"; } }

            [Column("avg_score", ReadOnly=true)]
            public int AvgScore { get; set; }

            public string ScoreStars { get { return "★★★★★☆☆☆☆☆".Substring(5 - AvgScore, 5); } }
        }

        /// <summary>
        /// 获得用户的简历信息列表
        /// </summary>
        /// <param name="user">用户</param>
        /// <returns>简历信息列表</returns>
        public List<ResumeInfo> GetResumeInfos(User user)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = @"
                    select resume.*, template_name, template_generator_class, 
                        (select round(avg(score), 0) from resume_scores where resume_id=resume.id) as avg_score
                    from resume join resume_template on (resume.template_id = resume_template.id)
                    where user_id = ?
                    order by resume_create_time";
                return session.CreateQuery(sql, user.Id).ExecuteGetList<ResumeInfo>();
            }
        }

        /// <summary>
        /// 删除一份简历的所有信息
        /// </summary>
        /// <param name="entity">简历</param>
        public override void Delete(Resume entity)
        {
            using (ISession session = context.OpenSession())
            {
                List<string> sqls = new List<string>();
                sqls.Add("delete from additional_info       where resume_id=?");
                sqls.Add("delete from award                 where resume_id=?");
                sqls.Add("delete from certificate           where resume_id=?");
                sqls.Add("delete from cover_letter          where resume_id=?");
                sqls.Add("delete from education_background  where resume_id=?");
                sqls.Add("delete from expect                where resume_id=?");
                sqls.Add("delete from experience            where resume_id=?");
                sqls.Add("delete from language_ability      where resume_id=?");
                sqls.Add("delete from person_info           where resume_id=?");
                sqls.Add("delete from professional_skill    where resume_id=?");
                sqls.Add("delete from project_experience    where resume_id=?");
                sqls.Add("delete from resume_scores         where resume_id=?");
                sqls.Add("delete from scholarship           where resume_id=?");
                sqls.Add("delete from school_activity       where resume_id=?");
                sqls.Add("delete from self_evaluation       where resume_id=?");
                sqls.Add("delete from social_practice       where resume_id=?");
                sqls.Add("delete from train_experience      where resume_id=?");

                try
                {
                    session.BeginTransaction();
                    foreach (string sql in sqls)
                    {
                        session.CreateQuery(sql, entity.Id).ExecuteNonQuery();
                    }
                    session.Delete(entity);
                    session.CommitTransaction();
                }
                catch
                {
                    if(session.InTransaction()) session.RollbackTransaction();
                    throw;
                }
            }
        }
    }
}
