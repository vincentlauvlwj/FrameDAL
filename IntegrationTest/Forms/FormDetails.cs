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

namespace ResumeFactory.Forms
{
    /// <summary>
    /// 编辑简历窗口
    /// </summary>
    public partial class FormDetails : Form, IRefreshable
    {
        private Resume resume;

        private PersonalInfoService personInfoService = new PersonalInfoService();
        private ExpectationService expectService = new ExpectationService();
        private WorkExperienceService workExpService = new WorkExperienceService();
        private EduBackgroundService eduBgdService = new EduBackgroundService();
        private TrainExpService trainExpService = new TrainExpService();
        private LanguageSkillService langSkillService = new LanguageSkillService();
        private CertificateService certificateService = new CertificateService();
        private CoverLetterService coverLetterService = new CoverLetterService();
        private ProjectExperienceService projectExpService = new ProjectExperienceService();
        private ProfessionalSkillsService professionalSkillService = new ProfessionalSkillsService();
        private LearningSituationService learningSituationService = new LearningSituationService();
        private SocialPracticeService socialPracticeService = new SocialPracticeService();
        private SelfEvaluationService selfEvaluationService = new SelfEvaluationService();
        private OtherInfoService otherInfoService = new OtherInfoService();

        public FormDetails()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 进入编辑简历窗口，获取所编辑的简历
        /// </summary>
        /// <param name="data"></param>
        public void OnBringToFront(object data)
        {
            this.resume = data as Resume;
            resumeItemPanel_Selected(panelPersonInfo, null);
        }

        /// <summary>
        /// 左侧选项卡点击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void resumeItemPanel_Selected(object sender, EventArgs e)
        {
            foreach (Control ctrl in splitContainer.Panel1.Controls)
            {
                if (ctrl is ResumeItemPanel)
                {
                    (ctrl as ResumeItemPanel).BackColor = Color.Transparent;
                }
            }
            ResumeItemPanel item = sender as ResumeItemPanel;
            item.BackColor = Color.Silver;
            try
            {
                string formClassName = "ResumeFactory.Forms.Details." + item.Tag.ToString();
                this.OpenChildForm(splitContainer.Panel2, Type.GetType(formClassName, true), resume);
            }
            catch (Exception ex)
            {
                MessageBox.Show("打开右侧窗口失败：" + ex.Message);
            }
            RefreshIcon();
        }

        /// <summary>
        /// 刷新完成状态图标
        /// </summary>
        public void RefreshIcon()
        {
            panelPersonInfo.FinishStatus = personInfoService.GetFinishStatus(resume);
            panelExpect.FinishStatus = expectService.GetFinishStatus(resume);
            panelWorkExp.FinishStatus = workExpService.GetFinishStatus(resume);
            panelEduBackground.FinishStatus = eduBgdService.GetFinishStatus(resume);
            panelTrainExp.FinishStatus = trainExpService.GetFinishStatus(resume);
            panelLanguageSkill.FinishStatus = langSkillService.GetFinishStatus(resume);
            panelCertificate.FinishStatus = certificateService.GetFinishStatus(resume);
            panelCoverLetter.FinishStatus = coverLetterService.GetFinishStatus(resume);
            panelProjectExp.FinishStatus = projectExpService.GetFinishStatus(resume);
            panelProfessionalSkill.FinishStatus = professionalSkillService.GetFinishStatus(resume);
            panelLearningSituation.FinishStatus = learningSituationService.GetFinishStatus(resume);
            panelSocialPractice.FinishStatus = socialPracticeService.GetFinishStatus(resume);
            panelSelfEvaluation.FinishStatus = selfEvaluationService.GetFinishStatus(resume);
            panelOtherInfo.FinishStatus = otherInfoService.GetFinishStatus(resume);
        }

        /// <summary>
        /// Author: Vincent Lau
        /// 跳到下一个子窗口，在简历填写子窗口的调用示例如下：
        /// 
        ///     (this.Owner as FormDetails).NextPage();
        /// </summary>
        public void NextPage()
        {
            Control.ControlCollection controls = this.splitContainer.Panel1.Controls;
            ResumeItemPanel prev = null;
            for (int i = 0; i < controls.Count; i++)
            {
                ResumeItemPanel curr = controls[i] as ResumeItemPanel;
                if (curr == null) continue;
                if (curr.BackColor == Color.Silver) break;
                prev = curr;
            }
            if (prev == null)
            {
                BackToMain();
            }
            else
            {
                this.resumeItemPanel_Selected(prev, null);
            }
        }

        /// <summary>
        /// Author: Vincent Lau
        /// 返回主界面，在简历填写子窗口的调用示例如下：
        /// 
        ///     (this.Owner as FormDetails).BackToMain();
        /// </summary>
        public void BackToMain()
        {
            FormMain formMain = this.Owner as FormMain;
            formMain.OpenChildForm(formMain.hostPanel, typeof(FormMine), "fromDetailsForm");
        }
    }
}
