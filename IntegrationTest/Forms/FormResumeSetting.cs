using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Entity;
using ResumeFactory.Service;
using ResumeFactory.Common;

namespace ResumeFactory.Forms
{
    public partial class FormResumeSetting : Form
    {
        private FormMain formMain;
        private Resume resume;
        private MineService mineService;

        public FormResumeSetting(Form formMain, Resume resume, MineService mineService)
        {
            InitializeComponent();
            this.formMain = formMain as FormMain;
            this.resume = resume;
            this.mineService = mineService;
        }

        private void FormResumeSetting_Load(object sender, EventArgs e)
        {
            try
            {
                cmbTemplate.DataSource = mineService.GetTemplates();
                textResumeName.Text = resume.ResumeName;
                cmbTemplate.SelectedValue = "" + resume.ResumeTemplate.Id;
                checkBoxShare.Checked = resume.ResumeShare == 1 ? true : false;
            }
            catch (Exception ex)
            {
                MessageBox.Show("加载简历模版失败：" + ex.Message);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(textResumeName.Text)) throw new Exception("请填写简历名称！");
                if (string.IsNullOrWhiteSpace(cmbTemplate.SelectedValue as string)) throw new Exception("请选择模版！");
                resume.ResumeName = textResumeName.Text;
                resume.ResumeTemplate = (cmbTemplate.DataSource as List<ResumeTemplate>)[cmbTemplate.SelectedIndex];
                resume.ResumeShare = checkBoxShare.Checked ? 1 : 0;
                if(resume.Id == null) resume.ResumeCreateTime = DateTime.Now;
                mineService.AddOrUpdate(resume);
                MessageBox.Show("保存成功！"); 
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失败：" + ex.Message);
            }
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            if (resume.Id == null)
            {
                MessageBox.Show("请先保存！");
            }
            else
            {
                formMain.OpenChildForm(formMain.hostPanel, typeof(FormDetails), resume);
                this.Close();
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
