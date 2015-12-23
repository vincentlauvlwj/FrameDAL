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
using ResumeFactory.Service.Details;

namespace ResumeFactory.Forms.Details
{
    public partial class FormEduBackground : Form,IRefreshable
    {
        private Resume resume;
        private EducationBackground eduBgd = new EducationBackground();
        private EduBackgroundService edubdgService = new EduBackgroundService();
        public FormEduBackground()
        {
            InitializeComponent();
        }
        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            RefreshData();
        }
        private void RefreshData() 
        {
            dgvEduBgdList.AutoGenerateColumns = false;
            dgvEduBgdList.DataSource = edubdgService.GetEduBgdList(resume);
            tbSchoolName.Text = "";
            tbMajorName.Text = "";
            rbIsTzY.Checked = true;
            rbIsTzN.Checked = false;
            cbDegree.Text = "";
        }
        private void InitEduBgd()
        {
            if (eduBgd == null)
                eduBgd = new EducationBackground();
            eduBgd.ResumeId = resume.Id;
            eduBgd.EduStartDate = dtpStartDate.Value;
            eduBgd.EduEndDate = dtpEndDate.Value;
            eduBgd.EduSchoolName = tbSchoolName.Text;
            eduBgd.EduMajorName = tbMajorName.Text;
            if (rbIsTzY.Checked)
            {
                eduBgd.EduUnifiedEnrollment = 1;
            }
            else if (rbIsTzN.Checked)
            {
                eduBgd.EduUnifiedEnrollment = 0;
            }
            eduBgd.EduDegree = cbDegree.Text;
            
        }
        private bool ValueCheck()
        {
            if (dtpStartDate.Value >= dtpEndDate.Value)
            {
                MessageBox.Show("开始时间不能大于结束时间！");
                return false;
            }
            if (string.IsNullOrWhiteSpace(tbSchoolName.Text) || string.IsNullOrWhiteSpace(tbMajorName.Text) || string.IsNullOrWhiteSpace(cbDegree.Text))
            {
                MessageBox.Show("*为必填项！");
                return false;
            }
            return true;
        }
        
        private void linkBack_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitEduBgd();
            try
            {
                edubdgService.AddOrUpdate(eduBgd);
                (this.Owner as FormDetails).NextPage();
            }
            catch (Exception exception)
            {
                MessageBox.Show("保存失败:"+exception.Message);
            }
        }

        private EducationBackground GetEduBgdByRowIndex(int rowIndex)
        {
            var result = from eduBgd in (dgvEduBgdList.DataSource as List<EducationBackground>)
                         where eduBgd.Id == dgvEduBgdList["Id", rowIndex].Value.ToString()
                         select eduBgd;
            return result.First();
            
        }
        private void dgvEduBgdList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
                return;
            if (e.ColumnIndex == dgvEduBgdList.Columns["Edit"].Index)
            {
                EducationBackground eduBgdEdit = GetEduBgdByRowIndex(e.RowIndex);
                eduBgd.Id = eduBgdEdit.Id;
                dtpStartDate.Value = eduBgdEdit.EduStartDate.Value;
                dtpEndDate.Value = eduBgdEdit.EduEndDate.Value;
                tbSchoolName.Text = eduBgdEdit.EduSchoolName;
                tbMajorName.Text = eduBgdEdit.EduMajorName;
                if (eduBgdEdit.EduUnifiedEnrollment == 0)
                {
                    rbIsTzN.Checked = true;
                    rbIsTzY.Checked = false;
                }
                else
                {
                    rbIsTzN.Checked = false;
                    rbIsTzY.Checked = true;
                }
                cbDegree.Text = eduBgdEdit.EduDegree;
            }
            else if (e.ColumnIndex == dgvEduBgdList.Columns["Delete"].Index)
            {
                DialogResult confirm = MessageBox.Show("确定删除该条记录吗？", "Confirm", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.No)
                    return;
                try
                {
                    EducationBackground eduBgd = GetEduBgdByRowIndex(e.RowIndex);
                    edubdgService.Delete(eduBgd);
                    RefreshData();
                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message);
                }
            }
        }

        private void btnSaveAndNew_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitEduBgd();
            try
            {
                edubdgService.AddOrUpdate(eduBgd);
                eduBgd.Id = null;
                RefreshData();
            }
            catch (Exception exception)
            {
                MessageBox.Show("保存失败:" + exception.Message);
            }
        }


    }
}
