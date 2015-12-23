namespace ResumeFactory.Forms
{
    partial class FormDetails
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.splitContainer = new System.Windows.Forms.SplitContainer();
            this.panelOtherInfo = new ResumeFactory.Common.ResumeItemPanel();
            this.panelSelfEvaluation = new ResumeFactory.Common.ResumeItemPanel();
            this.panelSocialPractice = new ResumeFactory.Common.ResumeItemPanel();
            this.panelLearningSituation = new ResumeFactory.Common.ResumeItemPanel();
            this.panelProfessionalSkill = new ResumeFactory.Common.ResumeItemPanel();
            this.panelProjectExp = new ResumeFactory.Common.ResumeItemPanel();
            this.panelCoverLetter = new ResumeFactory.Common.ResumeItemPanel();
            this.panelCertificate = new ResumeFactory.Common.ResumeItemPanel();
            this.panelLanguageSkill = new ResumeFactory.Common.ResumeItemPanel();
            this.panelTrainExp = new ResumeFactory.Common.ResumeItemPanel();
            this.panelEduBackground = new ResumeFactory.Common.ResumeItemPanel();
            this.panelWorkExp = new ResumeFactory.Common.ResumeItemPanel();
            this.panelExpect = new ResumeFactory.Common.ResumeItemPanel();
            this.panelPersonInfo = new ResumeFactory.Common.ResumeItemPanel();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer)).BeginInit();
            this.splitContainer.Panel1.SuspendLayout();
            this.splitContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer
            // 
            this.splitContainer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer.Location = new System.Drawing.Point(0, 0);
            this.splitContainer.Name = "splitContainer";
            // 
            // splitContainer.Panel1
            // 
            this.splitContainer.Panel1.AutoScroll = true;
            this.splitContainer.Panel1.Controls.Add(this.panelOtherInfo);
            this.splitContainer.Panel1.Controls.Add(this.panelSelfEvaluation);
            this.splitContainer.Panel1.Controls.Add(this.panelSocialPractice);
            this.splitContainer.Panel1.Controls.Add(this.panelLearningSituation);
            this.splitContainer.Panel1.Controls.Add(this.panelProfessionalSkill);
            this.splitContainer.Panel1.Controls.Add(this.panelProjectExp);
            this.splitContainer.Panel1.Controls.Add(this.panelCoverLetter);
            this.splitContainer.Panel1.Controls.Add(this.panelCertificate);
            this.splitContainer.Panel1.Controls.Add(this.panelLanguageSkill);
            this.splitContainer.Panel1.Controls.Add(this.panelTrainExp);
            this.splitContainer.Panel1.Controls.Add(this.panelEduBackground);
            this.splitContainer.Panel1.Controls.Add(this.panelWorkExp);
            this.splitContainer.Panel1.Controls.Add(this.panelExpect);
            this.splitContainer.Panel1.Controls.Add(this.panelPersonInfo);
            this.splitContainer.Size = new System.Drawing.Size(736, 462);
            this.splitContainer.SplitterDistance = 129;
            this.splitContainer.TabIndex = 0;
            // 
            // panelOtherInfo
            // 
            this.panelOtherInfo.BackColor = System.Drawing.Color.Transparent;
            this.panelOtherInfo.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelOtherInfo.FinishStatus = 2;
            this.panelOtherInfo.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelOtherInfo.Location = new System.Drawing.Point(0, 390);
            this.panelOtherInfo.Msg = "其他信息";
            this.panelOtherInfo.Name = "panelOtherInfo";
            this.panelOtherInfo.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelOtherInfo.Size = new System.Drawing.Size(127, 30);
            this.panelOtherInfo.TabIndex = 28;
            this.panelOtherInfo.Tag = "FormOtherInfo";
            this.panelOtherInfo.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelSelfEvaluation
            // 
            this.panelSelfEvaluation.BackColor = System.Drawing.Color.Transparent;
            this.panelSelfEvaluation.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelSelfEvaluation.FinishStatus = 2;
            this.panelSelfEvaluation.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelSelfEvaluation.Location = new System.Drawing.Point(0, 360);
            this.panelSelfEvaluation.Msg = "自我评价";
            this.panelSelfEvaluation.Name = "panelSelfEvaluation";
            this.panelSelfEvaluation.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelSelfEvaluation.Size = new System.Drawing.Size(127, 30);
            this.panelSelfEvaluation.TabIndex = 27;
            this.panelSelfEvaluation.Tag = "FormSelfEvaluation";
            this.panelSelfEvaluation.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelSocialPractice
            // 
            this.panelSocialPractice.BackColor = System.Drawing.Color.Transparent;
            this.panelSocialPractice.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelSocialPractice.FinishStatus = 2;
            this.panelSocialPractice.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelSocialPractice.Location = new System.Drawing.Point(0, 330);
            this.panelSocialPractice.Msg = "社会实践";
            this.panelSocialPractice.Name = "panelSocialPractice";
            this.panelSocialPractice.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelSocialPractice.Size = new System.Drawing.Size(127, 30);
            this.panelSocialPractice.TabIndex = 26;
            this.panelSocialPractice.Tag = "FormSocialPractice";
            this.panelSocialPractice.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelLearningSituation
            // 
            this.panelLearningSituation.BackColor = System.Drawing.Color.Transparent;
            this.panelLearningSituation.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelLearningSituation.FinishStatus = 2;
            this.panelLearningSituation.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelLearningSituation.Location = new System.Drawing.Point(0, 300);
            this.panelLearningSituation.Msg = "学习情况";
            this.panelLearningSituation.Name = "panelLearningSituation";
            this.panelLearningSituation.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelLearningSituation.Size = new System.Drawing.Size(127, 30);
            this.panelLearningSituation.TabIndex = 25;
            this.panelLearningSituation.Tag = "FormLearningSituation";
            this.panelLearningSituation.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelProfessionalSkill
            // 
            this.panelProfessionalSkill.BackColor = System.Drawing.Color.Transparent;
            this.panelProfessionalSkill.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelProfessionalSkill.FinishStatus = 2;
            this.panelProfessionalSkill.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelProfessionalSkill.Location = new System.Drawing.Point(0, 270);
            this.panelProfessionalSkill.Msg = "专业技能";
            this.panelProfessionalSkill.Name = "panelProfessionalSkill";
            this.panelProfessionalSkill.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelProfessionalSkill.Size = new System.Drawing.Size(127, 30);
            this.panelProfessionalSkill.TabIndex = 24;
            this.panelProfessionalSkill.Tag = "FormProfessionalSkills";
            this.panelProfessionalSkill.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelProjectExp
            // 
            this.panelProjectExp.BackColor = System.Drawing.Color.Transparent;
            this.panelProjectExp.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelProjectExp.FinishStatus = 2;
            this.panelProjectExp.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelProjectExp.Location = new System.Drawing.Point(0, 240);
            this.panelProjectExp.Msg = "项目经验";
            this.panelProjectExp.Name = "panelProjectExp";
            this.panelProjectExp.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelProjectExp.Size = new System.Drawing.Size(127, 30);
            this.panelProjectExp.TabIndex = 23;
            this.panelProjectExp.Tag = "FormProjectExperience";
            this.panelProjectExp.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelCoverLetter
            // 
            this.panelCoverLetter.BackColor = System.Drawing.Color.Transparent;
            this.panelCoverLetter.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCoverLetter.FinishStatus = 2;
            this.panelCoverLetter.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelCoverLetter.Location = new System.Drawing.Point(0, 210);
            this.panelCoverLetter.Msg = "求 职  信";
            this.panelCoverLetter.Name = "panelCoverLetter";
            this.panelCoverLetter.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelCoverLetter.Size = new System.Drawing.Size(127, 30);
            this.panelCoverLetter.TabIndex = 22;
            this.panelCoverLetter.Tag = "FormCoverLetter";
            this.panelCoverLetter.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelCertificate
            // 
            this.panelCertificate.BackColor = System.Drawing.Color.Transparent;
            this.panelCertificate.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCertificate.FinishStatus = 2;
            this.panelCertificate.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelCertificate.Location = new System.Drawing.Point(0, 180);
            this.panelCertificate.Msg = "证       书";
            this.panelCertificate.Name = "panelCertificate";
            this.panelCertificate.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelCertificate.Size = new System.Drawing.Size(127, 30);
            this.panelCertificate.TabIndex = 19;
            this.panelCertificate.Tag = "FormCertificate";
            this.panelCertificate.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelLanguageSkill
            // 
            this.panelLanguageSkill.BackColor = System.Drawing.Color.Transparent;
            this.panelLanguageSkill.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelLanguageSkill.FinishStatus = 2;
            this.panelLanguageSkill.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelLanguageSkill.Location = new System.Drawing.Point(0, 150);
            this.panelLanguageSkill.Msg = "语言能力";
            this.panelLanguageSkill.Name = "panelLanguageSkill";
            this.panelLanguageSkill.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelLanguageSkill.Size = new System.Drawing.Size(127, 30);
            this.panelLanguageSkill.TabIndex = 18;
            this.panelLanguageSkill.Tag = "FormLanguageSkill";
            this.panelLanguageSkill.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelTrainExp
            // 
            this.panelTrainExp.BackColor = System.Drawing.Color.Transparent;
            this.panelTrainExp.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTrainExp.FinishStatus = 2;
            this.panelTrainExp.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelTrainExp.Location = new System.Drawing.Point(0, 120);
            this.panelTrainExp.Msg = "培训经历";
            this.panelTrainExp.Name = "panelTrainExp";
            this.panelTrainExp.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelTrainExp.Size = new System.Drawing.Size(127, 30);
            this.panelTrainExp.TabIndex = 17;
            this.panelTrainExp.Tag = "FormTrainExp";
            this.panelTrainExp.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelEduBackground
            // 
            this.panelEduBackground.BackColor = System.Drawing.Color.Transparent;
            this.panelEduBackground.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelEduBackground.FinishStatus = 2;
            this.panelEduBackground.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelEduBackground.Location = new System.Drawing.Point(0, 90);
            this.panelEduBackground.Msg = "教育背景";
            this.panelEduBackground.Name = "panelEduBackground";
            this.panelEduBackground.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelEduBackground.Size = new System.Drawing.Size(127, 30);
            this.panelEduBackground.TabIndex = 16;
            this.panelEduBackground.Tag = "FormEduBackground";
            this.panelEduBackground.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelWorkExp
            // 
            this.panelWorkExp.BackColor = System.Drawing.Color.Transparent;
            this.panelWorkExp.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelWorkExp.FinishStatus = 2;
            this.panelWorkExp.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelWorkExp.Location = new System.Drawing.Point(0, 60);
            this.panelWorkExp.Msg = "工作经验";
            this.panelWorkExp.Name = "panelWorkExp";
            this.panelWorkExp.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelWorkExp.Size = new System.Drawing.Size(127, 30);
            this.panelWorkExp.TabIndex = 15;
            this.panelWorkExp.Tag = "FormWorkExperience";
            this.panelWorkExp.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelExpect
            // 
            this.panelExpect.BackColor = System.Drawing.Color.Transparent;
            this.panelExpect.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelExpect.FinishStatus = 2;
            this.panelExpect.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelExpect.Location = new System.Drawing.Point(0, 30);
            this.panelExpect.Msg = "求职意向";
            this.panelExpect.Name = "panelExpect";
            this.panelExpect.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelExpect.Size = new System.Drawing.Size(127, 30);
            this.panelExpect.TabIndex = 14;
            this.panelExpect.Tag = "FormExpectation";
            this.panelExpect.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // panelPersonInfo
            // 
            this.panelPersonInfo.BackColor = System.Drawing.Color.Transparent;
            this.panelPersonInfo.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelPersonInfo.FinishStatus = 2;
            this.panelPersonInfo.Font = new System.Drawing.Font("微软雅黑", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.panelPersonInfo.Location = new System.Drawing.Point(0, 0);
            this.panelPersonInfo.Msg = "个人信息";
            this.panelPersonInfo.Name = "panelPersonInfo";
            this.panelPersonInfo.Padding = new System.Windows.Forms.Padding(10, 5, 0, 0);
            this.panelPersonInfo.Size = new System.Drawing.Size(127, 30);
            this.panelPersonInfo.TabIndex = 13;
            this.panelPersonInfo.Tag = "FormPersonalInfo";
            this.panelPersonInfo.Selected += new System.EventHandler(this.resumeItemPanel_Selected);
            // 
            // FormDetails
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(736, 462);
            this.Controls.Add(this.splitContainer);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormDetails";
            this.Text = "FormDetails";
            this.splitContainer.Panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer)).EndInit();
            this.splitContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        public Common.ResumeItemPanel panelCertificate;
        public Common.ResumeItemPanel panelLanguageSkill;
        public Common.ResumeItemPanel panelTrainExp;
        public Common.ResumeItemPanel panelEduBackground;
        public Common.ResumeItemPanel panelSelfEvaluation;
        public Common.ResumeItemPanel panelSocialPractice;
        public Common.ResumeItemPanel panelLearningSituation;
        public Common.ResumeItemPanel panelProfessionalSkill;
        public Common.ResumeItemPanel panelProjectExp;
        public Common.ResumeItemPanel panelCoverLetter;
        public Common.ResumeItemPanel panelOtherInfo;
        public Common.ResumeItemPanel panelExpect;
        public Common.ResumeItemPanel panelPersonInfo;
        public Common.ResumeItemPanel panelWorkExp;
        public System.Windows.Forms.SplitContainer splitContainer;
    }
}