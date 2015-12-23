namespace ResumeFactory.Forms.Details
{
    partial class FormSocialPractice
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
            this.linkReturn = new System.Windows.Forms.LinkLabel();
            this.label4 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnSaveAndAdd = new System.Windows.Forms.Button();
            this.txboxPracticeName = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.datagvPratices = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label4Tips = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txboxPracticeDesc = new System.Windows.Forms.RichTextBox();
            this.datetpEndDate = new System.Windows.Forms.DateTimePicker();
            this.datetpStartDate = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resume_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.practice_name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.practice_start_date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.practice_end_date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.practice_desc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datagvPratices)).BeginInit();
            this.panel2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // linkReturn
            // 
            this.linkReturn.AutoSize = true;
            this.linkReturn.Location = new System.Drawing.Point(446, 146);
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
            this.label4.Location = new System.Drawing.Point(236, 51);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(20, 17);
            this.label4.TabIndex = 9;
            this.label4.Text = "至";
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(325, 141);
            this.btnSave.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(96, 26);
            this.btnSave.TabIndex = 8;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnSaveAndAdd
            // 
            this.btnSaveAndAdd.Location = new System.Drawing.Point(111, 141);
            this.btnSaveAndAdd.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.btnSaveAndAdd.Name = "btnSaveAndAdd";
            this.btnSaveAndAdd.Size = new System.Drawing.Size(194, 26);
            this.btnSaveAndAdd.TabIndex = 7;
            this.btnSaveAndAdd.Text = "保存并添加实践经验";
            this.btnSaveAndAdd.UseVisualStyleBackColor = true;
            this.btnSaveAndAdd.Click += new System.EventHandler(this.btnSaveAndAdd_Click);
            // 
            // txboxPracticeName
            // 
            this.txboxPracticeName.Location = new System.Drawing.Point(111, 21);
            this.txboxPracticeName.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.txboxPracticeName.Name = "txboxPracticeName";
            this.txboxPracticeName.Size = new System.Drawing.Size(406, 23);
            this.txboxPracticeName.TabIndex = 6;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.datagvPratices);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(725, 312);
            this.panel1.TabIndex = 2;
            // 
            // datagvPratices
            // 
            this.datagvPratices.AllowUserToAddRows = false;
            this.datagvPratices.AllowUserToDeleteRows = false;
            this.datagvPratices.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.datagvPratices.BackgroundColor = System.Drawing.SystemColors.Control;
            this.datagvPratices.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datagvPratices.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.resume_id,
            this.practice_name,
            this.practice_start_date,
            this.practice_end_date,
            this.practice_desc,
            this.Column4,
            this.Column5});
            this.datagvPratices.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagvPratices.Location = new System.Drawing.Point(0, 57);
            this.datagvPratices.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.datagvPratices.Name = "datagvPratices";
            this.datagvPratices.ReadOnly = true;
            this.datagvPratices.RowTemplate.Height = 23;
            this.datagvPratices.Size = new System.Drawing.Size(725, 255);
            this.datagvPratices.TabIndex = 2;
            this.datagvPratices.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.datagvPratices_CellContentClick);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label4Tips);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(725, 57);
            this.panel2.TabIndex = 1;
            // 
            // label4Tips
            // 
            this.label4Tips.AutoSize = true;
            this.label4Tips.Location = new System.Drawing.Point(16, 10);
            this.label4Tips.Name = "label4Tips";
            this.label4Tips.Size = new System.Drawing.Size(44, 17);
            this.label4Tips.TabIndex = 0;
            this.label4Tips.Text = "提示语";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(71, 77);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "描述";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(47, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "实践时间";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txboxPracticeDesc);
            this.groupBox1.Controls.Add(this.datetpEndDate);
            this.groupBox1.Controls.Add(this.datetpStartDate);
            this.groupBox1.Controls.Add(this.linkReturn);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Controls.Add(this.btnSaveAndAdd);
            this.groupBox1.Controls.Add(this.txboxPracticeName);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Location = new System.Drawing.Point(0, 312);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 6, 3, 6);
            this.groupBox1.Size = new System.Drawing.Size(725, 171);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增实践经验";
            // 
            // txboxPracticeDesc
            // 
            this.txboxPracticeDesc.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txboxPracticeDesc.Location = new System.Drawing.Point(111, 74);
            this.txboxPracticeDesc.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txboxPracticeDesc.Name = "txboxPracticeDesc";
            this.txboxPracticeDesc.Size = new System.Drawing.Size(581, 62);
            this.txboxPracticeDesc.TabIndex = 13;
            this.txboxPracticeDesc.Text = "";
            // 
            // datetpEndDate
            // 
            this.datetpEndDate.Location = new System.Drawing.Point(263, 48);
            this.datetpEndDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.datetpEndDate.Name = "datetpEndDate";
            this.datetpEndDate.Size = new System.Drawing.Size(118, 23);
            this.datetpEndDate.TabIndex = 12;
            // 
            // datetpStartDate
            // 
            this.datetpStartDate.Location = new System.Drawing.Point(111, 48);
            this.datetpStartDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.datetpStartDate.Name = "datetpStartDate";
            this.datetpStartDate.Size = new System.Drawing.Size(118, 23);
            this.datetpStartDate.TabIndex = 11;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(47, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "实践名称";
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "实践编号";
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
            // practice_name
            // 
            this.practice_name.DataPropertyName = "PracticeName";
            this.practice_name.FillWeight = 21.2766F;
            this.practice_name.HeaderText = "实践名称";
            this.practice_name.Name = "practice_name";
            this.practice_name.ReadOnly = true;
            // 
            // practice_start_date
            // 
            this.practice_start_date.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.practice_start_date.DataPropertyName = "PracticeStartDate";
            this.practice_start_date.HeaderText = "开始时间";
            this.practice_start_date.Name = "practice_start_date";
            this.practice_start_date.ReadOnly = true;
            this.practice_start_date.Width = 150;
            // 
            // practice_end_date
            // 
            this.practice_end_date.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.practice_end_date.DataPropertyName = "PracticeEndDate";
            this.practice_end_date.HeaderText = "结束时间";
            this.practice_end_date.Name = "practice_end_date";
            this.practice_end_date.ReadOnly = true;
            this.practice_end_date.Width = 150;
            // 
            // practice_desc
            // 
            this.practice_desc.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.practice_desc.DataPropertyName = "PracticeDesc";
            this.practice_desc.FillWeight = 178.7234F;
            this.practice_desc.HeaderText = "描述";
            this.practice_desc.Name = "practice_desc";
            this.practice_desc.ReadOnly = true;
            this.practice_desc.Visible = false;
            this.practice_desc.Width = 150;
            // 
            // Column4
            // 
            this.Column4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column4.DataPropertyName = "编辑";
            this.Column4.HeaderText = "编辑";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column4.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column4.Text = "编辑";
            this.Column4.ToolTipText = "编辑";
            this.Column4.UseColumnTextForLinkValue = true;
            this.Column4.Width = 80;
            // 
            // Column5
            // 
            this.Column5.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column5.DataPropertyName = "删除";
            this.Column5.HeaderText = "删除";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Text = "删除";
            this.Column5.ToolTipText = "删除";
            this.Column5.UseColumnTextForLinkValue = true;
            this.Column5.Width = 80;
            // 
            // FormSocialPractice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(725, 483);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormSocialPractice";
            this.Text = "FormSocialPractice";
            this.Load += new System.EventHandler(this.FormSocialPractice_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.datagvPratices)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.LinkLabel linkReturn;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnSaveAndAdd;
        private System.Windows.Forms.TextBox txboxPracticeName;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView datagvPratices;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label4Tips;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox txboxPracticeDesc;
        private System.Windows.Forms.DateTimePicker datetpEndDate;
        private System.Windows.Forms.DateTimePicker datetpStartDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resume_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn practice_name;
        private System.Windows.Forms.DataGridViewTextBoxColumn practice_start_date;
        private System.Windows.Forms.DataGridViewTextBoxColumn practice_end_date;
        private System.Windows.Forms.DataGridViewTextBoxColumn practice_desc;
        private System.Windows.Forms.DataGridViewLinkColumn Column4;
        private System.Windows.Forms.DataGridViewLinkColumn Column5;
    }
}