using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Service.Details;
using ResumeFactory.Entity;
using ResumeFactory.Common;

namespace ResumeFactory.Forms.Details
{
    /// <summary>
    /// Author: Vincent Lau.
    /// 求职意向窗口
    /// </summary>
    public partial class FormExpectation : Form, IRefreshable
    {
        private ExpectationService expectService = new ExpectationService();
        private Resume resume;
        private Expect expect;

        public FormExpectation()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 窗口加载，初始化界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormExpectation_Load(object sender, EventArgs e)
        {
            try
            {
                ControlHelper.BindAreaToCmb(cmbProvince1, cmbCity1, cmbCounty1);
                ControlHelper.BindAreaToCmb(cmbProvince2, cmbCity2, cmbCounty2);
                listIndustry1.DataSource = listIndustry2.DataSource = expectService.GetIndustries();
                ControlHelper.BindJobClass(listJobClass1, listJobSubclass1);
                ControlHelper.BindJobClass(listJobClass2, listJobSubclass2);
            }
            catch (Exception ex)
            {
                MessageBox.Show("初始化界面失败：" + ex.Message);
            }
        }

        /// <summary>
        /// 进入求职意向窗口，获取当前编辑的求职意向
        /// </summary>
        /// <param name="data"></param>
        public void OnBringToFront(object data)
        {
            try
            {
                resume = data as Resume;
                expect = expectService.GetExpect(resume);
                if (expect == null)
                {
                    expect = new Expect();
                    expect.ResumeId = resume.Id;
                }

                checkBoxFullTime.Checked = expect.IsFullTime;
                checkBoxPartTime.Checked = expect.IsPartTime;
                checkBoxPractice.Checked = expect.IsPractice;
                ControlHelper.SetAreaToCmb(cmbProvince1, cmbCity1, cmbCounty1, expect.ExpectArea1);
                ControlHelper.SetAreaToCmb(cmbProvince2, cmbCity2, cmbCounty2, expect.ExpectArea2);
                listIndustry1.Text = expect.ExpectIndustry1;
                listIndustry2.Text = expect.ExpectIndustry2;
                listJobClass1.Text = expect.ExpectJobClass1;
                listJobSubclass1.Text = expect.ExpectJobSubclass1;
                listJobClass2.Text = expect.ExpectJobClass2;
                listJobSubclass2.Text = expect.ExpectJobSubclass2;
                cmbSalary.Text = expect.ExpectSalary;
                cmbStatus.Text = expect.WorkStatus;
            }
            catch (Exception ex)
            {
                MessageBox.Show("加载求职意向失败：" + ex.Message);
            }
        }

        /// <summary>
        /// 保存按钮点击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (!(checkBoxFullTime.Checked || checkBoxPartTime.Checked || checkBoxPractice.Checked))
                    throw new Exception("请选择期望的工作性质。");
                if (string.IsNullOrWhiteSpace(listIndustry1.Text))
                    throw new Exception("请选择期望从事的行业。");
                if (string.IsNullOrWhiteSpace(listJobClass1.Text))
                    throw new Exception("请选择期望的职位类别。");
                if (string.IsNullOrWhiteSpace(listJobSubclass1.Text))
                    throw new Exception("请选择期望的职位子类别。");
                if (string.IsNullOrWhiteSpace(cmbSalary.Text))
                    throw new Exception("请选择期望的薪资待遇。");
                if (string.IsNullOrWhiteSpace(cmbStatus.Text))
                    throw new Exception("请选择当前的工作状态。");
                expect.IsFullTime = checkBoxFullTime.Checked;
                expect.IsPartTime = checkBoxPartTime.Checked;
                expect.IsPractice = checkBoxPractice.Checked;
                expect.ExpectArea1 = cmbCounty1.SelectedValue as string;
                expect.ExpectArea2 = cmbCounty2.SelectedValue as string;
                expect.ExpectIndustry1 = listIndustry1.Text;
                expect.ExpectIndustry2 = listIndustry2.Text;
                expect.ExpectJobClass1 = listJobClass1.Text;
                expect.ExpectJobSubclass1 = listJobSubclass1.Text;
                expect.ExpectJobClass2 = listJobClass2.Text;
                expect.ExpectJobSubclass2 = listJobSubclass2.Text;
                expect.ExpectSalary = cmbSalary.Text;
                expect.WorkStatus = cmbStatus.Text;

                expectService.AddOrUpdate(expect);
                (this.Owner as FormDetails).NextPage();
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失败：" + ex.Message);
            }
        }

        /// <summary>
        /// 返回主窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void linkBack_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }
    }
}
