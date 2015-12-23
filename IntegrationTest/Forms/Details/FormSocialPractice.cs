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
    public partial class FormSocialPractice : Form, IRefreshable
    {
        private Resume resume;
        private SocialPractice curpractice = null;
        private SocialPracticeService service;

        public FormSocialPractice()
        {
            InitializeComponent();
            service = new SocialPracticeService();
        }

        private void FormSocialPractice_Load(object sender, EventArgs e)
        {
            InitialControlContent();
        }

        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            try
            {
                datagvPratices.AutoGenerateColumns = false;
                datagvPratices.DataSource = service.GetPractices(resume);
            }
            catch (Exception ex)
            {
                MessageBox.Show("加载专业技能发生异常：" + ex.Message);
            }
        }

        private void InitialControlContent()
        {
            label4Tips.Text = "请在页面下方\"新增实践经验\"处填写新的实践经验。 要更改或删除某项实践经验，请按\"编辑\"或\"删除\"链接";
            datetpStartDate.CustomFormat = datetpEndDate.CustomFormat = "yyyy年MM月";
            datetpStartDate.Format = datetpEndDate.Format = DateTimePickerFormat.Custom;
        }

        private void ResetControlContent()
        {
            txboxPracticeName.Text = "";
            txboxPracticeDesc.Text = "";
            curpractice = null;
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
            if (string.IsNullOrWhiteSpace(txboxPracticeName.Text)) { MessageBox.Show("请填写实践经验名称"); return false; }
            // if (rtxboxPracticeDesc.Text == "") { MessageBox.Show("请填写使用时间"); return false; }
            List<SocialPractice> sps = datagvPratices.DataSource as List<SocialPractice>;
            try
            {
                if (curpractice == null)
                {
                    curpractice = new SocialPractice(
                            null,
                            resume.Id,
                            txboxPracticeName.Text,
                            datetpStartDate.Value,
                            datetpEndDate.Value,
                            txboxPracticeDesc.Text,
                            sps.Count + 1);
                    sps.Add(curpractice);
                    datagvPratices.DataSource = null;
                    datagvPratices.DataSource = sps;
                    datagvPratices.Refresh();
                }
                else
                {
                    curpractice.PracticeName = txboxPracticeName.Text;
                    curpractice.PracticeDesc = txboxPracticeDesc.Text;
                    curpractice.PracticeStartDate = datetpStartDate.Value;
                    curpractice.PracticeEndDate = datetpEndDate.Value;
                }
                service.AddOrUpdate(curpractice);
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

        private void datagvPratices_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (datagvPratices.Columns[e.ColumnIndex].HeaderText == "删除")
            {
                List<SocialPractice> sps = datagvPratices.DataSource as List<SocialPractice>;
                SocialPractice sp = GetSocialPracticeFromDgv(e.RowIndex);
                if (MessageBox.Show("将直接删除数据信息且不可恢复，确定删除？", "删除", MessageBoxButtons.YesNo)
                        == DialogResult.Yes)
                {
                    try
                    {
                        service.Delete(sp);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("删除记录时出错" + ex.Message);
                    }
                    datagvPratices.DataSource = null;
                    sps.Remove(sp);
                    datagvPratices.DataSource = sps;
                }
                return;
            }
            if (datagvPratices.Columns[e.ColumnIndex].HeaderText == "编辑")
            {
                List<SocialPractice> sps = datagvPratices.DataSource as List<SocialPractice>;
                curpractice = sps[e.RowIndex];
                txboxPracticeName.Text = curpractice.PracticeName;
                txboxPracticeDesc.Text = curpractice.PracticeDesc;
                datetpStartDate.Value = curpractice.PracticeStartDate == null ? DateTime.Now : curpractice.PracticeStartDate.Value;
                datetpEndDate.Value = curpractice.PracticeEndDate == null ? DateTime.Now : curpractice.PracticeEndDate.Value;
                return;
            }
        }

        /// <summary>
        /// 从DataGridView中根据行号获取社会实践
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private SocialPractice GetSocialPracticeFromDgv(int rowIndex)
        {
            var result = from experience in (datagvPratices.DataSource as List<SocialPractice>)
                         where experience.Id == datagvPratices["id", rowIndex].Value.ToString()
                         select experience;
            return result.First();
        }
    }
}
