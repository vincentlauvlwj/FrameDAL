using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Entity;
using ResumeFactory.Service.Details;
using ResumeFactory.Common;

namespace ResumeFactory.Forms.Details
{
    public partial class FormProjectExperience : Form,IRefreshable
    {
        private Resume resume;
        private ProjectExperience projectexperience;
        private ProjectExperienceService projectexperienceService;
        private List<ProjectExperience> projectexperienceList;
        public FormProjectExperience()
        {
            InitializeComponent();
        }

        public void OnBringToFront(object data)
        {
            clearInfo();
            resume = data as Resume;
            if(resume==null)
            {
                resume = new Resume();
            }
            else refreshDgvData(resume);
        }
        /// <summary>
        /// 是否为IT项目选择
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (cbIsIT.Checked)
            {
                panel1.Visible = false;
                panel2.Visible = true;
            }
            else
            {
                panel2.Visible = false;
                panel1.Visible = true;
            }
        }
        
        /// <summary>
        /// 返回主界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }
        /// <summary>
        /// 保存当前编辑的内容，并更新到列表中，跳至编辑下一项
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            refreshDgvData(this.resume);
            clearInfo();
            (this.Owner as FormDetails).NextPage();
        }
        /// <summary>
        /// 刷新列表
        /// </summary>
        /// <param name="resume"></param>
        private void refreshDgvData(Resume resume)
        {
            projectexperienceService = new ProjectExperienceService();
            try
            {
                projectexperienceList = projectexperienceService.GetProjExpreienceListByResume(resume);
                dgvProjExperience.AutoGenerateColumns = false;
                dgvProjExperience.DataSource = projectexperienceList;
            }
            catch (Exception e)
            { MessageBox.Show("加载数据失败"+e.Message); }
            //throw new NotImplementedException();
        }
        /// <summary>
        /// 添加新的项目经验并刷新列表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSaveAndAddNew_Click(object sender, EventArgs e)
        {
            
            projectexperience = new ProjectExperience();
            projectexperience.ResumeId =resume.Id;
            projectexperience.ProjectName = txtProjectName.Text;
            projectexperience.ProjectExpStartDate = dtStart.Value.Date;
            projectexperience.ProjectExpEndDate = dtEnd.Value.Date;            
            if (this.txtProjectName.Text == "")
                {
                    MessageBox.Show("带*项为必填","Warning",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                    this.label2.ForeColor = Color.Red;
                    return;
                }
            if (cbIsIT.Checked == true)
            {                
                projectexperience.ProjectIsIt = 1;
                projectexperience.ProjectSoftwareEnv = txtSoftWare.Text;
                projectexperience.ProjectHardwareEnv = txtHardWare.Text;
                projectexperience.ProjectDevelopEnv = txtDevelop.Text;
                projectexperience.ProjectDesc = txtItDesc.Text;
                projectexperience.ProjectDuty = txtItDuty.Text;
                if (this.txtItDesc.Text == "" || this.txtItDuty.Text == "")
                {
                    DialogResult dr = MessageBox.Show("内容不完整，是否继续", "Warring", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                    if (dr == DialogResult.Cancel)
                        return;
                }

            }
            else 
            {
                projectexperience.ProjectIsIt = 0;
                projectexperience.ProjectDesc = txtDesc.Text;
                projectexperience.ProjectDuty = txtDuty.Text;
                projectexperience.ProjectSoftwareEnv = null;
                projectexperience.ProjectHardwareEnv = null;
                projectexperience.ProjectDevelopEnv = null;
                if (this.txtDesc.Text == "" || this.txtDuty.Text == "")
                {
                    DialogResult dr = MessageBox.Show("内容不完整，是否继续", "Warring", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                    if (dr == DialogResult.Cancel)
                        return;
                }
            }
            if (dtStart.Value > dtEnd.Value)
            {
                MessageBox.Show("开始时间不能大于结束时间");
                return;
            }
            if (theSameProject(projectexperience))
            {   
                MessageBox.Show("项目【"+projectexperience.ProjectName.ToString()+"】已经存在","Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
                clearInfo();
                return;
            }
            projectexperienceService.AddOrUpdate(projectexperience);
            refreshDgvData(this.resume);
            
            //保存后清空数据
            clearInfo();
        }

        private void clearInfo()
        {
            this.txtProjectName.Text = "";
            this.dtStart.Value = DateTime.Now;
            this.dtEnd.Value = DateTime.Now;
            this.cbIsIT.Checked = false;
            this.txtItDesc.Text = "";
            this.txtItDuty.Text = "";
            this.txtSoftWare.Text = "";
            this.txtHardWare.Text = "";
            this.txtDevelop.Text = "";
            this.txtDuty.Text = "";
            this.txtDesc.Text = "";
        }
        /// <summary>
        /// 判断是否有重复
        /// </summary>
        /// <param name="resume"></param>
        /// <param name="p"></param>
        /// <returns></returns>
        private bool theSameProject(ProjectExperience temp)
        {
            for (int i = 0; i < projectexperienceList.Count; i++)
            {
                if (projectexperienceList[i].ResumeId == temp.ResumeId && projectexperienceList[i].ProjectName == temp.ProjectName && projectexperienceList[i].ProjectIsIt == temp.ProjectIsIt)
                    return true;
            }
            return false;
            //throw new NotImplementedException();
        }
        
        
        /// <summary>
        /// 操作数据表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvProjExperience_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvProjExperience.Columns.Count < 0) return;
            if (dgvProjExperience.Columns[e.ColumnIndex].Name == "Delete")
            {
                List<ProjectExperience> temp = dgvProjExperience.DataSource as List<ProjectExperience>;
                ProjectExperience projexp = GetProjectExperienceFromDgv(e.RowIndex);
                DialogResult result = MessageBox.Show("确定要删除该项？删除后不可恢复", "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    try
                    {
                        projectexperienceService.Delete(projexp);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("删除记录出错" + ex.Message);
                    }
                    dgvProjExperience.DataSource = null;
                    temp.Remove(projexp);
                    dgvProjExperience.DataSource = temp;
                }
            }
            if (dgvProjExperience.Columns[e.ColumnIndex].Name == "Modify")
            {
                List<ProjectExperience> tempPe = dgvProjExperience.DataSource as List<ProjectExperience>;
                projectexperience = tempPe[e.RowIndex];
                this.txtProjectName.Text = projectexperience.ProjectName;
                this.dtStart.Value = projectexperience.ProjectExpStartDate.Value;
                this.dtEnd.Value = projectexperience.ProjectExpEndDate.Value;
                if (projectexperience.ProjectIsIt == 1)
                {
                    this.cbIsIT.Checked = true;
                    this.txtSoftWare.Text = projectexperience.ProjectSoftwareEnv;
                    this.txtHardWare.Text = projectexperience.ProjectHardwareEnv;
                    this.txtDevelop.Text = projectexperience.ProjectDevelopEnv;
                    this.txtItDesc.Text = projectexperience.ProjectDesc;
                    this.txtItDuty.Text = projectexperience.ProjectDuty;
                }
                else
                {
                    this.cbIsIT.Checked = false;
                    this.txtDesc.Text = projectexperience.ProjectDesc;
                    this.txtDuty.Text = projectexperience.ProjectDuty;
                }
               
            }
        }
        /// <summary>
        /// 在数据表中根据行号获取实例
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private ProjectExperience GetProjectExperienceFromDgv(int rowIndex)
        {
            var result = from dgvlist in (dgvProjExperience.DataSource as List<ProjectExperience>)
                         where dgvlist.Id == dgvProjExperience["id", rowIndex].Value.ToString()
                         select dgvlist;
            return result.First();
        }

        private void FormProjectExperience_Load(object sender, EventArgs e)
        {
            this.label2.ForeColor = SystemColors.ControlText;
        }

        private void txtProjectName_TextChanged(object sender, EventArgs e)
        {
            this.label2.ForeColor = SystemColors.ControlText;
        }
    }
}
