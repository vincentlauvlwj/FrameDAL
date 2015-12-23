using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FastReport;
using FastReport.Table;
using System.Data;
using ResumeFactory.Entity;
using FrameDAL.Core;
using FastReport.Data;
using System.Globalization;
namespace ResumeFactory.Service.ReportGenerator
{
    public class CommonTemplate:IReportGenerator
    {  
        public Report PrepareReport(Entity.Resume resume)
        {

            Report report = new Report();
         
            DataTable personInfo = getResumeInfo(resume);
            DataTable expect = getExpert(resume);
            DataTable eduback = getEduBack(resume);


            report.Load(Environment.CurrentDirectory + @"\Templates\大众通用.frx");
            TextObject txtTitle = report.FindObject("txtTitle") as TextObject;
            txtTitle.Text = resume.ResumeName + "的个人资料";
            PictureObject pictureHead = report.FindObject("pictureHead") as PictureObject;
            pictureHead.ImageLocation = Environment.CurrentDirectory + @"\Templates\logo.png";

            TextObject gender = report.FindObject("gender") as TextObject;
            gender.Text = (personInfo.Rows[0]["person_gender"].ToString() == "0") ? "男" : "女";
         
            TextObject birth =report.FindObject("birthday")as TextObject;
            IFormatProvider provider = new CultureInfo("zh-CN",true);
            birth.Text = DateTime.Parse(personInfo.Rows[0]["person_birthday"].ToString(),provider).ToShortDateString().ToString();
           
            report.RegisterData(personInfo, "person_info");
            report.RegisterData(expect, "expect");
            report.RegisterData(eduback, "education_background");
            DataBand db = report.FindObject("Data1") as DataBand;
            db.DataSource = report.GetDataSource("education_background");

            TextObject expectarea = report.FindObject("expectarea") as TextObject;
            expectarea.Text = getAreaByAreaCode(expect.Rows[0]["expect_area1"].ToString()).Rows[0]["area_name"].ToString();

            TextObject living = report.FindObject("living") as TextObject;
            living.Text = getAreaByAreaCode(personInfo.Rows[0]["person_living_area"].ToString()).Rows[0]["area_name"].ToString();

            TextObject belong = report.FindObject("belong")as TextObject;
            belong.Text = getAreaByAreaCode(personInfo.Rows[0]["person_born_area"].ToString()).Rows[0]["area_name"].ToString();
           
            report.Prepare();
            return report;
        }


        public DataTable getAreaByAreaCode(String code)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from area_dict where area_code = ?";
                DataTable ad = session.CreateQuery(sql, code).ExecuteGetDataTable();
                return ad;
            }
        }
        public DataTable getResumeInfo(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from person_info where resume_id=?";
                DataTable pi = session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
                return pi;
            }
        }

        public DataTable getExpert(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from expect where resume_id=?";
                DataTable pi = session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
                return pi;
            }
        }
        public DataTable getEduBack(Resume resume)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                String sql = "select * from education_background where resume_id=?";
                DataTable pi = session.CreateQuery(sql, resume.Id).ExecuteGetDataTable();
                return pi;
            }
        }
    }
}
