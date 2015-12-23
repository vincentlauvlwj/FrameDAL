namespace ResumeFactory.Forms.Details
{
    partial class FormLanguageSkill
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
            this.cbLsSkill = new System.Windows.Forms.ComboBox();
            this.cbRwSkill = new System.Windows.Forms.ComboBox();
            this.cbLanguageType = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dgvLanguageSkillList = new System.Windows.Forms.DataGridView();
            this.ForeignLanguage = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ReadandWrite = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ListenandSpeak = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ResumeId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvLanguageSkillList)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 197);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(911, 268);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增语言能力（*为必填项）";
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.linkBack);
            this.panel1.Controls.Add(this.btnSaveAndNew);
            this.panel1.Controls.Add(this.cbLsSkill);
            this.panel1.Controls.Add(this.cbRwSkill);
            this.panel1.Controls.Add(this.cbLanguageType);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(905, 246);
            this.panel1.TabIndex = 0;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(319, 115);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(97, 33);
            this.btnSave.TabIndex = 47;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // linkBack
            // 
            this.linkBack.AutoSize = true;
            this.linkBack.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.linkBack.Location = new System.Drawing.Point(459, 119);
            this.linkBack.Name = "linkBack";
            this.linkBack.Size = new System.Drawing.Size(42, 21);
            this.linkBack.TabIndex = 46;
            this.linkBack.TabStop = true;
            this.linkBack.Text = "返回";
            this.linkBack.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkBack_LinkClicked);
            // 
            // btnSaveAndNew
            // 
            this.btnSaveAndNew.Location = new System.Drawing.Point(136, 115);
            this.btnSaveAndNew.Name = "btnSaveAndNew";
            this.btnSaveAndNew.Size = new System.Drawing.Size(141, 33);
            this.btnSaveAndNew.TabIndex = 45;
            this.btnSaveAndNew.Text = "保存并新增语言能力";
            this.btnSaveAndNew.UseVisualStyleBackColor = true;
            this.btnSaveAndNew.Click += new System.EventHandler(this.btnSaveAndNew_Click);
            // 
            // cbLsSkill
            // 
            this.cbLsSkill.Enabled = false;
            this.cbLsSkill.FormattingEnabled = true;
            this.cbLsSkill.Items.AddRange(new object[] {
            "一般",
            "良好",
            "熟练",
            "精通"});
            this.cbLsSkill.Location = new System.Drawing.Point(463, 49);
            this.cbLsSkill.Name = "cbLsSkill";
            this.cbLsSkill.Size = new System.Drawing.Size(94, 25);
            this.cbLsSkill.TabIndex = 5;
            // 
            // cbRwSkill
            // 
            this.cbRwSkill.Enabled = false;
            this.cbRwSkill.FormattingEnabled = true;
            this.cbRwSkill.Items.AddRange(new object[] {
            "一般",
            "良好",
            "熟练",
            "精通"});
            this.cbRwSkill.Location = new System.Drawing.Point(283, 49);
            this.cbRwSkill.Name = "cbRwSkill";
            this.cbRwSkill.Size = new System.Drawing.Size(94, 25);
            this.cbRwSkill.TabIndex = 4;
            // 
            // cbLanguageType
            // 
            this.cbLanguageType.FormattingEnabled = true;
            this.cbLanguageType.Items.AddRange(new object[] {
            "英语",
            "日语",
            "法语",
            "德语",
            "俄语",
            "韩语",
            "泰语",
            "西班牙语",
            "葡萄牙语",
            "阿拉伯语",
            "意大利语",
            "其他"});
            this.cbLanguageType.Location = new System.Drawing.Point(110, 49);
            this.cbLanguageType.Name = "cbLanguageType";
            this.cbLanguageType.Size = new System.Drawing.Size(101, 25);
            this.cbLanguageType.TabIndex = 3;
            this.cbLanguageType.TextChanged += new System.EventHandler(this.cbLanguageType_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(399, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "听说能力";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(221, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "读写能力";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(37, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "*外语语种";
            // 
            // panel2
            // 
            this.panel2.AutoSize = true;
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(911, 0);
            this.panel2.TabIndex = 2;
            // 
            // dgvLanguageSkillList
            // 
            this.dgvLanguageSkillList.AllowUserToAddRows = false;
            this.dgvLanguageSkillList.AllowUserToDeleteRows = false;
            this.dgvLanguageSkillList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvLanguageSkillList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvLanguageSkillList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ForeignLanguage,
            this.ReadandWrite,
            this.ListenandSpeak,
            this.Edit,
            this.Delete,
            this.Id,
            this.ResumeId});
            this.dgvLanguageSkillList.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvLanguageSkillList.Location = new System.Drawing.Point(0, 34);
            this.dgvLanguageSkillList.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvLanguageSkillList.Name = "dgvLanguageSkillList";
            this.dgvLanguageSkillList.ReadOnly = true;
            this.dgvLanguageSkillList.RowTemplate.Height = 23;
            this.dgvLanguageSkillList.Size = new System.Drawing.Size(911, 163);
            this.dgvLanguageSkillList.TabIndex = 5;
            this.dgvLanguageSkillList.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvLanguageSkillList_CellContentClick);
            // 
            // ForeignLanguage
            // 
            this.ForeignLanguage.DataPropertyName = "LanguageType";
            this.ForeignLanguage.FillWeight = 130.1395F;
            this.ForeignLanguage.HeaderText = "外语语种";
            this.ForeignLanguage.Name = "ForeignLanguage";
            this.ForeignLanguage.ReadOnly = true;
            // 
            // ReadandWrite
            // 
            this.ReadandWrite.DataPropertyName = "RwAbility";
            this.ReadandWrite.FillWeight = 130.1395F;
            this.ReadandWrite.HeaderText = "读写能力";
            this.ReadandWrite.Name = "ReadandWrite";
            this.ReadandWrite.ReadOnly = true;
            // 
            // ListenandSpeak
            // 
            this.ListenandSpeak.DataPropertyName = "LsAbility";
            this.ListenandSpeak.FillWeight = 130.1395F;
            this.ListenandSpeak.HeaderText = "听说能力";
            this.ListenandSpeak.Name = "ListenandSpeak";
            this.ListenandSpeak.ReadOnly = true;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 58.82011F;
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
            this.Id.HeaderText = "语言技能Id";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            // 
            // ResumeId
            // 
            this.ResumeId.DataPropertyName = "ResumeId";
            this.ResumeId.HeaderText = "简历Id";
            this.ResumeId.Name = "ResumeId";
            this.ResumeId.ReadOnly = true;
            this.ResumeId.Visible = false;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.label4);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(911, 34);
            this.panel3.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 8);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(486, 17);
            this.label4.TabIndex = 5;
            this.label4.Text = "请在页面下方填写新的语言,最多8个。 要更改或删除某项语言，请按\"编辑\"或\"删除\"链接。";
            // 
            // FormLanguageSkill
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(911, 465);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvLanguageSkillList);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormLanguageSkill";
            this.Text = "FormLanguageSkill";
            this.groupBox1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvLanguageSkillList)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox cbLanguageType;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbLsSkill;
        private System.Windows.Forms.ComboBox cbRwSkill;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.LinkLabel linkBack;
        private System.Windows.Forms.Button btnSaveAndNew;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridView dgvLanguageSkillList;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridViewTextBoxColumn ForeignLanguage;
        private System.Windows.Forms.DataGridViewTextBoxColumn ReadandWrite;
        private System.Windows.Forms.DataGridViewTextBoxColumn ListenandSpeak;
        private System.Windows.Forms.DataGridViewLinkColumn Edit;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn ResumeId;
    }
}