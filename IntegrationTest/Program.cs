using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using ResumeFactory.Forms;

namespace ResumeFactory
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ResumeFactory.Common.Config.DefaultPath
                = FrameDAL.Config.Configuration.DefaultPath
                = Application.StartupPath + @"\ResumeFactory.ini";

            FormLogin formLogin = new FormLogin();
            Sunisoft.IrisSkin.SkinEngine skin = new Sunisoft.IrisSkin.SkinEngine(formLogin);
            skin.SkinFile = ResumeFactory.Common.Config.SkinFile;
            skin.TitleFont = new System.Drawing.Font("微软雅黑", 10F); 
            skin.SkinScrollBar = false;
            if (formLogin.ShowDialog() == DialogResult.OK)
            {
                Application.Run(new FormMain(formLogin.LoginUser));
            }
        }
    }
}