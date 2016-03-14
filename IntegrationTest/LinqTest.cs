using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FrameDAL.Core;
using ResumeFactory.Entity;

namespace ResumeFactory
{
    public class LinqTest : BaseTest
    {
        public void TestWhere()
        {
            var query = session.GetAll<User>()
                .Where(u => u.UserName == "123")
                .ToList()[0];
            Assert(query.UserName == "123");
        }

        public void TestSelectWhere1()
        {
            var query1 = from u in session.GetAll<User>()
                         where u.UserPwd.Contains("123")
                         select new { u.UserPwd, u.UserName };
            Assert(query1.ToList()[0].UserPwd == "0123");
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
