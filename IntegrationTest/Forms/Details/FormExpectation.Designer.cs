namespace ResumeFactory.Forms.Details
{
    partial class FormExpectation
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
            this.listJobSubclass2 = new ResumeFactory.Common.PopListBox();
            this.listJobClass2 = new ResumeFactory.Common.PopListBox();
            this.listJobSubclass1 = new ResumeFactory.Common.PopListBox();
            this.listJobClass1 = new ResumeFactory.Common.PopListBox();
            this.listIndustry2 = new ResumeFactory.Common.PopListBox();
            this.listIndustry1 = new ResumeFactory.Common.PopListBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.linkBack = new System.Windows.Forms.LinkLabel();
            this.btnSave = new System.Windows.Forms.Button();
            this.cmbStatus = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cmbSalary = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbCounty2 = new System.Windows.Forms.ComboBox();
            this.cmbCity2 = new System.Windows.Forms.ComboBox();
            this.cmbProvince2 = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cmbCounty1 = new System.Windows.Forms.ComboBox();
            this.cmbCity1 = new System.Windows.Forms.ComboBox();
            this.cmbProvince1 = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.checkBoxPractice = new System.Windows.Forms.CheckBox();
            this.checkBoxPartTime = new System.Windows.Forms.CheckBox();
            this.checkBoxFullTime = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(631, 443);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "修改求职意向（*为必填项）";
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.listJobSubclass2);
            this.panel1.Controls.Add(this.listJobClass2);
            this.panel1.Controls.Add(this.listJobSubclass1);
            this.panel1.Controls.Add(this.listJobClass1);
            this.panel1.Controls.Add(this.listIndustry2);
            this.panel1.Controls.Add(this.listIndustry1);
            this.panel1.Controls.Add(this.label8);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.linkBack);
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.cmbStatus);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.cmbSalary);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.cmbCounty2);
            this.panel1.Controls.Add(this.cmbCity2);
            this.panel1.Controls.Add(this.cmbProvince2);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.cmbCounty1);
            this.panel1.Controls.Add(this.cmbCity1);
            this.panel1.Controls.Add(this.cmbProvince1);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(625, 421);
            this.panel1.TabIndex = 1;
            // 
            // listJobSubclass2
            // 
            this.listJobSubclass2.DataSource = null;
            this.listJobSubclass2.DialogTitle = "请选择职位子类别";
            this.listJobSubclass2.DisplayMember = "job_subclass";
            this.listJobSubclass2.ListColumnWidth = 200;
            this.listJobSubclass2.Location = new System.Drawing.Point(269, 216);
            this.listJobSubclass2.MultiColumn = true;
            this.listJobSubclass2.Name = "listJobSubclass2";
            this.listJobSubclass2.ReadOnly = true;
            this.listJobSubclass2.Size = new System.Drawing.Size(125, 23);
            this.listJobSubclass2.TabIndex = 15;
            this.listJobSubclass2.ValueMember = "job_subclass";
            // 
            // listJobClass2
            // 
            this.listJobClass2.DataSource = null;
            this.listJobClass2.DialogTitle = "请选择职位类别";
            this.listJobClass2.DisplayMember = "job_class";
            this.listJobClass2.ListColumnWidth = 200;
            this.listJobClass2.Location = new System.Drawing.Point(138, 216);
            this.listJobClass2.MultiColumn = true;
            this.listJobClass2.Name = "listJobClass2";
            this.listJobClass2.ReadOnly = true;
            this.listJobClass2.Size = new System.Drawing.Size(125, 23);
            this.listJobClass2.TabIndex = 14;
            this.listJobClass2.ValueMember = "job_class";
            // 
            // listJobSubclass1
            // 
            this.listJobSubclass1.DataSource = null;
            this.listJobSubclass1.DialogTitle = "请选择职位子类别";
            this.listJobSubclass1.DisplayMember = "job_subclass";
            this.listJobSubclass1.ListColumnWidth = 200;
            this.listJobSubclass1.Location = new System.Drawing.Point(269, 181);
            this.listJobSubclass1.MultiColumn = true;
            this.listJobSubclass1.Name = "listJobSubclass1";
            this.listJobSubclass1.ReadOnly = true;
            this.listJobSubclass1.Size = new System.Drawing.Size(125, 23);
            this.listJobSubclass1.TabIndex = 13;
            this.listJobSubclass1.ValueMember = "job_subclass";
            // 
            // listJobClass1
            // 
            this.listJobClass1.DataSource = null;
            this.listJobClass1.DialogTitle = "请选择职位类别";
            this.listJobClass1.DisplayMember = "job_class";
            this.listJobClass1.ListColumnWidth = 200;
            this.listJobClass1.Location = new System.Drawing.Point(138, 181);
            this.listJobClass1.MultiColumn = true;
            this.listJobClass1.Name = "listJobClass1";
            this.listJobClass1.ReadOnly = true;
            this.listJobClass1.Size = new System.Drawing.Size(125, 23);
            this.listJobClass1.TabIndex = 12;
            this.listJobClass1.ValueMember = "job_class";
            // 
            // listIndustry2
            // 
            this.listIndustry2.DataSource = null;
            this.listIndustry2.DialogTitle = "请选择行业类别";
            this.listIndustry2.DisplayMember = "industry_type";
            this.listIndustry2.ListColumnWidth = 200;
            this.listIndustry2.Location = new System.Drawing.Point(138, 143);
            this.listIndustry2.MultiColumn = true;
            this.listIndustry2.Name = "listIndustry2";
            this.listIndustry2.ReadOnly = true;
            this.listIndustry2.Size = new System.Drawing.Size(125, 23);
            this.listIndustry2.TabIndex = 11;
            this.listIndustry2.ValueMember = "industry_type";
            // 
            // listIndustry1
            // 
            this.listIndustry1.DataSource = null;
            this.listIndustry1.DialogTitle = "请选择行业类别";
            this.listIndustry1.DisplayMember = "industry_type";
            this.listIndustry1.ListColumnWidth = 200;
            this.listIndustry1.Location = new System.Drawing.Point(138, 108);
            this.listIndustry1.MultiColumn = true;
            this.listIndustry1.Name = "listIndustry1";
            this.listIndustry1.ReadOnly = true;
            this.listIndustry1.Size = new System.Drawing.Size(125, 23);
            this.listIndustry1.TabIndex = 10;
            this.listIndustry1.ValueMember = "industry_type";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 146);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(87, 17);
            this.label8.TabIndex = 70;
            this.label8.Text = "期望从事行业2";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 111);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(96, 17);
            this.label9.TabIndex = 67;
            this.label9.Text = "* 期望从事行业1";
            // 
            // linkBack
            // 
            this.linkBack.AutoSize = true;
            this.linkBack.Location = new System.Drawing.Point(257, 335);
            this.linkBack.Name = "linkBack";
            this.linkBack.Size = new System.Drawing.Size(32, 17);
            this.linkBack.TabIndex = 19;
            this.linkBack.TabStop = true;
            this.linkBack.Text = "返回";
            this.linkBack.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkBack_LinkClicked);
            // 
            // btnSave
            // 
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSave.Location = new System.Drawing.Point(138, 325);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(102, 33);
            this.btnSave.TabIndex = 18;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cmbStatus
            // 
            this.cmbStatus.FormattingEnabled = true;
            this.cmbStatus.Items.AddRange(new object[] {
            "我目前处于离职状态，可立即上岗",
            "我目前在职，正考虑换个新环境（如有合适的工作机会，到岗时间一个月左右）",
            "我对现有工作还算满意，如有更好的工作机会，我也可以考虑。（到岗时间另议）",
            "目前暂无跳槽打算",
            "应届毕业生"});
            this.cmbStatus.Location = new System.Drawing.Point(138, 284);
            this.cmbStatus.Name = "cmbStatus";
            this.cmbStatus.Size = new System.Drawing.Size(387, 25);
            this.cmbStatus.TabIndex = 17;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 287);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 17);
            this.label7.TabIndex = 63;
            this.label7.Text = "* 工作状态";
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
            this.cmbSalary.Location = new System.Drawing.Point(138, 251);
            this.cmbSalary.Name = "cmbSalary";
            this.cmbSalary.Size = new System.Drawing.Size(125, 25);
            this.cmbSalary.TabIndex = 16;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 254);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(97, 17);
            this.label4.TabIndex = 61;
            this.label4.Text = "* 期望薪资(税前)";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 219);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 17);
            this.label3.TabIndex = 58;
            this.label3.Text = "期望职位2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 184);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 17);
            this.label1.TabIndex = 55;
            this.label1.Text = "* 期望职位1";
            // 
            // cmbCounty2
            // 
            this.cmbCounty2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCounty2.FormattingEnabled = true;
            this.cmbCounty2.Location = new System.Drawing.Point(400, 71);
            this.cmbCounty2.Name = "cmbCounty2";
            this.cmbCounty2.Size = new System.Drawing.Size(125, 25);
            this.cmbCounty2.TabIndex = 9;
            // 
            // cmbCity2
            // 
            this.cmbCity2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCity2.FormattingEnabled = true;
            this.cmbCity2.Location = new System.Drawing.Point(269, 71);
            this.cmbCity2.Name = "cmbCity2";
            this.cmbCity2.Size = new System.Drawing.Size(125, 25);
            this.cmbCity2.TabIndex = 8;
            // 
            // cmbProvince2
            // 
            this.cmbProvince2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProvince2.FormattingEnabled = true;
            this.cmbProvince2.Location = new System.Drawing.Point(138, 71);
            this.cmbProvince2.Name = "cmbProvince2";
            this.cmbProvince2.Size = new System.Drawing.Size(125, 25);
            this.cmbProvince2.TabIndex = 7;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 74);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(87, 17);
            this.label6.TabIndex = 51;
            this.label6.Text = "期望工作地点2";
            // 
            // cmbCounty1
            // 
            this.cmbCounty1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCounty1.FormattingEnabled = true;
            this.cmbCounty1.Location = new System.Drawing.Point(400, 38);
            this.cmbCounty1.Name = "cmbCounty1";
            this.cmbCounty1.Size = new System.Drawing.Size(125, 25);
            this.cmbCounty1.TabIndex = 6;
            // 
            // cmbCity1
            // 
            this.cmbCity1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCity1.FormattingEnabled = true;
            this.cmbCity1.Location = new System.Drawing.Point(269, 38);
            this.cmbCity1.Name = "cmbCity1";
            this.cmbCity1.Size = new System.Drawing.Size(125, 25);
            this.cmbCity1.TabIndex = 5;
            // 
            // cmbProvince1
            // 
            this.cmbProvince1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbProvince1.FormattingEnabled = true;
            this.cmbProvince1.Location = new System.Drawing.Point(138, 38);
            this.cmbProvince1.Name = "cmbProvince1";
            this.cmbProvince1.Size = new System.Drawing.Size(125, 25);
            this.cmbProvince1.TabIndex = 4;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 41);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(96, 17);
            this.label5.TabIndex = 47;
            this.label5.Text = "* 期望工作地点1";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.checkBoxPractice);
            this.panel2.Controls.Add(this.checkBoxPartTime);
            this.panel2.Controls.Add(this.checkBoxFullTime);
            this.panel2.Location = new System.Drawing.Point(118, 6);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(207, 24);
            this.panel2.TabIndex = 1;
            // 
            // checkBoxPractice
            // 
            this.checkBoxPractice.AutoSize = true;
            this.checkBoxPractice.Location = new System.Drawing.Point(134, 0);
            this.checkBoxPractice.Name = "checkBoxPractice";
            this.checkBoxPractice.Size = new System.Drawing.Size(51, 21);
            this.checkBoxPractice.TabIndex = 3;
            this.checkBoxPractice.Text = "实习";
            this.checkBoxPractice.UseVisualStyleBackColor = true;
            // 
            // checkBoxPartTime
            // 
            this.checkBoxPartTime.AutoSize = true;
            this.checkBoxPartTime.Location = new System.Drawing.Point(77, 0);
            this.checkBoxPartTime.Name = "checkBoxPartTime";
            this.checkBoxPartTime.Size = new System.Drawing.Size(51, 21);
            this.checkBoxPartTime.TabIndex = 2;
            this.checkBoxPartTime.Text = "兼职";
            this.checkBoxPartTime.UseVisualStyleBackColor = true;
            // 
            // checkBoxFullTime
            // 
            this.checkBoxFullTime.AutoSize = true;
            this.checkBoxFullTime.Location = new System.Drawing.Point(20, 0);
            this.checkBoxFullTime.Name = "checkBoxFullTime";
            this.checkBoxFullTime.Size = new System.Drawing.Size(51, 21);
            this.checkBoxFullTime.TabIndex = 1;
            this.checkBoxFullTime.Text = "全职";
            this.checkBoxFullTime.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(89, 17);
            this.label2.TabIndex = 45;
            this.label2.Text = "* 期望工作性质";
            // 
            // FormExpectation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(631, 443);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormExpectation";
            this.Text = "FormExpectation";
            this.Load += new System.EventHandler(this.FormExpectation_Load);
            this.groupBox1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.LinkLabel linkBack;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cmbStatus;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cmbSalary;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbCounty2;
        private System.Windows.Forms.ComboBox cmbCity2;
        private System.Windows.Forms.ComboBox cmbProvince2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cmbCounty1;
        private System.Windows.Forms.ComboBox cmbProvince1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.CheckBox checkBoxPractice;
        private System.Windows.Forms.CheckBox checkBoxPartTime;
        private System.Windows.Forms.CheckBox checkBoxFullTime;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cmbCity1;
        private Common.PopListBox listIndustry2;
        private Common.PopListBox listIndustry1;
        private Common.PopListBox listJobSubclass2;
        private Common.PopListBox listJobClass2;
        private Common.PopListBox listJobSubclass1;
        private Common.PopListBox listJobClass1;


    }
}