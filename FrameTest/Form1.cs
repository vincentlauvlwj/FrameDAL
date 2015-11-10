using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrameDAL.Core;
using FrameDAL.Query;
using FrameDAL.Attributes;

namespace FrameTest
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TestAdd();
            // TestDelete();
            // MessageBox.Show(TestGet().Name);
            // TestUpdate();
            // TestFlush();
            // TestTransaction();
            // TestNonQuery();
            // TestScalar();
            // TestDataTable();
            // TestPageSize();
            // TestGetList();
            TestNamedQuery();
        }

        private void TestAdd()
        {
            AppContext context = AppContext.Instance;
            Account account = new Account();
            account.Name = "测试";
            account.Password = "123";
            account.UserId = "1";
            account.Balance = 1234;
            using (ISession session = context.OpenSession())
            {
                MessageBox.Show(session.Add(account).ToString());
            }
        }

        private void TestDelete()
        {
            AppContext context = AppContext.Instance;
            Account account = new Account();
            account.Id = "f3fc1f11-7d32-4f52-88ee-ecda3dee0aa6";
            ISession session = context.OpenSession();
            session.Delete(account);
            session.Close();
        }

        private Account TestGet()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                return session.Get<Account>("94a2d11b-cea4-4684-9b09-59bf273ff329");
            }
        }

        private void TestUpdate()
        {
            Account account = TestGet();
            account.Name = "哈哈哈哈哈";
            using (ISession session = AppContext.Instance.OpenSession())
            {
                session.Update(account);
            }
        }

        private void TestFlush()
        {
            ISession session = AppContext.Instance.OpenSession();
            Account account = new Account();
            account.Name = "test";
            session.Add(account);
            session.Flush();
        }

        private void TestTransaction()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                try
                {
                    session.BeginTransaction();
                    for (int i = 0; i < 3; i++)
                    {
                        Account account = new Account();
                        account.Name = "Test" + i;
                        session.Add(account);
                    }
                    // throw new Exception();
                    session.CommitTransaction();
                }
                catch
                {
                    session.RollbackTransaction();
                }
            }
        }

        private void TestNonQuery()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                IQuery query = session.CreateQuery();
                query.SqlText = "update account set balance=1 where id=?";
                query.Parameters = new object[] { "1" };
                query.ExecuteNonQuery();
            }
        }

        private void TestScalar()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                object val = session.CreateQuery("select name from account where id=?", "1").ExecuteScalar();
                MessageBox.Show(val.ToString());
            }
        }

        private void TestDataTable()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                dataGridView1.DataSource = session.CreateQuery("select * from account").ExecuteGetDataTable();
            }
        }

        private void TestPageSize()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                IQuery query = session.CreateQuery("select * from account");
                query.FirstResult = 0;
                query.PageSize = 2;
                dataGridView1.DataSource = query.ExecuteGetDataTable();
            }
        }

        public class VO
        {
            [Column("account_name")]
            public string AccountName { get; set; }

            [Column("user_name")]
            public string UserName { get; set; }
        }

        private void TestGetList()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = @"
                    select account.name as account_name, user.name as user_name 
                    from account left outer join user on (account.user_id=user.id)";
                dataGridView1.DataSource = session.CreateQuery(sql).ExecuteGetList<VO>();
            }
        }

        private void TestNamedQuery()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                dataGridView1.DataSource = session.CreateNamedQuery("test.query", "1").ExecuteGetList<VO>();
            }
        }
    }
}
