using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ResumeFactory.Entity;
using FastReport;

namespace ResumeFactory.Service.ReportGenerator
{
    public class AboutReportGenerator : IReportGenerator
    {
        public Report PrepareReport(Resume resume)
        {
            Report report = new Report();
            report.Load(Environment.CurrentDirectory + @"\Templates\About.frx");
            PictureObject picture = report.FindObject("Picture1") as PictureObject;
            picture.ImageLocation = Environment.CurrentDirectory + @"\Templates\logo.png";
            report.Prepare();
            return report;
        }
    }
}
