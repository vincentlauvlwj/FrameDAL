using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FrameDAL.Core;

namespace ResumeFactory.Service
{
    public class LoginService : BaseService<User>
    {       
        /// <summary>
        /// 用于登录界面，传入账户和密码，如果账户存在且密码符合，返回true，否则返回false。
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public User Login(String name, String pass)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                List<User> result = session.CreateQuery("select * from user where user_name =?", name).ExecuteGetList<User>();
                if (result.Count > 0)
                {
                    if (result[0].UserName == name && result[0].UserPwd == pass)
                        return result[0];
                    else return null;
                }
                else               
                    return null;                
            }
        }
        /// <summary>
        /// 用于用户注册。输入用户账户名称，账户密码，如果用户名已存在会有提示。
        /// 无返回值。
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        public void register(String name, String pass)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                try
                {
                    session.BeginTransaction();
                    User user = new User();
                    user.UserName = name;
                    user.UserPwd = pass;
                    session.Add(user);
                    session.CommitTransaction();
                }
                catch(Exception e)
                {
                    if (session.InTransaction())
                    {
                        session.RollbackTransaction();
                        throw new Exception(e.ToString());
                    }
                }
            }
        }

        /// <summary>
        /// 用于检测用户名是否已经存在，存在返回TRUE，否则返回false。
        /// 参数类型(String)
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public bool name_exist(String name)
        {
            bool flag = false;
            using (ISession session = AppContext.Instance.OpenSession())
            {                 
                 User user = new User();
                 User loginUser = session.Get<User>(user.Id);
                 String sql = "select * from user where user_name = '"+ name +"'";
                 Object result = session.CreateQuery(sql).ExecuteScalar();
                 if (result!=null)                     
                     flag = true;
            }
            return flag;
        }      
    }
}
 
   