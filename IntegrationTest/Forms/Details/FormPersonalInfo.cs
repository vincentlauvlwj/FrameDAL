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
    /// <summary>
    /// Author: Vincent Lau.
    /// 个人信息界面
    /// </summary>
    public partial class FormPersonalInfo : Form, IRefreshable
    {
        private Resume resume;
        private PersonInfo personInfo;
        private PersonalInfoService personInfoService = new PersonalInfoService();

        public FormPersonalInfo()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 窗口加载，初始化界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormPersonalInfo_Load(object sender, EventArgs e)
        {
            try
            {
                ControlHelper.BindAreaToCmb(cmbBornProvince, cmbBornCity, cmbBornCounty);
                ControlHelper.BindAreaToCmb(cmbLivingProvince, cmbLivingCity, cmbLivingCounty);
                cmbIdentityType.DataSource = personInfoService.GetIdentityTypes();
            }
            catch (Exception ex)
            {
                MessageBox.Show("初始化界面发生异常：" + ex.Message);
            }
        }

        /// <summary>
        /// 进入个人信息界面，获取所编辑的简历，加载内容
        /// </summary>
        /// <param name="data"></param>
        public void OnBringToFront(object data)
        {
            try
            {
                resume = data as Resume;
                personInfo = personInfoService.GetPersonInfo(resume);
                if (personInfo == null)
                {
                    personInfo = new PersonInfo();
                    personInfo.ResumeId = resume.Id;
                }

                textName.Text = personInfo.PersonName;
                (personInfo.IsMale ? radioMale : radioFemale).Checked = true;
                dtpBirthday.Value = personInfo.PersonBirthday == null ? DateTime.Now : personInfo.PersonBirthday.Value;
                dtpWorkDate.Value = personInfo.PersonWorkdate == null ? DateTime.Now : personInfo.PersonWorkdate.Value;
                ControlHelper.SetAreaToCmb(cmbBornProvince, cmbBornCity, cmbBornCounty, personInfo.PersonBornArea);
                ControlHelper.SetAreaToCmb(cmbLivingProvince, cmbLivingCity, cmbLivingCounty, personInfo.PersonLivingArea);
                textTel.Text = personInfo.PersonTel;
                textEmail.Text = personInfo.PersonEmail;
                textQQ.Text = personInfo.PersonQq;
                SetMarriageStatus(personInfo.PersonMarriage);
                cmbIdentityType.Text = personInfo.PersonIdentityType;
                textIdentityCode.Text = personInfo.PersonIdentityCode;
                (personInfo.HasBeenAbroad ? radioAbroad : radioNoAbrod).Checked = true;
                SetPoliticalStatus(personInfo.PersonParty);
                pictureBox.Image = personInfo.PersonAvatar;
            }
            catch (Exception e)
            {
                MessageBox.Show("加载个人信息发生异常：" + e.Message);
            }
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(textName.Text)) throw new Exception("请填写姓名！");
                if (string.IsNullOrWhiteSpace(textTel.Text)) throw new Exception("请填写联系方式！");
                if (string.IsNullOrWhiteSpace(textEmail.Text)) throw new Exception("请填写电子邮箱！");
                personInfo.PersonName = textName.Text;
                personInfo.IsMale = radioMale.Checked;
                personInfo.PersonBirthday = dtpBirthday.Value;
                personInfo.PersonWorkdate = dtpWorkDate.Value;
                personInfo.PersonBornArea = cmbBornCounty.SelectedValue as string;
                personInfo.PersonLivingArea = cmbLivingCounty.SelectedValue as string;
                personInfo.PersonTel = textTel.Text;
                personInfo.PersonEmail = textEmail.Text;
                personInfo.PersonQq = textQQ.Text;
                personInfo.PersonMarriage = GetMarriageStatus();
                personInfo.PersonIdentityType = cmbIdentityType.Text;
                personInfo.PersonIdentityCode = textIdentityCode.Text;
                personInfo.HasBeenAbroad = radioAbroad.Checked;
                personInfo.PersonParty = GetPoliticalStatus();
                personInfo.PersonAvatar = pictureBox.Image;

                personInfoService.AddOrUpdate(personInfo);
                (this.Owner as FormDetails).NextPage();
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存个人信息发生异常：" + ex.Message);
            }
        }

        /// <summary>
        /// 从界面获取婚姻状态
        /// </summary>
        /// <returns></returns>
        private string GetMarriageStatus()
        {
            if (radioNotMarried.Checked)
            {
                return "未婚";
            }
            else if(radioMarried.Checked)
            {
                return "已婚";
            }
            else
            {
                return "离异";
            }
        }

        /// <summary>
        /// 设置界面的婚姻状态
        /// </summary>
        /// <param name="status"></param>
        private void SetMarriageStatus(string status)
        {
            switch (status)
            { 
                case "未婚":
                    radioNotMarried.Checked = true;
                    break;
                case "已婚":
                    radioMarried.Checked = true;
                    break;
                case "离异":
                    radioDivorced.Checked = true;
                    break;
                default:
                    goto case "未婚";
            }
        }

        /// <summary>
        /// 从界面获取政治面貌
        /// </summary>
        /// <returns></returns>
        private string GetPoliticalStatus()
        {
            if (radioParty.Checked)
            {
                return "中共党员";
            }
            else if (radioLeague.Checked)
            {
                return "团员";
            }
            else if (radioPeople.Checked)
            {
                return "群众";
            }
            else if (radioOtherParty.Checked)
            {
                return "民主党派";
            }
            else
            {
                return "无党派人士";
            }
        }

        /// <summary>
        /// 设置界面上的政治面貌
        /// </summary>
        /// <param name="status"></param>
        private void SetPoliticalStatus(string status)
        {
            switch (status)
            { 
                case "中共党员":
                    radioParty.Checked = true;
                    break;
                case "团员":
                    radioLeague.Checked = true;
                    break;
                case "群众":
                    radioPeople.Checked = true;
                    break;
                case "民主党派":
                    radioOtherParty.Checked = true;
                    break;
                case "无党派人士":
                    radioWithoutParty.Checked = true;
                    break;
                default:
                    goto case "群众";
            }
        }

        /// <summary>
        /// 返回主界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void linkBack_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            (this.Owner as FormDetails).BackToMain();
        }

        /// <summary>
        /// 选择头像按钮点击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSelectAvatar_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFile = new OpenFileDialog();
            openFile.Filter = "图片文件|*.jpg;*.jpeg,*.png";
            if (openFile.ShowDialog() == DialogResult.OK)
            {
                pictureBox.Image = Image.FromFile(openFile.FileName);
            }
        }
    }
}
