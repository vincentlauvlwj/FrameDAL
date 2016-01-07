using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using ResumeFactory.Common;
using FrameDAL.Core;
using FrameDAL.Attributes;

namespace ResumeFactory.Service
{
    public class FriendsService : BaseService<FriendsResume>
    {
        public List<FriendsResume> GetFriendsResume(User user, int page, int size)
        {
            using (ISession session = context.OpenSession())
            {
                string sql = @"select t1.*, Format(sum(t2.score) / count(t2.user_id), 0) as resume_score, t3.user_name, t4.template_generator_class
                               from resume t1 
                                left join resume_scores t2 on t1.id = t2.resume_id 
                                left join `user` t3 on t1.user_id = t3.id 
                                left join resume_template t4 on t1.template_id = t4.id
                               group by t2.resume_id";
                ISqlQuery query = session.CreateSqlQuery(sql, user.Id);
                query.PageSize = size;
                query.FirstResult = (page - 1) * size;
                return query.ExecuteGetList<FriendsResume>();
            }
        }
    }

    public class FriendsResume : Resume
    {
        [Column("user_name")]
        public string UserName { get; set; }

        [Column("resume_score")]
        public int ResumeScore { get; set; }

        [Column("template_generator_class")]
        public string TemplateGeneratorClass { get; set; }

        public string Stars
        {
            get
            {
                return "★★★★★☆☆☆☆☆".Substring(5 - ResumeScore, 5); 
            }
        }
    }
}
