﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Core;
using FrameDAL.Linq;
using ResumeFactory.Entity;

namespace ResumeFactory
{
    public class LinqTest : BaseTest
    {
        public void TestWhere()
        {
            var query = session.GetAll<User>()
                .Where(u => u.UserName == "123")
                .Select(u => new User { Id = "222", UserName = u.UserName, UserPwd = u.UserPwd});
            var result = TestQuery(query);
            Assert(result[0].UserName == "123");
        }

        public void TestWhereSelect()
        {
            var query1 = from u in session.GetAll<User>()
                         where u.UserName == "123"
                         select new { u.UserPwd, u.UserName };
            Assert(query1.ToList().Count > 0);
        }

        public void TestSqlWhere()
        {
            var user = session
                .CreateSqlQuery("select id, user_name, user_pwd from user where user_name=?", "123")
                .ExecuteGetEntity<User>();
            Assert(user.UserName == "123");
        }

        public void TestDbDataReader()
        {
            var result = AppContext.Instance.DbHelper.ExecuteReader(
                "select id, user_name, user_pwd from user where user_name=?", new object[] { "123" },
                reader =>
                {
                    while(reader.Read())
                    {
                        return reader.GetString(reader.GetOrdinal("user_name"));
                    }
                    return null;
                }
                );
            Assert(result, "123");
        }

        public void TestFail()
        {
            var query = session.GetAll<User0>().Join(
                session.GetAll<Resume0>(),
                u => u.Id,
                r => r.UserId,
                (u, r) => new { u.UserName, r.ResumeName },
                null);
            TestQuery(query);
        }

        public void TestNestedQuery()
        {
            var query =
                from u in session.GetAll<User0>()
                select new
                {
                    u.UserName,
                    Resumes = session.GetAll<Resume0>().Where(r => r.UserId == u.Id)
                };
            var result = query.ToList();
            Assert(result.Count > 0);
            Assert(result[0].Resumes.ToList().Count >= 0);
        }

        public void TestSelectWhereSelect()
        {
            var query = session.GetAll<User0>()
                .Select(u => new { Name = u.UserName, Password = u.UserPwd })
                .Where(x => x.Name == "123" || x.Name == "coder")
                .Select(x => x.Name);
            //((IEnumerable<string>)query.GroupBy).GroupBy
            TestQuery(query);
        }

        public void TestJoin()
        {
            var query =
                from u in session.GetAll<User0>()
                join r in session.GetAll<Resume0>() on u.Id equals r.UserId
                select new { u.UserName, r.ResumeName };
            TestQuery(query);
        }

        public void TestSelectMany()
        {
            var query =
                from u in session.GetAll<User0>()
                from r in session.GetAll<Resume0>()
                where r.UserId == u.Id
                select new { u.UserName, r.ResumeName };
            TestQuery(query);
        }

        public void TestNullArgument()
        {
            var query = from s in session.GetAll<Student>()
                        where s.StuName == null
                        select s;
            var result = TestQuery(query);
            Assert(result.Count > 0);
        }

        public void TestDistinct()
        {
            var query = session.GetAll<Student>().Select(s => s.StuName).Distinct();
            var result = TestQuery(query);
            Assert(result.Count == 6);
        }

        public void TestOrderBy()
        {
            var query = session.GetAll<Student>().OrderBy(s => s.StuAge);
            var result = TestQuery(query);
            Assert(result[0].Id == 6);
        }

        public void TestOrderByThenBy()
        {
            var query = session.GetAll<Student>().OrderBy(s => s.StuName).ThenBy(s => s.StuAge);
            TestQuery(query);
        }

        public void TestOrderByRewriter()
        {
            var query = session.GetAll<Student>().OrderBy(s => s.StuAge).Where(s => s.Id != 6);
            TestQuery(query);
        }

        public void TestOrderByDistinct()
        {
            // 先OrderBy再Distinct会导致排序信息丢失、无法排序，因此排序方法应该最后调用
            var query = session.GetAll<Student>().OrderBy(s => s.StuAge).Distinct();
            TestQuery(query);
        }

        public void TestGroupBy()
        {
            var query = session.GetAll<Student>().GroupBy(
                s => s.StuAge,
                (k, g) => new
                {
                    Class = k,
                    MaxId = g.Max(s => s.Id),
                    AvgAge = g.Average(s => s.StuAge),
                    StuCount = g.Count()
                });
            TestQuery(query);
        }

        public void TestOrderByGroupBy()
        {
            var query = session.GetAll<Student>()
                .OrderBy(s => s.Id)
                .GroupBy(
                s => s.StuAge,
                (k, g) => new
                {
                    Class = k,
                    MaxId = g.Max(s => s.Id),
                    AvgAge = g.Average(s => s.StuAge),
                    StuCount = g.Count()
                });
            TestQuery(query);
        }

        public void TestSqlLikeGroupBy()
        {
            var query = from s in session.GetAll<Student>()
                        group s by s.StuAge into g
                        select new
                        {
                            Class = g.Key,
                            MaxId = g.Max(s => s.Id),
                            AvgAge = g.Average(s => s.StuAge),
                            StuCount = g.Count()
                        };
            TestQuery(query);
        }

        public void TestRedundantSubqueries()
        {
            var query = from s in session.GetAll<User0>()
                        join r in session.GetAll<Resume0>() on s.Id equals r.UserId
                        let p = s.UserPwd
                        orderby s.Id
                        where s.UserName != "aaa"
                        where p != "55555"
                        select new { s.UserName, s.UserPwd } into x
                        where x.UserName == "coder"
                        select x;
            TestQuery(query);
        }

        public void TestSkipTake()
        {
            var query = session.GetAll<User>().Skip(1).Take(1);
            TestQuery(query);
        }

        public void TestRootAggregate()
        {
            Assert(session.GetAll<User>().Count() != 0);
        }
    }
}
