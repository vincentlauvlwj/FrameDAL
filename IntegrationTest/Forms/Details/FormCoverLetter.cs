using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrameDAL.Core;
using ResumeFactory.Service.Details;
using ResumeFactory.Entity;
using ResumeFactory.Common;

namespace ResumeFactory.Forms.Details
{
    public partial class FormCoverLetter : Form,IRefreshable
    {
        private Resume resume;
        private CoverLetter coverletter;
        private CoverLetterService coverletterservice;
        private List<CoverLetter> coverletterList;
        private bool flagCreating;

        public bool setFlagCreating
        {
            set { flagCreating = value; }
            get { return flagCreating; }
        }
        /// <summary>
        /// 获得当前简历
        /// </summary>
        public Resume getReusme
        {
            get { return resume; }
        }
        /// <summary>
        /// 获得当前Coverletter
        /// </summary>
        private CoverLetter currentCl
        {
            get { return coverletter; }
        }
        /// <summary>
        /// 实例加载初始化
        /// </summary>
        public FormCoverLetter()
        {
            InitializeComponent();    
        }
        public void OnBringToFront(object data)
        {
            try
            {
                resume = data as Resume;
                if (resume == null)
                {
                    resume = new Resume();
                    return;
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("获取信息失败"+e.Message);
            }
            RefreshDgvCoverletterData();
        }
        /// <summary>
        /// 更新介绍信列表
        /// </summary>
        private void RefreshDgvCoverletterData()
        {
            coverletterservice = new CoverLetterService();
            coverletterList = coverletterservice.GetCoverLetterListByResume(resume);
            try 
            {
                dgvCoverLetterList.AutoGenerateColumns = false;
                dgvCoverLetterList.DataSource = coverletterList;
                number.Text = (10 - dgvCoverLetterList.Rows.Count).ToString();
            }
            catch(Exception e)
            {
                MessageBox.Show("获取信息失败" + e.Message);throw new NotImplementedException();
            }          
        }
        /// <summary>
        /// 创建新的介绍信
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCreatLetter_Click(object sender, EventArgs e)
        {
            if (!flagCreating)
            {
                FormCoverLetterAdd formcoverletterAdd = new FormCoverLetterAdd();
                formcoverletterAdd.StartPosition = FormStartPosition.CenterScreen;
                formcoverletterAdd.AutoSize = false;
                formcoverletterAdd.Owner = this;
                formcoverletterAdd.setResume = this.resume;
               // formcoverletterAdd.Visible = true;           
                formcoverletterAdd.ShowDialog();
            }
            else return;
        }
        /// <summary>
        ///窗口加载初始化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormCoverLetter_Load(object sender, EventArgs e)
        {
            dgvCoverLetterList.Columns[0].Width = 200;
            dgvCoverLetterList.Columns[1].Width = 200;
            dgvCoverLetterList.Columns[2].Width = 50;
            dgvCoverLetterList.Columns[3].Width = 50;
            dgvCoverLetterList.Columns[4].Width = 50;
            dgvCoverLetterList.Columns[5].Width = 50;
            //dgvCoverLetterList.Columns[0].Width = 200;
            // MessageBox.Show("ss");
        }
        /// <summary>
        /// 提示可创建的介绍信的数量
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvCoverLetterList_CellPainting(object sender, DataGridViewCellPaintingEventArgs e)
        {
            number.Text = (10 - dgvCoverLetterList.Rows.Count).ToString();
        }
        /// <summary>
        /// 刷新数据列表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnRefresh_Click(object sender, EventArgs e)
        {
            RefreshDgvCoverletterData();
        }
        /// <summary>
        /// 进入下一项
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnNext_Click(object sender, EventArgs e)
        {
            if (flagCreating)
            {
                MessageBox.Show("请先保存！");
                return;
            }
             else(this.Owner as FormDetails).NextPage();
        }
        /// <summary>
        /// 返回主界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (flagCreating)
            {
                MessageBox.Show("请先保存！");
                return;
            }
            else (this.Owner as FormDetails).BackToMain();
        }
        /// <summary>
        /// 操作数据列表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvCoverLetterList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;
            if (dgvCoverLetterList.Columns[e.ColumnIndex].Name == "Modify")
            {
                List<CoverLetter> clList = dgvCoverLetterList.DataSource as List<CoverLetter>;
                coverletter = clList[e.RowIndex];
                FormCoverLetterAdd fclAdd = new FormCoverLetterAdd();
                fclAdd.setCoverLetter = coverletter;
                fclAdd.Text = "修改求职信...";
                //this.flagCreating = true;
                fclAdd.ShowDialog();
            }
            if (dgvCoverLetterList.Columns[e.ColumnIndex].Name == "Delete")
            {
                List<CoverLetter> temp =dgvCoverLetterList.DataSource as List<CoverLetter>;
                CoverLetter cl = GetCoverLetterFromDgv(e.RowIndex);
                DialogResult result = MessageBox.Show("确定要删除该项？删除后不可恢复", "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    coverletterservice = new CoverLetterService();
                    try
                    {
                        coverletterservice.Delete(cl);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("删除记录出错" + ex.Message);
                    }
                    dgvCoverLetterList.DataSource = null;
                    temp.Remove(cl);
                    dgvCoverLetterList.DataSource = temp;
                }
            }
        }
        /// <summary>
        /// 在数据表中根据行号获取实例
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private CoverLetter GetCoverLetterFromDgv(int rowIndex)
        {
            var result = from letter in (dgvCoverLetterList.DataSource as List<CoverLetter>)
                         where letter.Id == dgvCoverLetterList["id", rowIndex].Value.ToString()
                         select letter;
            return result.First();
        }
    }
}
