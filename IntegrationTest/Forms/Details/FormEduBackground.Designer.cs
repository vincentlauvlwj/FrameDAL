namespace ResumeFactory.Forms.Details
{
    partial class FormEduBackground
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnSave = new System.Windows.Forms.Button();
            this.linkBack = new System.Windows.Forms.LinkLabel();
            this.btnSaveAndNew = new System.Windows.Forms.Button();
            this.cbDegree = new System.Windows.Forms.ComboBox();
            this.tbMajorName = new System.Windows.Forms.TextBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.rbIsTzY = new System.Windows.Forms.RadioButton();
            this.rbIsTzN = new System.Windows.Forms.RadioButton();
            this.tbSchoolName = new System.Windows.Forms.TextBox();
            this.dtpEndDate = new System.Windows.Forms.DateTimePicker();
            this.label7 = new System.Windows.Forms.Label();
            this.dtpStartDate = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dgvEduBgdList = new System.Windows.Forms.DataGridView();
            this.SchoolName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Time = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Degree = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resumeId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.startDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.endDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unifiedEnrollment = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEduBgdList)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 179);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(762, 304);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增教育背景（*为必填项）";
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.linkBack);
            this.panel1.Controls.Add(this.btnSaveAndNew);
            this.panel1.Controls.Add(this.cbDegree);
            this.panel1.Controls.Add(this.tbMajorName);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.tbSchoolName);
            this.panel1.Controls.Add(this.dtpEndDate);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.dtpStartDate);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(756, 282);
            this.panel1.TabIndex = 0;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(337, 197);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(97, 33);
            this.btnSave.TabIndex = 44;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // linkBack
            // 
            this.linkBack.AutoSize = true;
            this.linkBack.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.linkBack.Location = new System.Drawing.Point(477, 201);
            this.linkBack.Name = "linkBack";
            this.linkBack.Size = new System.Drawing.Size(42, 21);
            this.linkBack.TabIndex = 43;
            this.linkBack.TabStop = true;
            this.linkBack.Text = "返回";
            this.linkBack.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkBack_LinkClicked);
            // 
            // btnSaveAndNew
            // 
            this.btnSaveAndNew.Location = new System.Drawing.Point(154, 197);
            this.btnSaveAndNew.Name = "btnSaveAndNew";
            this.btnSaveAndNew.Size = new System.Drawing.Size(141, 33);
            this.btnSaveAndNew.TabIndex = 42;
            this.btnSaveAndNew.Text = "保存并新增教育背景";
            this.btnSaveAndNew.UseVisualStyleBackColor = true;
            this.btnSaveAndNew.Click += new System.EventHandler(this.btnSaveAndNew_Click);
            // 
            // cbDegree
            // 
            this.cbDegree.FormattingEnabled = true;
            this.cbDegree.Items.AddRange(new object[] {
            "初中",
            "中技",
            "高中",
            "中专",
            "大专",
            "本科",
            "硕士",
            "MBA",
            "EMBA",
            "博士",
            "其他"});
            this.cbDegree.Location = new System.Drawing.Point(161, 144);
            this.cbDegree.Name = "cbDegree";
            this.cbDegree.Size = new System.Drawing.Size(116, 25);
            this.cbDegree.TabIndex = 41;
            // 
            // tbMajorName
            // 
            this.tbMajorName.Location = new System.Drawing.Point(161, 116);
            this.tbMajorName.Name = "tbMajorName";
            this.tbMajorName.Size = new System.Drawing.Size(315, 23);
            this.tbMajorName.TabIndex = 40;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Controls.Add(this.rbIsTzY);
            this.panel2.Controls.Add(this.rbIsTzN);
            this.panel2.Location = new System.Drawing.Point(161, 86);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(129, 24);
            this.panel2.TabIndex = 39;
            // 
            // rbIsTzY
            // 
            this.rbIsTzY.AutoSize = true;
            this.rbIsTzY.Checked = true;
            this.rbIsTzY.Location = new System.Drawing.Point(3, 0);
            this.rbIsTzY.Name = "rbIsTzY";
            this.rbIsTzY.Size = new System.Drawing.Size(38, 21);
            this.rbIsTzY.TabIndex = 11;
            this.rbIsTzY.TabStop = true;
            this.rbIsTzY.Text = "是";
            this.rbIsTzY.UseVisualStyleBackColor = true;
            // 
            // rbIsTzN
            // 
            this.rbIsTzN.AutoSize = true;
            this.rbIsTzN.Location = new System.Drawing.Point(72, 0);
            this.rbIsTzN.Name = "rbIsTzN";
            this.rbIsTzN.Size = new System.Drawing.Size(38, 21);
            this.rbIsTzN.TabIndex = 12;
            this.rbIsTzN.TabStop = true;
            this.rbIsTzN.Text = "否";
            this.rbIsTzN.UseVisualStyleBackColor = true;
            // 
            // tbSchoolName
            // 
            this.tbSchoolName.Location = new System.Drawing.Point(161, 57);
            this.tbSchoolName.Name = "tbSchoolName";
            this.tbSchoolName.Size = new System.Drawing.Size(315, 23);
            this.tbSchoolName.TabIndex = 38;
            // 
            // dtpEndDate
            // 
            this.dtpEndDate.Location = new System.Drawing.Point(337, 23);
            this.dtpEndDate.Name = "dtpEndDate";
            this.dtpEndDate.Size = new System.Drawing.Size(123, 23);
            this.dtpEndDate.TabIndex = 37;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(302, 23);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(20, 17);
            this.label7.TabIndex = 36;
            this.label7.Text = "至";
            // 
            // dtpStartDate
            // 
            this.dtpStartDate.Location = new System.Drawing.Point(161, 23);
            this.dtpStartDate.Name = "dtpStartDate";
            this.dtpStartDate.Size = new System.Drawing.Size(126, 23);
            this.dtpStartDate.TabIndex = 35;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(28, 147);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 17);
            this.label6.TabIndex = 34;
            this.label6.Text = "*学历/学位";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(28, 119);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(61, 17);
            this.label5.TabIndex = 33;
            this.label5.Text = "*专业名称";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(28, 88);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 17);
            this.label4.TabIndex = 32;
            this.label4.Text = "*是否统招";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(28, 60);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 31;
            this.label3.Text = "*学校名称";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(28, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 17);
            this.label2.TabIndex = 30;
            this.label2.Text = "*时间";
            // 
            // dgvEduBgdList
            // 
            this.dgvEduBgdList.AllowUserToAddRows = false;
            this.dgvEduBgdList.AllowUserToDeleteRows = false;
            this.dgvEduBgdList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvEduBgdList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEduBgdList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.SchoolName,
            this.Time,
            this.Degree,
            this.Edit,
            this.Delete,
            this.Id,
            this.resumeId,
            this.startDate,
            this.endDate,
            this.unifiedEnrollment});
            this.dgvEduBgdList.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvEduBgdList.Location = new System.Drawing.Point(0, 29);
            this.dgvEduBgdList.Name = "dgvEduBgdList";
            this.dgvEduBgdList.ReadOnly = true;
            this.dgvEduBgdList.RowTemplate.Height = 23;
            this.dgvEduBgdList.Size = new System.Drawing.Size(762, 150);
            this.dgvEduBgdList.TabIndex = 2;
            this.dgvEduBgdList.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEduBgdList_CellContentClick);
            // 
            // SchoolName
            // 
            this.SchoolName.DataPropertyName = "EduSchoolName";
            this.SchoolName.FillWeight = 136.9962F;
            this.SchoolName.HeaderText = "学校名称";
            this.SchoolName.Name = "SchoolName";
            this.SchoolName.ReadOnly = true;
            // 
            // Time
            // 
            this.Time.DataPropertyName = "EduDate";
            this.Time.FillWeight = 160.1736F;
            this.Time.HeaderText = "时间";
            this.Time.Name = "Time";
            this.Time.ReadOnly = true;
            // 
            // Degree
            // 
            this.Degree.DataPropertyName = "EduDegree";
            this.Degree.FillWeight = 94.13972F;
            this.Degree.HeaderText = "学历/学位";
            this.Degree.Name = "Degree";
            this.Degree.ReadOnly = true;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 57.92902F;
            this.Edit.HeaderText = "";
            this.Edit.Name = "Edit";
            this.Edit.ReadOnly = true;
            this.Edit.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Edit.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Edit.Text = "编辑";
            this.Edit.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.FillWeight = 50.76142F;
            this.Delete.HeaderText = "";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Delete.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Delete.Text = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // Id
            // 
            this.Id.DataPropertyName = "Id";
            this.Id.HeaderText = "教育背景ID";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            // 
            // resumeId
            // 
            this.resumeId.DataPropertyName = "ResumeId";
            this.resumeId.HeaderText = "简历ID";
            this.resumeId.Name = "resumeId";
            this.resumeId.ReadOnly = true;
            this.resumeId.Visible = false;
            // 
            // startDate
            // 
            this.startDate.DataPropertyName = "EduStartDate";
            this.startDate.HeaderText = "开始时间";
            this.startDate.Name = "startDate";
            this.startDate.ReadOnly = true;
            this.startDate.Visible = false;
            // 
            // endDate
            // 
            this.endDate.DataPropertyName = "EduEndDate";
            this.endDate.HeaderText = "结束时间";
            this.endDate.Name = "endDate";
            this.endDate.ReadOnly = true;
            this.endDate.Visible = false;
            // 
            // unifiedEnrollment
            // 
            this.unifiedEnrollment.DataPropertyName = "EduUnifiedEnrollment";
            this.unifiedEnrollment.HeaderText = "是否统招";
            this.unifiedEnrollment.Name = "unifiedEnrollment";
            this.unifiedEnrollment.ReadOnly = true;
            this.unifiedEnrollment.Visible = false;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.label1);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(762, 29);
            this.panel3.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(582, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "请在页面下方\"新增教育经历\"处填写新的教育经历。 要更改或删除某项教育经历，请按\"编辑\"或\"删除\"链接。";
            // 
            // FormEduBackground
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(762, 483);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvEduBgdList);
            this.Controls.Add(this.panel3);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormEduBackground";
            this.Text = "FormEduBackground";
            this.groupBox1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEduBgdList)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvEduBgdList;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.LinkLabel linkBack;
        private System.Windows.Forms.Button btnSaveAndNew;
        private System.Windows.Forms.ComboBox cbDegree;
        private System.Windows.Forms.TextBox tbMajorName;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.RadioButton rbIsTzY;
        private System.Windows.Forms.RadioButton rbIsTzN;
        private System.Windows.Forms.TextBox tbSchoolName;
        private System.Windows.Forms.DateTimePicker dtpEndDate;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dtpStartDate;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn SchoolName;
        private System.Windows.Forms.DataGridViewTextBoxColumn Time;
        private System.Windows.Forms.DataGridViewTextBoxColumn Degree;
        private System.Windows.Forms.DataGridViewLinkColumn Edit;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resumeId;
        private System.Windows.Forms.DataGridViewTextBoxColumn startDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn endDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn unifiedEnrollment;
    }
}