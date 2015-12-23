using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Service;

namespace ResumeFactory.Forms
{
    public partial class FormRegister : Form
    {
        private LoginService loginService;

        public FormRegister()
        {
            InitializeComponent();
        }

        private void FormRegister_Load(object sender, EventArgs e)
        {
            textBoxAccount1.Text = "";
            textBoxPassword1.Text = "";
            textBoxAccount1.Focus();
        }
        private void btnRegister_Click(object sender, EventArgs e)
        {
            if (textBoxAccount1.Text == "")
            {
                MessageBox.Show("请先输入用户名：");
                textBoxAccount1.Focus();
            }

            if (textBoxPassword1.Text == "")
            {
                MessageBox.Show("请输入密码：");
                textBoxPassword1.Focus();
            }
            else if (textBox1.Text == "")
            {
                MessageBox.Show("请输入确认密码：");
                textBox1.Focus();
            }
            else if (!(textBoxPassword1.Text == textBox1.Text))
            {
                MessageBox.Show("两次输入的密码不一致，请重新输入：");
                textBoxPassword1.SelectAll();
                textBox1.Text = "";
                textBoxPassword1.Focus();
            }
            else
            {
                loginService = new LoginService();
                if (loginService.name_exist(textBoxAccount1.Text.ToString()))
                {
                    MessageBox.Show("用户名已存在，请重新输入：");
                    textBoxAccount1.SelectAll();
                    textBoxPassword1.Clear();
                    textBox1.Clear();
                    textBoxAccount1.Focus();
                }
                else
                {
                    loginService.register(textBoxAccount1.Text.ToString(), textBoxPassword1.Text.ToString());
                    MessageBox.Show("注册成功，欢迎登陆");
                    this.Close();
                }
            }
        }
    }
}
