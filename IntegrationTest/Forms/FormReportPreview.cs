using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FastReport;

namespace ResumeFactory.Forms
{
    public partial class FormReportPreview : Form
    {
        private Report report;

        public FormReportPreview(Report report)
        {
            InitializeComponent();
            this.report = report;
        }

        private void FormReportPreview_Load(object sender, EventArgs e)
        {
            report.Preview = previewControl;
            report.Show();
        }
    }
}
