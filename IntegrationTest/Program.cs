using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using ResumeFactory.Forms;
using ResumeFactory.Entity;
using FrameDAL.Core;
using FrameDAL.Attributes;

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
            ResumeFactory.Common.Config.DefaultPath
                = FrameDAL.Config.Configuration.DefaultPath
                = Application.StartupPath + @"\ResumeFactory.ini";
            RunUnitTest();
            // RunResumeFactory();
        }

        private static void RunUnitTest()
        {
            // LinqTest test = new LinqTest();
            StudentTest test = new StudentTest();
            // test.Run();
            test.Debug(test.TestResultMap);
        }

        private static void RunResumeFactory()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

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

    [Table("user")]
    public class User0
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("user_name")]
        public string UserName { get; set; }

        [Column("user_pwd")]
        public string UserPwd { get; set; }
    }

    [Table("resume")]
    public class Resume0
    {
        [Id(GeneratorType.Uuid)]
        [Column("id")]
        public string Id { get; set; }

        [Column("resume_name")]
        public string ResumeName { get; set; }

        [Column("user_id")]
        public string UserId { get; set; }
    }
}