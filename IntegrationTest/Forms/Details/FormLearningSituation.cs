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
    public partial class FormLearningSituation : Form, IRefreshable
    {
        private Resume resume;
        private Award award;
        private SchoolActivity activity;
        private List<Scholarship> scholarships;
        private LearningSituationService service;

        public FormLearningSituation()
        {
            InitializeComponent();
            service = new LearningSituationService();
        }

        private void FormLearningSituation_Load(object sender, EventArgs e)
        {
            InitialControlContent();
        }

        public void OnBringToFront(object data)
        {
            resume = data as Resume;
            try
            {
                datagvAward.AutoGenerateColumns = false;
                datagvAward.DataSource = service.GetAwards(resume);
                if (datagvAward.DataSource == null) datagvAward.DataSource = new List<Award>();
                activity = service.GetSchoolActivity(resume);
                txboxSchoolActivity.Text = activity == null ? "" : activity.Activity;
                scholarships = service.GetScholarships(resume);
                if (scholarships != null)
                {
                    if (scholarships.Count >= 1)
                    {
                        cmboxType1.Text = scholarships[0].ScholarshipType;
                        cmboxLevel1.Text = scholarships[0].ScholarshipLevel;
                    }
                    if (scholarships.Count >= 2)
                    {
                        cmboxType2.Visible = cmboxLevel2.Visible = linkDeleteSecond.Visible = true;
                        cmboxType2.Text = scholarships[1].ScholarshipType;
                        cmboxLevel2.Text = scholarships[1].ScholarshipLevel;
                    }
                    else
                    {
                        cmboxType2.Visible = cmboxLevel2.Visible = linkDeleteSecond.Visible = false;
                        cmboxType2.Text = cmboxLevel2.Text = "请选择";
                    }
                    if (scholarships.Count >= 3)
                    {
                        cmboxType3.Visible = cmboxLevel3.Visible = linkDeleteThird.Visible = true;
                        cmboxType3.Text = scholarships[2].ScholarshipType;
                        cmboxLevel3.Text = scholarships[2].ScholarshipLevel;
                    }
                    else
                    {
                        cmboxType3.Visible = cmboxLevel3.Visible = linkDeleteThird.Visible = false;
                        cmboxType3.Text = cmboxLevel3.Text = "请选择";
                    }
                }
                else
                {
                    cmboxType1.Text = cmboxLevel1.Text = "请选择";
                    cmboxType2.Text = cmboxLevel2.Text = "请选择";
                    cmboxType3.Text = cmboxLevel3.Text = "请选择";
                    cmboxLevel2.Visible = cmboxType2.Visible = false;
                    cmboxLevel3.Visible = cmboxType3.Visible = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("加载专业技能发生异常：" + ex.Message);
            }
        }

        private void InitialControlContent()
        {
            cmboxAwardLevel.DataSource = new string[] { "请选择", "班组级", "院校级", "县市级", "省区级", "国家级", "国际级" };
            cmboxType1.DataSource = new string[] { "请选择", "国家级", "省市级", "院校级" };
            cmboxType2.DataSource = new string[] { "请选择", "国家级", "省市级", "院校级" };
            cmboxType3.DataSource = new string[] { "请选择", "国家级", "省市级", "院校级" };
            cmboxLevel1.DataSource = new string[] { "请选择", "一等奖", "二等奖", "三等奖" };
            cmboxLevel2.DataSource = new string[] { "请选择", "一等奖", "二等奖", "三等奖" }; 
            cmboxLevel3.DataSource = new string[] { "请选择", "一等奖", "二等奖", "三等奖" };
        }

        private void ResetControlContent()
        {
            txboxAwardName.Text = "";
            txboxDesc.Text = "";
            txboxSchoolActivity.Text = "";
            award = null;
        }

        #region 界面逻辑
        private void linkDeleteSecond_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (cmboxType3.Visible)
            {
                cmboxType2.Text = cmboxType3.Text;
                cmboxLevel2.Text = cmboxLevel3.Text;
                linkDeleteThird_LinkClicked(this, null);
            }
            else
            {
                cmboxType2.Text = cmboxLevel2.Text = "请选择"; 
                cmboxType2.Visible = cmboxLevel2.Visible = linkDeleteSecond.Visible = false;
            }
        }

        private void linkDeleteThird_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            cmboxType3.Text = cmboxLevel3.Text = "请选择"; 
            cmboxType3.Visible = cmboxLevel3.Visible = linkDeleteThird.Visible = false;
        }

        private void linkAddScholarship_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (cmboxType2.Visible) cmboxType3.Visible = cmboxLevel3.Visible = linkDeleteThird.Visible = true;
            else cmboxType2.Visible = cmboxLevel2.Visible = linkDeleteSecond.Visible = true;
        }

        #endregion

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (!Save()) return;
            ResetControlContent();
        }

        private bool Save()
        {
            if (string.IsNullOrWhiteSpace(txboxAwardName.Text)) { MessageBox.Show("请填写奖项名称"); return false; }
            if (cmboxAwardLevel.Text == "请选择") { MessageBox.Show("请选择奖项级别"); return false; }
            try
            {
                List<Award> lsa = datagvAward.DataSource as List<Award>;
                datagvAward.DataSource = null;
                if (award == null)
                {
                    award = new Award(
                            null,
                            resume.Id,
                            txboxAwardName.Text,
                            cmboxAwardLevel.Text,
                            datetpGetDate.Value,
                            txboxDesc.Text,
                            lsa.Count + 1);
                    lsa.Add(award);
                }
                else
                {
                    award.AwardName = txboxAwardName.Text;
                    award.AwardDesc = txboxDesc.Text;
                    award.AwardGetDate = datetpGetDate.Value;
                    award.AwardLevel = cmboxAwardLevel.Text;
                }
                service.AddOrUpdate(award);
                datagvAward.DataSource = lsa;
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存专业技能时出错：" + ex.Message);
                return false;
            }
        }

        private void datagvAward_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (datagvAward.Columns[e.ColumnIndex].HeaderText == "删除")
            {
                if (MessageBox.Show("将直接删除数据信息且不可恢复，确定删除？", "删除?", MessageBoxButtons.YesNo)
                        == DialogResult.Yes)
                {
                    List<Award> lsa = datagvAward.DataSource as List<Award>;
                    Award award = GetSocialPracticeFromDgv(e.RowIndex);
                    datagvAward.DataSource = null;
                    service.Delete(award);
                    lsa.Remove(award);
                    datagvAward.DataSource = lsa;
                }
            }
            if (datagvAward.Columns[e.ColumnIndex].HeaderText == "编辑")
            {
                award = GetSocialPracticeFromDgv(e.RowIndex);
                txboxAwardName.Text = award.AwardName;
                txboxDesc.Text = award.AwardDesc;
                datetpGetDate.Value = award.AwardGetDate.Value;
                cmboxAwardLevel.Text = award.AwardLevel;
            }
        }

        private void btnSaveAndNext_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(txboxSchoolActivity.Text))
                {
                    if (activity == null) activity = new SchoolActivity(null, resume.Id, txboxSchoolActivity.Text);
                    service.AddOrUpdateSchoolActivity(activity);
                }
                List<Scholarship> lss = new List<Scholarship>();

                if (cmboxType1.Text != "请选择" && cmboxLevel1.Text != "请选择")
                {
                    lss.Add(new Scholarship(null, resume.Id, cmboxType1.Text, cmboxLevel1.Text));
                }
                if (cmboxType2.Visible && cmboxType2.Text != "请选择" && cmboxLevel2.Text != "请选择")
                {
                    lss.Add(new Scholarship(null, resume.Id, cmboxType2.Text, cmboxLevel2.Text));
                }
                if (cmboxType3.Visible && cmboxType3.Text != "请选择" && cmboxLevel3.Text != "请选择")
                {
                    lss.Add(new Scholarship(null, resume.Id, cmboxType3.Text, cmboxLevel3.Text));
                }
                if (lss.Count != 0)
                {
                    service.UpdateScholarships(resume, lss);
                }
                // NEXT PAGE
                (this.Owner as FormDetails).NextPage();
            }
            catch (Exception ex)
            {

            }
        }

        /// <summary>
        /// 从DataGridView中根据行号获取社会实践
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private Award GetSocialPracticeFromDgv(int rowIndex)
        {
            var result = from award in (datagvAward.DataSource as List<Award>)
                         where award.Id == datagvAward["id", rowIndex].Value.ToString()
                         select award;
            return result.First();
        }
    }
}
