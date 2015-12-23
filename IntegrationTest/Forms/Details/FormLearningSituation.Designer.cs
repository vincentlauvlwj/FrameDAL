namespace ResumeFactory.Forms.Details
{
    partial class FormLearningSituation
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.datagvAward = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resume_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.award_name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.award_level = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.award_get_date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.award_desc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnAdd = new System.Windows.Forms.Button();
            this.linkAddScholarship = new System.Windows.Forms.LinkLabel();
            this.btnSaveAndNext = new System.Windows.Forms.Button();
            this.linkDeleteThird = new System.Windows.Forms.LinkLabel();
            this.linkDeleteSecond = new System.Windows.Forms.LinkLabel();
            this.cmboxLevel3 = new System.Windows.Forms.ComboBox();
            this.cmboxType3 = new System.Windows.Forms.ComboBox();
            this.cmboxLevel2 = new System.Windows.Forms.ComboBox();
            this.cmboxType2 = new System.Windows.Forms.ComboBox();
            this.cmboxLevel1 = new System.Windows.Forms.ComboBox();
            this.cmboxType1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txboxSchoolActivity = new System.Windows.Forms.RichTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txboxDesc = new System.Windows.Forms.RichTextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.datetpGetDate = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.cmboxAwardLevel = new System.Windows.Forms.ComboBox();
            this.txboxAwardName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datagvAward)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.datagvAward);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(732, 121);
            this.panel1.TabIndex = 0;
            // 
            // datagvAward
            // 
            this.datagvAward.AllowUserToAddRows = false;
            this.datagvAward.AllowUserToDeleteRows = false;
            this.datagvAward.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.datagvAward.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.datagvAward.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datagvAward.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.resume_id,
            this.award_name,
            this.award_level,
            this.award_get_date,
            this.award_desc,
            this.Column2,
            this.Column1});
            this.datagvAward.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagvAward.Location = new System.Drawing.Point(0, 0);
            this.datagvAward.Name = "datagvAward";
            this.datagvAward.ReadOnly = true;
            this.datagvAward.RowTemplate.Height = 23;
            this.datagvAward.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.datagvAward.Size = new System.Drawing.Size(732, 121);
            this.datagvAward.TabIndex = 0;
            this.datagvAward.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.datagvAward_CellContentClick);
            // 
            // id
            // 
            this.id.DataPropertyName = "Id";
            this.id.HeaderText = "编号";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // resume_id
            // 
            this.resume_id.DataPropertyName = "ResumeId";
            this.resume_id.HeaderText = "模板编号";
            this.resume_id.Name = "resume_id";
            this.resume_id.ReadOnly = true;
            this.resume_id.Visible = false;
            // 
            // award_name
            // 
            this.award_name.DataPropertyName = "AwardName";
            this.award_name.HeaderText = "奖项名称";
            this.award_name.Name = "award_name";
            this.award_name.ReadOnly = true;
            // 
            // award_level
            // 
            this.award_level.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.award_level.DataPropertyName = "AwardLevel";
            this.award_level.HeaderText = "级别";
            this.award_level.Name = "award_level";
            this.award_level.ReadOnly = true;
            this.award_level.Width = 150;
            // 
            // award_get_date
            // 
            this.award_get_date.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.award_get_date.DataPropertyName = "AwardGetDate";
            this.award_get_date.HeaderText = "获得时间";
            this.award_get_date.Name = "award_get_date";
            this.award_get_date.ReadOnly = true;
            this.award_get_date.Width = 140;
            // 
            // award_desc
            // 
            this.award_desc.DataPropertyName = "AwardDesc";
            this.award_desc.HeaderText = "描述";
            this.award_desc.Name = "award_desc";
            this.award_desc.ReadOnly = true;
            this.award_desc.Visible = false;
            // 
            // Column2
            // 
            this.Column2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column2.HeaderText = "编辑";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Text = "编辑";
            this.Column2.ToolTipText = "编辑";
            this.Column2.UseColumnTextForLinkValue = true;
            this.Column2.Width = 80;
            // 
            // Column1
            // 
            this.Column1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column1.HeaderText = "删除";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Text = "删除";
            this.Column1.UseColumnTextForLinkValue = true;
            this.Column1.Width = 80;
            // 
            // panel2
            // 
            this.panel2.AutoScroll = true;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.btnAdd);
            this.panel2.Controls.Add(this.linkAddScholarship);
            this.panel2.Controls.Add(this.btnSaveAndNext);
            this.panel2.Controls.Add(this.linkDeleteThird);
            this.panel2.Controls.Add(this.linkDeleteSecond);
            this.panel2.Controls.Add(this.cmboxLevel3);
            this.panel2.Controls.Add(this.cmboxType3);
            this.panel2.Controls.Add(this.cmboxLevel2);
            this.panel2.Controls.Add(this.cmboxType2);
            this.panel2.Controls.Add(this.cmboxLevel1);
            this.panel2.Controls.Add(this.cmboxType1);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.txboxSchoolActivity);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.txboxDesc);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.datetpGetDate);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.cmboxAwardLevel);
            this.panel2.Controls.Add(this.txboxAwardName);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 121);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(732, 365);
            this.panel2.TabIndex = 1;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(126, 137);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(81, 25);
            this.btnAdd.TabIndex = 43;
            this.btnAdd.Text = "添加";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // linkAddScholarship
            // 
            this.linkAddScholarship.AutoSize = true;
            this.linkAddScholarship.Location = new System.Drawing.Point(380, 264);
            this.linkAddScholarship.Name = "linkAddScholarship";
            this.linkAddScholarship.Size = new System.Drawing.Size(92, 17);
            this.linkAddScholarship.TabIndex = 39;
            this.linkAddScholarship.TabStop = true;
            this.linkAddScholarship.Text = "添加更多奖学金";
            this.linkAddScholarship.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkAddScholarship_LinkClicked);
            // 
            // btnSaveAndNext
            // 
            this.btnSaveAndNext.Location = new System.Drawing.Point(500, 323);
            this.btnSaveAndNext.Name = "btnSaveAndNext";
            this.btnSaveAndNext.Size = new System.Drawing.Size(164, 25);
            this.btnSaveAndNext.TabIndex = 38;
            this.btnSaveAndNext.Text = "保存并转到下一页";
            this.btnSaveAndNext.UseVisualStyleBackColor = true;
            this.btnSaveAndNext.Click += new System.EventHandler(this.btnSaveAndNext_Click);
            // 
            // linkDeleteThird
            // 
            this.linkDeleteThird.AutoSize = true;
            this.linkDeleteThird.Location = new System.Drawing.Point(380, 326);
            this.linkDeleteThird.Name = "linkDeleteThird";
            this.linkDeleteThird.Size = new System.Drawing.Size(32, 17);
            this.linkDeleteThird.TabIndex = 37;
            this.linkDeleteThird.TabStop = true;
            this.linkDeleteThird.Text = "删除";
            this.linkDeleteThird.Visible = false;
            this.linkDeleteThird.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkDeleteThird_LinkClicked);
            // 
            // linkDeleteSecond
            // 
            this.linkDeleteSecond.AutoSize = true;
            this.linkDeleteSecond.Location = new System.Drawing.Point(380, 295);
            this.linkDeleteSecond.Name = "linkDeleteSecond";
            this.linkDeleteSecond.Size = new System.Drawing.Size(32, 17);
            this.linkDeleteSecond.TabIndex = 36;
            this.linkDeleteSecond.TabStop = true;
            this.linkDeleteSecond.Text = "删除";
            this.linkDeleteSecond.Visible = false;
            this.linkDeleteSecond.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkDeleteSecond_LinkClicked);
            // 
            // cmboxLevel3
            // 
            this.cmboxLevel3.FormattingEnabled = true;
            this.cmboxLevel3.Location = new System.Drawing.Point(253, 323);
            this.cmboxLevel3.Name = "cmboxLevel3";
            this.cmboxLevel3.Size = new System.Drawing.Size(121, 25);
            this.cmboxLevel3.TabIndex = 35;
            this.cmboxLevel3.Visible = false;
            // 
            // cmboxType3
            // 
            this.cmboxType3.FormattingEnabled = true;
            this.cmboxType3.Location = new System.Drawing.Point(126, 323);
            this.cmboxType3.Name = "cmboxType3";
            this.cmboxType3.Size = new System.Drawing.Size(121, 25);
            this.cmboxType3.TabIndex = 34;
            this.cmboxType3.Visible = false;
            // 
            // cmboxLevel2
            // 
            this.cmboxLevel2.FormattingEnabled = true;
            this.cmboxLevel2.Location = new System.Drawing.Point(253, 292);
            this.cmboxLevel2.Name = "cmboxLevel2";
            this.cmboxLevel2.Size = new System.Drawing.Size(121, 25);
            this.cmboxLevel2.TabIndex = 33;
            this.cmboxLevel2.Visible = false;
            // 
            // cmboxType2
            // 
            this.cmboxType2.FormattingEnabled = true;
            this.cmboxType2.Location = new System.Drawing.Point(126, 292);
            this.cmboxType2.Name = "cmboxType2";
            this.cmboxType2.Size = new System.Drawing.Size(121, 25);
            this.cmboxType2.TabIndex = 32;
            this.cmboxType2.Visible = false;
            // 
            // cmboxLevel1
            // 
            this.cmboxLevel1.FormattingEnabled = true;
            this.cmboxLevel1.Location = new System.Drawing.Point(253, 261);
            this.cmboxLevel1.Name = "cmboxLevel1";
            this.cmboxLevel1.Size = new System.Drawing.Size(121, 25);
            this.cmboxLevel1.TabIndex = 31;
            // 
            // cmboxType1
            // 
            this.cmboxType1.FormattingEnabled = true;
            this.cmboxType1.Location = new System.Drawing.Point(126, 261);
            this.cmboxType1.Name = "cmboxType1";
            this.cmboxType1.Size = new System.Drawing.Size(121, 25);
            this.cmboxType1.TabIndex = 30;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 264);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 17);
            this.label1.TabIndex = 29;
            this.label1.Text = "曾获奖学金级别";
            // 
            // txboxSchoolActivity
            // 
            this.txboxSchoolActivity.Location = new System.Drawing.Point(126, 168);
            this.txboxSchoolActivity.Name = "txboxSchoolActivity";
            this.txboxSchoolActivity.Size = new System.Drawing.Size(538, 87);
            this.txboxSchoolActivity.TabIndex = 26;
            this.txboxSchoolActivity.Text = "";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 171);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(109, 17);
            this.label2.TabIndex = 25;
            this.label2.Text = "校内活动/职务描述";
            // 
            // txboxDesc
            // 
            this.txboxDesc.Location = new System.Drawing.Point(126, 68);
            this.txboxDesc.Name = "txboxDesc";
            this.txboxDesc.Size = new System.Drawing.Size(538, 65);
            this.txboxDesc.TabIndex = 18;
            this.txboxDesc.Text = "";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(88, 71);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(32, 17);
            this.label6.TabIndex = 24;
            this.label6.Text = "描述";
            // 
            // datetpGetDate
            // 
            this.datetpGetDate.Location = new System.Drawing.Point(126, 38);
            this.datetpGetDate.Name = "datetpGetDate";
            this.datetpGetDate.Size = new System.Drawing.Size(121, 23);
            this.datetpGetDate.TabIndex = 23;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(64, 43);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 17);
            this.label5.TabIndex = 22;
            this.label5.Text = "获得时间";
            // 
            // cmboxAwardLevel
            // 
            this.cmboxAwardLevel.FormattingEnabled = true;
            this.cmboxAwardLevel.Location = new System.Drawing.Point(359, 10);
            this.cmboxAwardLevel.Name = "cmboxAwardLevel";
            this.cmboxAwardLevel.Size = new System.Drawing.Size(121, 25);
            this.cmboxAwardLevel.TabIndex = 20;
            // 
            // txboxAwardName
            // 
            this.txboxAwardName.Location = new System.Drawing.Point(126, 10);
            this.txboxAwardName.Name = "txboxAwardName";
            this.txboxAwardName.Size = new System.Drawing.Size(227, 23);
            this.txboxAwardName.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(64, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 17);
            this.label4.TabIndex = 19;
            this.label4.Text = "获得奖项";
            // 
            // FormLearningSituation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(732, 486);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormLearningSituation";
            this.Text = "FormLearningSituation";
            this.Load += new System.EventHandler(this.FormLearningSituation_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.datagvAward)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.LinkLabel linkDeleteThird;
        private System.Windows.Forms.LinkLabel linkDeleteSecond;
        private System.Windows.Forms.ComboBox cmboxLevel3;
        private System.Windows.Forms.ComboBox cmboxType3;
        private System.Windows.Forms.ComboBox cmboxLevel2;
        private System.Windows.Forms.ComboBox cmboxType2;
        private System.Windows.Forms.ComboBox cmboxLevel1;
        private System.Windows.Forms.ComboBox cmboxType1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox txboxSchoolActivity;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RichTextBox txboxDesc;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DateTimePicker datetpGetDate;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmboxAwardLevel;
        private System.Windows.Forms.TextBox txboxAwardName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnSaveAndNext;
        private System.Windows.Forms.LinkLabel linkAddScholarship;
        private System.Windows.Forms.DataGridView datagvAward;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resume_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn award_name;
        private System.Windows.Forms.DataGridViewTextBoxColumn award_level;
        private System.Windows.Forms.DataGridViewTextBoxColumn award_get_date;
        private System.Windows.Forms.DataGridViewTextBoxColumn award_desc;
        private System.Windows.Forms.DataGridViewLinkColumn Column2;
        private System.Windows.Forms.DataGridViewLinkColumn Column1;

    }
}