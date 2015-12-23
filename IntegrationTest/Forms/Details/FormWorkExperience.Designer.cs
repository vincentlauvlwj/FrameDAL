namespace ResumeFactory.Forms.Details
{
    partial class FormWorkExperience
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
            this.label11 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.listJobSubclass = new ResumeFactory.Common.PopListBox();
            this.listJobClass = new ResumeFactory.Common.PopListBox();
            this.listIndustry = new ResumeFactory.Common.PopListBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.linkBack = new System.Windows.Forms.LinkLabel();
            this.btnSaveAndAdd = new System.Windows.Forms.Button();
            this.cmbScale = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cmbCompanyType = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.textDesc = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cmbSalary = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dtpEndDate = new System.Windows.Forms.DateTimePicker();
            this.dtpStartDate = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.textJobName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textCompanyName = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.dgvExp = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ExpCompanyName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ExpDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvExp)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label11);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(767, 24);
            this.panel1.TabIndex = 0;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Dock = System.Windows.Forms.DockStyle.Top;
            this.label11.Location = new System.Drawing.Point(0, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(620, 17);
            this.label11.TabIndex = 0;
            this.label11.Text = "请在页面下方“新增工作经验”处填写新的工作经验。要更改或删除某项工作经验，请按“编辑”或“删除”链接。";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel2);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 120);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(767, 468);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增工作经验（*为必填项）";
            // 
            // panel2
            // 
            this.panel2.AutoScroll = true;
            this.panel2.Controls.Add(this.listJobSubclass);
            this.panel2.Controls.Add(this.listJobClass);
            this.panel2.Controls.Add(this.listIndustry);
            this.panel2.Controls.Add(this.btnSave);
            this.panel2.Controls.Add(this.linkBack);
            this.panel2.Controls.Add(this.btnSaveAndAdd);
            this.panel2.Controls.Add(this.cmbScale);
            this.panel2.Controls.Add(this.label10);
            this.panel2.Controls.Add(this.cmbCompanyType);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.textDesc);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.cmbSalary);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.dtpEndDate);
            this.panel2.Controls.Add(this.dtpStartDate);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.textJobName);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.textCompanyName);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(3, 19);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(761, 446);
            this.panel2.TabIndex = 0;
            // 
            // listJobSubclass
            // 
            this.listJobSubclass.DataSource = null;
            this.listJobSubclass.DialogTitle = "请选择职位子类别";
            this.listJobSubclass.DisplayMember = "job_subclass";
            this.listJobSubclass.ListColumnWidth = 200;
            this.listJobSubclass.Location = new System.Drawing.Point(266, 72);
            this.listJobSubclass.MultiColumn = true;
            this.listJobSubclass.Name = "listJobSubclass";
            this.listJobSubclass.ReadOnly = true;
            this.listJobSubclass.Size = new System.Drawing.Size(125, 23);
            this.listJobSubclass.TabIndex = 4;
            this.listJobSubclass.ValueMember = "job_subclass";
            // 
            // listJobClass
            // 
            this.listJobClass.DataSource = null;
            this.listJobClass.DialogTitle = "请选择职位类别";
            this.listJobClass.DisplayMember = "job_class";
            this.listJobClass.ListColumnWidth = 200;
            this.listJobClass.Location = new System.Drawing.Point(135, 72);
            this.listJobClass.MultiColumn = true;
            this.listJobClass.Name = "listJobClass";
            this.listJobClass.ReadOnly = true;
            this.listJobClass.Size = new System.Drawing.Size(125, 23);
            this.listJobClass.TabIndex = 3;
            this.listJobClass.ValueMember = "job_class";
            // 
            // listIndustry
            // 
            this.listIndustry.DataSource = null;
            this.listIndustry.DialogTitle = "请选择行业类别";
            this.listIndustry.DisplayMember = "industry_type";
            this.listIndustry.ListColumnWidth = 200;
            this.listIndustry.Location = new System.Drawing.Point(135, 37);
            this.listIndustry.MultiColumn = true;
            this.listIndustry.Name = "listIndustry";
            this.listIndustry.ReadOnly = true;
            this.listIndustry.Size = new System.Drawing.Size(125, 23);
            this.listIndustry.TabIndex = 2;
            this.listIndustry.ValueMember = "industry_type";
            // 
            // btnSave
            // 
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSave.Location = new System.Drawing.Point(314, 404);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(77, 33);
            this.btnSave.TabIndex = 13;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // linkBack
            // 
            this.linkBack.AutoSize = true;
            this.linkBack.Location = new System.Drawing.Point(404, 414);
            this.linkBack.Name = "linkBack";
            this.linkBack.Size = new System.Drawing.Size(32, 17);
            this.linkBack.TabIndex = 14;
            this.linkBack.TabStop = true;
            this.linkBack.Text = "返回";
            this.linkBack.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkBack_LinkClicked);
            // 
            // btnSaveAndAdd
            // 
            this.btnSaveAndAdd.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSaveAndAdd.Location = new System.Drawing.Point(135, 404);
            this.btnSaveAndAdd.Name = "btnSaveAndAdd";
            this.btnSaveAndAdd.Size = new System.Drawing.Size(170, 33);
            this.btnSaveAndAdd.TabIndex = 12;
            this.btnSaveAndAdd.Text = "保存并新增工作经验";
            this.btnSaveAndAdd.UseVisualStyleBackColor = true;
            this.btnSaveAndAdd.Click += new System.EventHandler(this.btnSaveAndAdd_Click);
            // 
            // cmbScale
            // 
            this.cmbScale.FormattingEnabled = true;
            this.cmbScale.Items.AddRange(new object[] {
            "20人以下",
            "20-99人",
            "100-499人",
            "500-999人",
            "1000-9999人",
            "10000人以上"});
            this.cmbScale.Location = new System.Drawing.Point(135, 232);
            this.cmbScale.Name = "cmbScale";
            this.cmbScale.Size = new System.Drawing.Size(125, 25);
            this.cmbScale.TabIndex = 10;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(9, 235);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(56, 17);
            this.label10.TabIndex = 92;
            this.label10.Text = "企业规模";
            // 
            // cmbCompanyType
            // 
            this.cmbCompanyType.DisplayMember = "CompanyType";
            this.cmbCompanyType.FormattingEnabled = true;
            this.cmbCompanyType.Items.AddRange(new object[] {
            "国企",
            "外商独资",
            "代表处",
            "合资",
            "民营",
            "股份制企业",
            "上市公司",
            "国家机关",
            "事业单位"});
            this.cmbCompanyType.Location = new System.Drawing.Point(135, 199);
            this.cmbCompanyType.Name = "cmbCompanyType";
            this.cmbCompanyType.Size = new System.Drawing.Size(125, 25);
            this.cmbCompanyType.TabIndex = 9;
            this.cmbCompanyType.ValueMember = "Id";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(9, 202);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(56, 17);
            this.label9.TabIndex = 90;
            this.label9.Text = "企业性质";
            // 
            // textDesc
            // 
            this.textDesc.Location = new System.Drawing.Point(135, 267);
            this.textDesc.Multiline = true;
            this.textDesc.Name = "textDesc";
            this.textDesc.Size = new System.Drawing.Size(419, 116);
            this.textDesc.TabIndex = 11;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(9, 270);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 17);
            this.label7.TabIndex = 88;
            this.label7.Text = "* 工作描述";
            // 
            // cmbSalary
            // 
            this.cmbSalary.FormattingEnabled = true;
            this.cmbSalary.Items.AddRange(new object[] {
            "1000元/月以下l",
            "1000-2000元/月",
            "2001-4000元/月",
            "4001-6000元/月",
            "6001-8000元/月",
            "8001-10000元/月",
            "10001-15000元/月",
            "15000-25000元/月",
            "25000元/月以上",
            "保密"});
            this.cmbSalary.Location = new System.Drawing.Point(135, 166);
            this.cmbSalary.Name = "cmbSalary";
            this.cmbSalary.Size = new System.Drawing.Size(125, 25);
            this.cmbSalary.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(9, 169);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(88, 17);
            this.label5.TabIndex = 86;
            this.label5.Text = "职位月薪(税前)";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(255, 141);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(20, 17);
            this.label4.TabIndex = 85;
            this.label4.Text = "至";
            // 
            // dtpEndDate
            // 
            this.dtpEndDate.CustomFormat = "yyyy";
            this.dtpEndDate.Location = new System.Drawing.Point(276, 136);
            this.dtpEndDate.Name = "dtpEndDate";
            this.dtpEndDate.Size = new System.Drawing.Size(115, 23);
            this.dtpEndDate.TabIndex = 7;
            // 
            // dtpStartDate
            // 
            this.dtpStartDate.CustomFormat = "yyyy";
            this.dtpStartDate.Location = new System.Drawing.Point(135, 136);
            this.dtpStartDate.Name = "dtpStartDate";
            this.dtpStartDate.Size = new System.Drawing.Size(114, 23);
            this.dtpStartDate.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 141);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 17);
            this.label3.TabIndex = 82;
            this.label3.Text = "* 工作时间";
            // 
            // textJobName
            // 
            this.textJobName.Location = new System.Drawing.Point(135, 105);
            this.textJobName.Name = "textJobName";
            this.textJobName.Size = new System.Drawing.Size(256, 23);
            this.textJobName.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 108);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 17);
            this.label2.TabIndex = 80;
            this.label2.Text = "* 职位名称";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 75);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 17);
            this.label1.TabIndex = 77;
            this.label1.Text = "* 职位类别";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(9, 40);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(65, 17);
            this.label6.TabIndex = 75;
            this.label6.Text = "* 行业类别";
            // 
            // textCompanyName
            // 
            this.textCompanyName.Location = new System.Drawing.Point(135, 6);
            this.textCompanyName.Name = "textCompanyName";
            this.textCompanyName.Size = new System.Drawing.Size(256, 23);
            this.textCompanyName.TabIndex = 1;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 9);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(65, 17);
            this.label8.TabIndex = 73;
            this.label8.Text = "* 企业名称";
            // 
            // dgvExp
            // 
            this.dgvExp.AllowUserToAddRows = false;
            this.dgvExp.AllowUserToDeleteRows = false;
            this.dgvExp.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvExp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvExp.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.ExpCompanyName,
            this.ExpDate,
            this.Edit,
            this.Delete});
            this.dgvExp.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvExp.Location = new System.Drawing.Point(0, 24);
            this.dgvExp.Name = "dgvExp";
            this.dgvExp.ReadOnly = true;
            this.dgvExp.RowTemplate.Height = 23;
            this.dgvExp.Size = new System.Drawing.Size(767, 96);
            this.dgvExp.TabIndex = 2;
            this.dgvExp.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvExp_CellContentClick);
            // 
            // Id
            // 
            this.Id.DataPropertyName = "Id";
            this.Id.HeaderText = "Id";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            // 
            // ExpCompanyName
            // 
            this.ExpCompanyName.DataPropertyName = "ExpCompanyName";
            this.ExpCompanyName.HeaderText = "公司名称";
            this.ExpCompanyName.Name = "ExpCompanyName";
            this.ExpCompanyName.ReadOnly = true;
            // 
            // ExpDate
            // 
            this.ExpDate.DataPropertyName = "ExpDate";
            this.ExpDate.HeaderText = "时间";
            this.ExpDate.Name = "ExpDate";
            this.ExpDate.ReadOnly = true;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 20F;
            this.Edit.HeaderText = "编辑";
            this.Edit.Name = "Edit";
            this.Edit.ReadOnly = true;
            this.Edit.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Edit.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Edit.Text = "编辑";
            this.Edit.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.FillWeight = 20F;
            this.Delete.HeaderText = "删除";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Delete.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Delete.Text = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // FormWorkExperience
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(767, 588);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvExp);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormWorkExperience";
            this.Text = "FormWorkExperience";
            this.Load += new System.EventHandler(this.FormWorkExperience_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvExp)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.LinkLabel linkBack;
        private System.Windows.Forms.Button btnSaveAndAdd;
        private System.Windows.Forms.ComboBox cmbScale;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbCompanyType;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textDesc;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cmbSalary;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dtpEndDate;
        private System.Windows.Forms.DateTimePicker dtpStartDate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textJobName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textCompanyName;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dgvExp;
        private Common.PopListBox listIndustry;
        private Common.PopListBox listJobSubclass;
        private Common.PopListBox listJobClass;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn ExpCompanyName;
        private System.Windows.Forms.DataGridViewTextBoxColumn ExpDate;
        private System.Windows.Forms.DataGridViewLinkColumn Edit;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;

    }
}