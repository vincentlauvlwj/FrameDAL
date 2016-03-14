using System;
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
        public List<T> Query<T>(IQueryable<T> query)
        {
            LinqQuery<T> q = query as LinqQuery<T>;
            Shell.WriteLine("\nLinqExpression:\n{0}", q.ToString());
            Shell.WriteLine("\nTranslated SQL:\n{0}", q.QueryText);
            List<T> result = q.ToList();
            StringBuilder sb = new StringBuilder();
            foreach(T item in result)
            {
                sb.AppendLine(ObjectToString(item));
            }
            Shell.WriteLine("\nResults:\n{0}", sb.ToString());
            return result;
        }

        public void TestWhere()
        {
            var query = session.GetAll<User>()
                .Where(u => u.UserName != "123")
                .Select(u => new User { Id = "222", UserName = u.UserName, UserPwd = u.UserPwd});
            var result = Query(query);
            Assert(result[0].UserName == "0123");
        }

        public void TestSelectWhere()
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
            var query = session.GetAll<User>().OrderBy(u => u.UserName).ToList();
        }
    }
}
