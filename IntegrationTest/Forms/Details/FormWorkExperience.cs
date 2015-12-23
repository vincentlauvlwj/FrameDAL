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
    /// 工作经历窗口
    /// </summary>
    public partial class FormWorkExperience : Form, IRefreshable
    {
        private WorkExperienceService workExpService = new WorkExperienceService();
        private Resume resume;
        private Experience experience;

        public FormWorkExperience()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 窗口加载，初始化界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormWorkExperience_Load(object sender, EventArgs e)
        {
            try
            {
                listIndustry.DataSource = workExpService.GetIndustries();
                ControlHelper.BindJobClass(listJobClass, listJobSubclass);
            }
            catch (Exception ex)
            {
                MessageBox.Show("初始化界面失败：" + ex.Message);
            }
        }

        /// <summary>
        /// 进入工作经历界面，刷新数据，进入新增记录状态
        /// </summary>
        /// <param name="data"></param>
        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            NewRecord();
            RefreshData();
        }

        /// <summary>
        /// 刷新DataGridView数据
        /// </summary>
        private void RefreshData()
        {
            try
            {
                dgvExp.AutoGenerateColumns = false;
                dgvExp.DataSource = workExpService.GetExperienceInfos(resume);
            }
            catch (Exception e)
            {
                MessageBox.Show("刷新界面数据失败：" + e.Message);
            }
        }

        /// <summary>
        /// 设置控件内容
        /// </summary>
        private void SetInfo()
        {
            textCompanyName.Text = experience.ExpCompanyName;
            listIndustry.Text = experience.ExpIndustry;
            listJobClass.Text = experience.ExpJobClass;
            listJobSubclass.Text = experience.ExpJobSubclass;
            textJobName.Text = experience.ExpJobName;
            dtpStartDate.Value = experience.ExpStartDate == null ? DateTime.Now : experience.ExpStartDate.Value;
            dtpEndDate.Value = experience.ExpEndDate == null ? DateTime.Now : experience.ExpEndDate.Value;
            cmbSalary.Text = experience.ExpSalary;
            cmbCompanyType.Text = experience.ExpCompanyType;
            cmbScale.Text = experience.ExpCompanyScale;
            textDesc.Text = experience.ExpJobDesc;
        }

        /// <summary>
        /// 从空间中读取内容
        /// </summary>
        private void ReadInfo()
        {
            if (string.IsNullOrWhiteSpace(textCompanyName.Text)) throw new Exception("请填写公司名称！");
            if (string.IsNullOrWhiteSpace(listIndustry.Text)) throw new Exception("请选择行业类别！");
            if (string.IsNullOrWhiteSpace(listJobClass.Text)) throw new Exception("请选择职位类别！");
            if (string.IsNullOrWhiteSpace(listJobSubclass.Text)) throw new Exception("请选择职位子类别！");
            if (string.IsNullOrWhiteSpace(textJobName.Text)) throw new Exception("请填写职位名称！");
            if (string.IsNullOrWhiteSpace(textDesc.Text)) throw new Exception("请填写工作描述！");
            experience.ExpCompanyName = textCompanyName.Text;
            experience.ExpIndustry = listIndustry.Text;
            experience.ExpJobClass = listJobClass.Text;
            experience.ExpJobSubclass = listJobSubclass.Text;
            experience.ExpJobName = textJobName.Text;
            experience.ExpStartDate = dtpStartDate.Value;
            experience.ExpEndDate = dtpEndDate.Value;
            experience.ExpSalary = cmbSalary.Text;
            experience.ExpCompanyType = cmbCompanyType.Text;
            experience.ExpCompanyScale = cmbScale.Text;
            experience.ExpJobDesc = textDesc.Text;
        }

        /// <summary>
        /// 进入新增记录状态
        /// </summary>
        private void NewRecord()
        {
            experience = new Experience();
            experience.ResumeId = resume.Id;
            SetInfo();
        }

        /// <summary>
        /// 保存并新增按钮点击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSaveAndAdd_Click(object sender, EventArgs e)
        {
            try
            {
                ReadInfo();
                workExpService.AddOrUpdate(experience);
                NewRecord();
                RefreshData();
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失败：" + ex.Message);
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
                ReadInfo();
                workExpService.AddOrUpdate(experience);
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

        /// <summary>
        /// 从DataGridView中根据行号获取工作经历
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private Experience GetExperienceFromDgv(int rowIndex)
        {
            var result = from experience in (dgvExp.DataSource as List<WorkExperienceService.ExperienceInfo>)
                         where experience.Id == dgvExp["Id", rowIndex].Value.ToString()
                         select experience;
            return result.First();
        }

        /// <summary>
        /// DataGridView单元格内容点击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvExp_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;
            if (e.ColumnIndex == dgvExp.Columns["Edit"].Index)
            {
                // 编辑
                experience = GetExperienceFromDgv(e.RowIndex);
                SetInfo();
            }
            else if (e.ColumnIndex == dgvExp.Columns["Delete"].Index)
            {
                // 删除
                try
                {
                    Experience experience = GetExperienceFromDgv(e.RowIndex);
                    if (MessageBox.Show("确定要删除" + experience.ExpCompanyName + "吗？", "ResumeFactory", MessageBoxButtons.YesNo) == DialogResult.Yes)
                    {
                        workExpService.Delete(experience);
                        RefreshData();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("删除失败：" + ex.Message);
                }
            }
        }
    }
}
