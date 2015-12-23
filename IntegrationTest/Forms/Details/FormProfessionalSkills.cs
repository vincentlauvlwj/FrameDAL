using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Forms;
using ResumeFactory.Service.Details;
using ResumeFactory.Common;
using ResumeFactory.Entity;

namespace ResumeFactory.Forms.Details
{
    public partial class FormProfessionalSkills : Form, IRefreshable
    {
        private Resume resume;
        private UIProfessionalSkill skill;
        private ProfessionalSkillsService service;

        public FormProfessionalSkills()
        {
            InitializeComponent();
            service = new ProfessionalSkillsService();
        }

        private void FormProfessionalSkills_Load(object sender, EventArgs e)
        {
            InitialControlContent();
        }

        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            try
            {
                datagvSkills.AutoGenerateColumns = false;
                datagvSkills.DataSource = service.GetSkills(resume);
                if (datagvSkills.DataSource == null)
                {
                    datagvSkills.DataSource = new List<UIProfessionalSkill>();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("加载专业技能发生异常：" + ex.Message);
            }
        }

        private void InitialControlContent()
        {
            label4Tips.Text = "请在下方\"新增专业技能\"处填写新的专业技能。\n要更改或删除某项专业技能，请按\"编辑\"或\"删除\"链接";
            cmboxFamiliarity.DataSource = new string[] { "请选择", "一般", "良好", "熟练", "精通" };
            txboxSkillName.Visible = false;
            try
            {
                cmboxSkillType.DisplayMember = "skill_type_name";
                cmboxSkillType.ValueMember = "id";
                cmboxSkillType.DataSource = service.GetSkillType();
            }
            catch (Exception ex)
            {
                MessageBox.Show("初始化界面发生异常：" + ex.Message);
            }
        }

        private void ResetControlContent()
        {
            cmboxSkillType.Text = "请选择";
            cmboxFamiliarity.Text = "请选择";
            txboxSkillName.Text = "";
            txboxUseTime.Text = "";
        }

        private void cmboxSkillType_SelectedIndexChanged(object sender, EventArgs e)
        {
            txboxSkillName.Visible = cmboxSkillType.Text == "请选择" ? false : true;
        }

        private void txboxUseTime_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8 && (e.KeyChar < 48 || e.KeyChar > 57)) e.Handled = true;
        }

        private void txboxSkillName_MouseUp(object sender, MouseEventArgs e)
        {        
            if (e.Button == MouseButtons.Left && (bool)txboxSkillName.Tag == true)
            {
                txboxSkillName.SelectAll();
            }          
            txboxSkillName.Tag = false;
        }

        private void textSkillName_GotFocus(object sender, EventArgs e)
        {
            txboxSkillName.Tag = true;
            txboxSkillName.SelectAll();
        }

        private void btnSaveAndAdd_Click(object sender, EventArgs e)
        {
            if (!Save()) return;
            ResetControlContent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!Save()) return;
            // NEXT WINDOW
            (this.Owner as FormDetails).NextPage();
        }

        private bool Save()
        {
            if (cmboxSkillType.Text == "请选择") { MessageBox.Show("请选择专业技能"); return false; }
            if (txboxSkillName.Text == "") { MessageBox.Show("请填写专业技能名称"); return false; }
            if (txboxUseTime.Text == "") { MessageBox.Show("请填写使用时间"); return false; }
            if (cmboxFamiliarity.Text == "请选择") { MessageBox.Show("请选择熟练程度"); return false; }
            List<UIProfessionalSkill> lsps = datagvSkills.DataSource as List<UIProfessionalSkill>;
            try
            {
                datagvSkills.DataSource = null;
                skill = new UIProfessionalSkill(
                    null,
                    resume.Id,
                    cmboxSkillType.SelectedValue.ToInt32(1),
                    cmboxSkillType.Text,
                    txboxSkillName.Text,
                    txboxUseTime.Text.ToInt32(0),
                    cmboxFamiliarity.Text,
                    lsps.Count + 1);
                service.AddOrUpdate(skill);
                lsps.Add(skill);
                datagvSkills.DataSource = lsps;
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存专业技能时出错：" + ex.Message);
                return false;
            }
        }

        private void linkReturn_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }

        private void datagvSkills_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (datagvSkills.Columns[e.ColumnIndex].HeaderText == "删除")
            {
                List<UIProfessionalSkill> lsps = datagvSkills.DataSource as List<UIProfessionalSkill>;
                UIProfessionalSkill skill = GetSkillFromDgv(e.RowIndex);
                if (MessageBox.Show("将直接删除数据信息且不可恢复，确定删除？", "删除", MessageBoxButtons.YesNo)
                        == DialogResult.Yes)
                {
                    datagvSkills.DataSource = null;
                    service.Delete(skill);
                    lsps.Remove(skill);
                    datagvSkills.DataSource = lsps;
                }
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ResetControlContent();
        }

        /// <summary>
        /// 从DataGridView中根据行号获取社会实践
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private UIProfessionalSkill GetSkillFromDgv(int rowIndex)
        {
            var result = from skills in (datagvSkills.DataSource as List<UIProfessionalSkill>)
                         where skills.Id == datagvSkills["id", rowIndex].Value.ToString()
                         select skills;
            return result.First();
        }
    }
}
