using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Common;
using ResumeFactory.Service;
using ResumeFactory.Entity;

namespace ResumeFactory.Forms
{
    public partial class FormLogin : Form
    {
        public User LoginUser { get; private set; }
        private LoginService loginService = new LoginService();
        private User getUser;

        public FormLogin()
        {
            InitializeComponent();
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {
            textBoxAccount.Text = Config.UserName;
            textBoxPassword.Text = Config.Password;
            checkBoxRememberPwd.Checked = Config.RememberPassword;
            //自动登录
            AutoLogin();
        }

        /// <summary>
        /// 为了方便调试写的自动登录方法，如果这个方法影响了你写登录界面的功能，可以暂时注释掉
        /// </summary>
        private void AutoLogin()
        {
            textBoxAccount.Text = "coder";
            textBoxPassword.Text = "coder";
            btnLogin_Click(null, null);
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (textBoxAccount.Text == "" || textBoxAccount.Text == "")
            {
                MessageBox.Show("请输入用户名和密码");
                textBoxAccount.Focus();
            }
            if (textBoxAccount.Text != "" && textBoxAccount.Text != "")
            {
                if ((getUser = loginService.Login(textBoxAccount.Text.ToString(), textBoxPassword.Text.ToString()))!=null)
                {
                    LoginUser = getUser;
                    if (this.checkBoxRememberPwd.Checked == true)
                    {
                        Config.RememberPassword = true;
                        Config.UserName = textBoxAccount.Text;
                        Config.Password = textBoxPassword.Text;
                    }
                    else
                    {
                        Config.RememberPassword = false;
                        Config.UserName = "";
                        Config.Password = "";
                    }
                    this.DialogResult = DialogResult.OK;
                }
                else
                {
                    MessageBox.Show("用户名或密码错误！");
                    textBoxAccount.SelectAll();
                    textBoxPassword.Clear();
                    textBoxAccount.Focus();
                }
            }
        }
        private void linkLabelRegister_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.OpenChildForm(panel1, typeof(FormRegister));
        }
    }
}
