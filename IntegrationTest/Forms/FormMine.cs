using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Common;
using ResumeFactory.Entity;
using ResumeFactory.Service;
using ResumeFactory.Service.ReportGenerator;
using FastReport;

namespace ResumeFactory.Forms
{
    /// <summary>
    /// Author: Vincent Lau.
    /// “我的”模块界面
    /// </summary>
    public partial class FormMine : Form, IRefreshable
    {
        private User loginUser;
        private MineService mineService = new MineService();

        public FormMine()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 进入“我的”界面，获取当前登录用户，刷新列表
        /// </summary>
        /// <param name="data"></param>
        public void OnBringToFront(object data)
        {
            if (data.Equals("fromDetailsForm")) return;
            loginUser = data as User;
            RefreshData();
        }

        /// <summary>
        /// 刷新列表数据
        /// </summary>
        private void RefreshData()
        {
            try
            {
                dgvResume.AutoGenerateColumns = false;
                dgvResume.DataSource = mineService.GetResumeInfos(loginUser);
            }
            catch (Exception e)
            {
                MessageBox.Show("加载数据发生异常：" + e.Message);
            }
        }

        /// <summary>
        /// 添加按钮点击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            Resume resume = new Resume();
            resume.User = loginUser;
            new FormResumeSetting(Owner, resume, mineService).ShowDialog();
            RefreshData();
        }

        /// <summary>
        /// 通过DataGridView的行号获得此行的简历对象
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private Resume GetResumeFromDgv(int rowIndex)
        {
            var result = from resume in (dgvResume.DataSource as List<MineService.ResumeInfo>)
                         where resume.Id == dgvResume["Id", rowIndex].Value.ToString()
                         select resume;
            return result.First();
        }

        /// <summary>
        /// DataGridView单元格内容点击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvResume_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;
            if (e.ColumnIndex == dgvResume.Columns["Setting"].Index)
            {
                // 设置简历信息
                new FormResumeSetting(Owner, GetResumeFromDgv(e.RowIndex), mineService).ShowDialog();
                RefreshData();
            }
            else if (e.ColumnIndex == dgvResume.Columns["Edit"].Index)
            {
                // 编辑简历
                FormMain formMain = this.Owner as FormMain;
                formMain.OpenChildForm(formMain.hostPanel, typeof(FormDetails), GetResumeFromDgv(e.RowIndex));
            }
            else if (e.ColumnIndex == dgvResume.Columns["Delete"].Index)
            {
                // 删除简历
                try
                {
                    Resume resume = GetResumeFromDgv(e.RowIndex);
                    if (MessageBox.Show("确定要删除" + resume.ResumeName + "吗？", "ResumeFactory", MessageBoxButtons.YesNo) == DialogResult.Yes)
                    {
                        mineService.Delete(resume);
                        RefreshData();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("删除简历发生异常：" + ex.Message);
                }
            }
            else if (e.ColumnIndex == dgvResume.Columns["Preview"].Index)
            {
                // 预览简历
                try
                {
                    MineService.ResumeInfo resume = GetResumeFromDgv(e.RowIndex) as MineService.ResumeInfo;
                    Type type = Type.GetType(resume.TemplateGeneratorClass, true);
                    IReportGenerator generator = (IReportGenerator) Activator.CreateInstance(type);
                    new FormReportPreview(generator.PrepareReport(resume)).ShowDialog();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("预览简历发生异常：" + ex.Message);
                }
            }
        }

        /// <summary>
        /// 设置DataGridView中“是否公开”列的颜色
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvResume_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            DataGridViewCell cell = dgvResume["ResumeShareStr", e.RowIndex];
            if (e.ColumnIndex != cell.ColumnIndex) return;
            if (cell.Value.Equals("是"))
            {
                e.CellStyle.ForeColor = Color.Green;
            }
            else
            {
                e.CellStyle.ForeColor = Color.Red;
            }
        }
    }
}
