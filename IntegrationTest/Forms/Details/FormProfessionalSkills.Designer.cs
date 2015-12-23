namespace ResumeFactory.Forms.Details
{
    partial class FormProfessionalSkills
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
            this.datagvSkills = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label4Tips = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.linkReturn = new System.Windows.Forms.LinkLabel();
            this.label4 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnSaveAndAdd = new System.Windows.Forms.Button();
            this.txboxSkillName = new System.Windows.Forms.TextBox();
            this.cmboxSkillType = new System.Windows.Forms.ComboBox();
            this.cmboxFamiliarity = new System.Windows.Forms.ComboBox();
            this.txboxUseTime = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resume_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.skill_type_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.skill_type_name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.skill_name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.use_time = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.familiarity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datagvSkills)).BeginInit();
            this.panel2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.datagvSkills);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(769, 356);
            this.panel1.TabIndex = 0;
            // 
            // datagvSkills
            // 
            this.datagvSkills.AllowUserToAddRows = false;
            this.datagvSkills.AllowUserToDeleteRows = false;
            this.datagvSkills.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.datagvSkills.BackgroundColor = System.Drawing.SystemColors.Control;
            this.datagvSkills.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datagvSkills.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.resume_id,
            this.skill_type_id,
            this.skill_type_name,
            this.skill_name,
            this.use_time,
            this.familiarity,
            this.Column5});
            this.datagvSkills.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagvSkills.Location = new System.Drawing.Point(0, 49);
            this.datagvSkills.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.datagvSkills.Name = "datagvSkills";
            this.datagvSkills.ReadOnly = true;
            this.datagvSkills.RowTemplate.Height = 23;
            this.datagvSkills.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.datagvSkills.Size = new System.Drawing.Size(769, 307);
            this.datagvSkills.TabIndex = 2;
            this.datagvSkills.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.datagvSkills_CellContentClick);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label4Tips);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(769, 49);
            this.panel2.TabIndex = 1;
            // 
            // label4Tips
            // 
            this.label4Tips.AutoSize = true;
            this.label4Tips.Location = new System.Drawing.Point(14, 7);
            this.label4Tips.Name = "label4Tips";
            this.label4Tips.Size = new System.Drawing.Size(44, 17);
            this.label4Tips.TabIndex = 0;
            this.label4Tips.Text = "提示语";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnClear);
            this.groupBox1.Controls.Add(this.linkReturn);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Controls.Add(this.btnSaveAndAdd);
            this.groupBox1.Controls.Add(this.txboxSkillName);
            this.groupBox1.Controls.Add(this.cmboxSkillType);
            this.groupBox1.Controls.Add(this.cmboxFamiliarity);
            this.groupBox1.Controls.Add(this.txboxUseTime);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Location = new System.Drawing.Point(0, 356);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(769, 125);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增专业技能";
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(486, 86);
            this.btnClear.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(82, 25);
            this.btnClear.TabIndex = 11;
            this.btnClear.Text = "清除";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // linkReturn
            // 
            this.linkReturn.AutoSize = true;
            this.linkReturn.Location = new System.Drawing.Point(662, 90);
            this.linkReturn.Name = "linkReturn";
            this.linkReturn.Size = new System.Drawing.Size(32, 17);
            this.linkReturn.TabIndex = 10;
            this.linkReturn.TabStop = true;
            this.linkReturn.Text = "返回";
            this.linkReturn.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkReturn_LinkClicked);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(287, 61);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(20, 17);
            this.label4.TabIndex = 9;
            this.label4.Text = "月";
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(574, 86);
            this.btnSave.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(82, 25);
            this.btnSave.TabIndex = 8;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnSaveAndAdd
            // 
            this.btnSaveAndAdd.Location = new System.Drawing.Point(314, 86);
            this.btnSaveAndAdd.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSaveAndAdd.Name = "btnSaveAndAdd";
            this.btnSaveAndAdd.Size = new System.Drawing.Size(166, 25);
            this.btnSaveAndAdd.TabIndex = 7;
            this.btnSaveAndAdd.Text = "保存并添加新技能";
            this.btnSaveAndAdd.UseVisualStyleBackColor = true;
            this.btnSaveAndAdd.Click += new System.EventHandler(this.btnSaveAndAdd_Click);
            // 
            // txboxSkillName
            // 
            this.txboxSkillName.Location = new System.Drawing.Point(314, 25);
            this.txboxSkillName.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txboxSkillName.Name = "txboxSkillName";
            this.txboxSkillName.Size = new System.Drawing.Size(349, 23);
            this.txboxSkillName.TabIndex = 6;
            // 
            // cmboxSkillType
            // 
            this.cmboxSkillType.FormattingEnabled = true;
            this.cmboxSkillType.Location = new System.Drawing.Point(139, 25);
            this.cmboxSkillType.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cmboxSkillType.Name = "cmboxSkillType";
            this.cmboxSkillType.Size = new System.Drawing.Size(140, 25);
            this.cmboxSkillType.TabIndex = 5;
            this.cmboxSkillType.SelectedIndexChanged += new System.EventHandler(this.cmboxSkillType_SelectedIndexChanged);
            // 
            // cmboxFamiliarity
            // 
            this.cmboxFamiliarity.FormattingEnabled = true;
            this.cmboxFamiliarity.Location = new System.Drawing.Point(139, 86);
            this.cmboxFamiliarity.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cmboxFamiliarity.Name = "cmboxFamiliarity";
            this.cmboxFamiliarity.Size = new System.Drawing.Size(140, 25);
            this.cmboxFamiliarity.TabIndex = 4;
            // 
            // txboxUseTime
            // 
            this.txboxUseTime.Location = new System.Drawing.Point(139, 57);
            this.txboxUseTime.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txboxUseTime.Name = "txboxUseTime";
            this.txboxUseTime.Size = new System.Drawing.Size(140, 23);
            this.txboxUseTime.TabIndex = 3;
            this.txboxUseTime.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txboxUseTime_KeyPress);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(70, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "熟悉程度";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(70, 61);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "使用时间";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(42, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "选择专业技能";
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "技能编号";
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
            // skill_type_id
            // 
            this.skill_type_id.DataPropertyName = "SkillTypeId";
            this.skill_type_id.HeaderText = "技能分类编号";
            this.skill_type_id.Name = "skill_type_id";
            this.skill_type_id.ReadOnly = true;
            this.skill_type_id.Visible = false;
            // 
            // skill_type_name
            // 
            this.skill_type_name.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.skill_type_name.DataPropertyName = "SkillTypeName";
            this.skill_type_name.HeaderText = "技能分类";
            this.skill_type_name.Name = "skill_type_name";
            this.skill_type_name.ReadOnly = true;
            this.skill_type_name.Width = 150;
            // 
            // skill_name
            // 
            this.skill_name.DataPropertyName = "SkillName";
            this.skill_name.FillWeight = 21.2766F;
            this.skill_name.HeaderText = "技能名称";
            this.skill_name.Name = "skill_name";
            this.skill_name.ReadOnly = true;
            // 
            // use_time
            // 
            this.use_time.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.use_time.DataPropertyName = "UseTime";
            this.use_time.HeaderText = "使用时间(月)";
            this.use_time.Name = "use_time";
            this.use_time.ReadOnly = true;
            // 
            // familiarity
            // 
            this.familiarity.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.familiarity.DataPropertyName = "Familiarity";
            this.familiarity.FillWeight = 178.7234F;
            this.familiarity.HeaderText = "熟练程度";
            this.familiarity.Name = "familiarity";
            this.familiarity.ReadOnly = true;
            this.familiarity.Width = 150;
            // 
            // Column5
            // 
            this.Column5.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column5.DataPropertyName = "删除";
            this.Column5.HeaderText = "删除";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Text = "删除";
            this.Column5.UseColumnTextForLinkValue = true;
            // 
            // FormProfessionalSkills
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(769, 481);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormProfessionalSkills";
            this.Text = "FormProfessionalSkills";
            this.Load += new System.EventHandler(this.FormProfessionalSkills_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.datagvSkills)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label4Tips;
        private System.Windows.Forms.DataGridView datagvSkills;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnSaveAndAdd;
        private System.Windows.Forms.TextBox txboxSkillName;
        private System.Windows.Forms.ComboBox cmboxSkillType;
        private System.Windows.Forms.ComboBox cmboxFamiliarity;
        private System.Windows.Forms.TextBox txboxUseTime;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.LinkLabel linkReturn;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resume_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn skill_type_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn skill_type_name;
        private System.Windows.Forms.DataGridViewTextBoxColumn skill_name;
        private System.Windows.Forms.DataGridViewTextBoxColumn use_time;
        private System.Windows.Forms.DataGridViewTextBoxColumn familiarity;
        private System.Windows.Forms.DataGridViewLinkColumn Column5;
    }
}