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
    public partial class FormTrainExp : Form,IRefreshable
    {
        private Resume resume;
        private TrainExperience trainExp = new TrainExperience();
        private TrainExpService trainExpService = new TrainExpService();
        public FormTrainExp()
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
            dgvTrainExpList.AutoGenerateColumns = false;
            dgvTrainExpList.DataSource = trainExpService.GetTrainExpList(resume);
            tbTrainFirm.Text = "";
            tbTrainCourse.Text = "";
            tbTrainAddress.Text = "";
            tbTrainCertificate.Text = "";
            tbTrainDesc.Text = "";
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitTrainExp();
            try
            {
                trainExpService.AddOrUpdate(trainExp);
                (this.Owner as FormDetails).NextPage();
            }
            catch (Exception exception)
            {
                MessageBox.Show("保存失败:" + exception.Message);
            }
        }
        private Boolean ValueCheck()
        {
            if (dtpStartDate.Value >= dtpEndDate.Value)
            {
                MessageBox.Show("开始时间不能大于结束时间！");
                return false;
            }
            if (string.IsNullOrWhiteSpace(tbTrainFirm.Text) || string.IsNullOrWhiteSpace(tbTrainCourse.Text))
            {
                MessageBox.Show("*为必填项！");
                return false;
            }
            return true;
        }
        private void InitTrainExp()
        {
            if (trainExp == null)
                trainExp = new TrainExperience();
            trainExp.ResumeId = resume.Id;
            trainExp.TrainSchool = tbTrainFirm.Text;
            trainExp.TrainCourse = tbTrainCourse.Text;
            trainExp.TrainStartDate = dtpStartDate.Value;
            trainExp.TrainEndDate = dtpEndDate.Value;
            trainExp.TrainAddress = tbTrainAddress.Text;
            trainExp.TrainCertificate = tbTrainCertificate.Text;
            trainExp.TrainDesc = tbTrainDesc.Text;
        }

        private void linkBack_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }

        private void btnSaveAndNew_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitTrainExp();
            try
            {
                trainExpService.AddOrUpdate(trainExp);
                RefreshData();
                trainExp.Id = null;
            }
            catch (Exception exception)
            {
                MessageBox.Show("保存失败:" + exception.Message);
            }
        }

        private void dgvTrainExpList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
                return;
            if (e.ColumnIndex == dgvTrainExpList.Columns["Edit"].Index)
            {
                TrainExperience trainExpEdit = GetTrainExpByRowIndex(e.RowIndex);
                trainExp.Id = trainExpEdit.Id;
                dtpStartDate.Value = trainExpEdit.TrainStartDate.Value;
                dtpEndDate.Value = trainExpEdit.TrainEndDate.Value;
                tbTrainFirm.Text = trainExpEdit.TrainSchool;
                tbTrainCourse.Text = trainExpEdit.TrainCourse;
                tbTrainCertificate.Text = trainExpEdit.TrainCertificate;
                tbTrainAddress.Text = trainExpEdit.TrainAddress;
                tbTrainDesc.Text = trainExpEdit.TrainDesc;
            }
            else if(e.ColumnIndex == dgvTrainExpList.Columns["Delete"].Index)
            {
                DialogResult confirm = MessageBox.Show("确定删除该条记录吗？", "Confirm", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.No)
                    return;
                try
                {
                    TrainExperience trainExp = GetTrainExpByRowIndex(e.RowIndex);
                    trainExpService.Delete(trainExp);
                    RefreshData();
                }
                catch(Exception exception)
                {
                    MessageBox.Show(exception.Message);
                }
            }
        }
        private TrainExperience GetTrainExpByRowIndex(int rowIndex)
        {
            var result = from trainExp in (dgvTrainExpList.DataSource as List<TrainExperience>)
                         where trainExp.Id == dgvTrainExpList["Id", rowIndex].Value.ToString()
                         select trainExp;
            return result.First();
        }
    }
}
