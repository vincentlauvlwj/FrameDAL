using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using ResumeFactory.Common;
using ResumeFactory.Entity;

namespace ResumeFactory.Forms
{
    public partial class FormMain : Form
    {
        private Font selectedFont = new Font("微软雅黑", 20F);
        private Font normalFont = new Font("微软雅黑", 12F);
        private User loginUser;

        public FormMain(User loginUser)
        {
            InitializeComponent();
            this.loginUser = loginUser;
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            labelTip.Text = "当前登录用户：" + loginUser.UserName;
            btnMine_Click(btnMine, null);
        }

        private void btnMine_Click(object sender, EventArgs e)
        {
            this.OpenChildForm(hostPanel, typeof(FormMine), loginUser);
            btnMine.Font = selectedFont;
            btnFriends.Font = normalFont;
        }

        private void btnFriends_Click(object sender, EventArgs e)
        {
            this.OpenChildForm(hostPanel, typeof(FormFriends), loginUser);
            btnFriends.Font = selectedFont;
            btnMine.Font = normalFont;
        }

        private void FormMain_HelpButtonClicked(object sender, CancelEventArgs e)
        {
            new AboutBox().ShowDialog();
            e.Cancel = true;
        }

        private void FormMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private const int WM_SYSCOMMAND = 0x112;
        private const int MF_STRING = 0x0;
        private const int MF_SEPARATOR = 0x800;
        private const int SYSMENU_ABOUT_ID = 0x1;

        [DllImport("user32.dll", CharSet=CharSet.Auto, SetLastError=true)]
        private static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

        [DllImport("user32.dll", CharSet=CharSet.Auto, SetLastError=true)]
        private static extern bool AppendMenu(IntPtr hMenu, int uFlags, int uIDNewItem, string lpNewItem);

        protected override void OnHandleCreated(EventArgs e)
        {
            base.OnHandleCreated(e);
            IntPtr hSysMenu = GetSystemMenu(this.Handle, false);
            AppendMenu(hSysMenu, MF_SEPARATOR, 0, string.Empty);
            AppendMenu(hSysMenu, MF_STRING, SYSMENU_ABOUT_ID, "关于(&A)...");
        }

        protected override void WndProc(ref Message m)
        {
            base.WndProc(ref m);
            if (m.Msg == WM_SYSCOMMAND && ((int)m.WParam) == SYSMENU_ABOUT_ID)
            {
                new AboutBox().ShowDialog();
            }
        }
    }
}
