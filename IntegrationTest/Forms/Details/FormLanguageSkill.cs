using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Entity;
using ResumeFactory.Common;
using ResumeFactory.Service.Details;

namespace ResumeFactory.Forms.Details
{
    public partial class FormLanguageSkill : Form,IRefreshable
    {
        Resume resume;
        LanguageAbility languageAbility = new LanguageAbility();
        LanguageSkillService lanSkillService = new LanguageSkillService();
        public FormLanguageSkill()
        {
            InitializeComponent();
        }

        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            RefreshData();
        }
        private void RefreshData() {
            dgvLanguageSkillList.AutoGenerateColumns = false;
            dgvLanguageSkillList.DataSource = lanSkillService.GetLanguageSkillList(resume);
            cbLanguageType.Text = "";
            cbRwSkill.Text = "";
            cbRwSkill.Enabled = false;
            cbLsSkill.Text = "";
            cbLsSkill.Enabled = false;
        }
        private Boolean ValueCheck() 
        {
            if (string.IsNullOrWhiteSpace(cbLanguageType.Text))
            {
                MessageBox.Show("*为必填项！");
                return false;
            }
            return true;
        }
        private void InitLanguageAbility() 
        {
            if (languageAbility == null)
                languageAbility = new LanguageAbility();
            languageAbility.ResumeId = resume.Id;
            languageAbility.LanguageType = cbLanguageType.Text;
            languageAbility.RwAbility = cbRwSkill.Text;
            languageAbility.LsAbility = cbLsSkill.Text;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitLanguageAbility();
            try
            {
                lanSkillService.AddOrUpdate(languageAbility);
                (this.Owner as FormDetails).NextPage();
            }
            catch(Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }

        private void btnSaveAndNew_Click(object sender, EventArgs e)
        {
            if (!ValueCheck())
                return;
            InitLanguageAbility();
            try
            {
                lanSkillService.AddOrUpdate(languageAbility);
                RefreshData();
                languageAbility.Id = null;
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }

        private void linkBack_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }
        private LanguageAbility GetLanguageAbility(int rowIndex)
        {
            var result = from languageAbility in (dgvLanguageSkillList.DataSource as List<LanguageAbility>)
                         where languageAbility.Id == dgvLanguageSkillList["Id", rowIndex].Value.ToString()
                         select languageAbility;
            return result.First();
        }
        private void dgvLanguageSkillList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex<0)
                return;
            if (e.ColumnIndex == dgvLanguageSkillList.Columns["Edit"].Index)
            {
                LanguageAbility languageAbilityEdit = GetLanguageAbility(e.RowIndex);
                languageAbility.Id = languageAbilityEdit.Id;
                cbLanguageType.Text = languageAbilityEdit.LanguageType;
                cbRwSkill.Text = languageAbilityEdit.RwAbility;
                cbLsSkill.Text = languageAbilityEdit.LsAbility;
            }
            else if (e.ColumnIndex == dgvLanguageSkillList.Columns["Delete"].Index)
            {
                DialogResult confirm = MessageBox.Show("确定删除该条记录吗？", "Confirm", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.No)
                    return;
                try
                {
                    LanguageAbility languageAbility = GetLanguageAbility(e.RowIndex);
                    lanSkillService.Delete(languageAbility);
                    RefreshData();
                }
                catch (Exception exception)
                {
                    MessageBox.Show(exception.Message);
                }
            }
        }

        private void cbLanguageType_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(cbLanguageType.Text))
            {
                cbRwSkill.Enabled = true;
                cbLsSkill.Enabled = true;
            }
            else
            {
                cbRwSkill.Text = "";
                cbLsSkill.Text = "";
                cbRwSkill.Enabled = false;
                cbLsSkill.Enabled = false;
            }
        }
    }
}
