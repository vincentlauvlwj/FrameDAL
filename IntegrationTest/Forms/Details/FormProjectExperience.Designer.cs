namespace ResumeFactory.Forms.Details
{
    partial class FormProjectExperience
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
            this.dtEnd = new System.Windows.Forms.DateTimePicker();
            this.dtStart = new System.Windows.Forms.DateTimePicker();
            this.linkLabel2 = new System.Windows.Forms.LinkLabel();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnSaveAndAddNew = new System.Windows.Forms.Button();
            this.cbIsIT = new System.Windows.Forms.CheckBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtProjectName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtDesc = new System.Windows.Forms.TextBox();
            this.txtDuty = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label19 = new System.Windows.Forms.Label();
            this.txtItDesc = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtItDuty = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.txtDevelop = new System.Windows.Forms.TextBox();
            this.txtHardWare = new System.Windows.Forms.TextBox();
            this.txtSoftWare = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgvProjExperience = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.projExpName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.describe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StartDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EndDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modify = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resume_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProjExperience)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.groupBox1.Controls.Add(this.dtEnd);
            this.groupBox1.Controls.Add(this.dtStart);
            this.groupBox1.Controls.Add(this.linkLabel2);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Controls.Add(this.btnSaveAndAddNew);
            this.groupBox1.Controls.Add(this.cbIsIT);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtProjectName);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Controls.Add(this.panel2);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.groupBox1.Location = new System.Drawing.Point(0, 114);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(651, 348);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增项目经验(*为必填)";
            // 
            // dtEnd
            // 
            this.dtEnd.Location = new System.Drawing.Point(211, 41);
            this.dtEnd.Name = "dtEnd";
            this.dtEnd.Size = new System.Drawing.Size(84, 23);
            this.dtEnd.TabIndex = 34;
            // 
            // dtStart
            // 
            this.dtStart.Location = new System.Drawing.Point(92, 41);
            this.dtStart.Name = "dtStart";
            this.dtStart.Size = new System.Drawing.Size(87, 23);
            this.dtStart.TabIndex = 33;
            // 
            // linkLabel2
            // 
            this.linkLabel2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.linkLabel2.AutoSize = true;
            this.linkLabel2.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.linkLabel2.Location = new System.Drawing.Point(467, 313);
            this.linkLabel2.Name = "linkLabel2";
            this.linkLabel2.Size = new System.Drawing.Size(42, 21);
            this.linkLabel2.TabIndex = 32;
            this.linkLabel2.TabStop = true;
            this.linkLabel2.Text = "返回";
            this.linkLabel2.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel2_LinkClicked);
            // 
            // btnSave
            // 
            this.btnSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSave.Location = new System.Drawing.Point(334, 307);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(97, 33);
            this.btnSave.TabIndex = 31;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnSaveAndAddNew
            // 
            this.btnSaveAndAddNew.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnSaveAndAddNew.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSaveAndAddNew.Location = new System.Drawing.Point(161, 307);
            this.btnSaveAndAddNew.Name = "btnSaveAndAddNew";
            this.btnSaveAndAddNew.Size = new System.Drawing.Size(144, 33);
            this.btnSaveAndAddNew.TabIndex = 30;
            this.btnSaveAndAddNew.Text = "保存并新增项目经验";
            this.btnSaveAndAddNew.UseVisualStyleBackColor = true;
            this.btnSaveAndAddNew.Click += new System.EventHandler(this.btnSaveAndAddNew_Click);
            // 
            // cbIsIT
            // 
            this.cbIsIT.AutoSize = true;
            this.cbIsIT.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.cbIsIT.Location = new System.Drawing.Point(93, 66);
            this.cbIsIT.Name = "cbIsIT";
            this.cbIsIT.Size = new System.Drawing.Size(134, 21);
            this.cbIsIT.TabIndex = 11;
            this.cbIsIT.Text = "该项目是否为IT项目";
            this.cbIsIT.UseVisualStyleBackColor = true;
            this.cbIsIT.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(185, 44);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(20, 17);
            this.label5.TabIndex = 6;
            this.label5.Text = "至";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(17, 45);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "*项目时间";
            // 
            // txtProjectName
            // 
            this.txtProjectName.Location = new System.Drawing.Point(93, 15);
            this.txtProjectName.Name = "txtProjectName";
            this.txtProjectName.Size = new System.Drawing.Size(380, 23);
            this.txtProjectName.TabIndex = 1;
            this.txtProjectName.TextChanged += new System.EventHandler(this.txtProjectName_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label2.Location = new System.Drawing.Point(17, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "*项目名称";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtDesc);
            this.panel1.Controls.Add(this.txtDuty);
            this.panel1.Controls.Add(this.label11);
            this.panel1.Controls.Add(this.label10);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.label18);
            this.panel1.Location = new System.Drawing.Point(8, 87);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(629, 214);
            this.panel1.TabIndex = 12;
            // 
            // txtDesc
            // 
            this.txtDesc.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtDesc.Location = new System.Drawing.Point(88, 98);
            this.txtDesc.MaxLength = 600;
            this.txtDesc.Multiline = true;
            this.txtDesc.Name = "txtDesc";
            this.txtDesc.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtDesc.Size = new System.Drawing.Size(514, 105);
            this.txtDesc.TabIndex = 8;
            // 
            // txtDuty
            // 
            this.txtDuty.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtDuty.Location = new System.Drawing.Point(88, 13);
            this.txtDuty.MaxLength = 350;
            this.txtDuty.Multiline = true;
            this.txtDuty.Name = "txtDuty";
            this.txtDuty.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtDuty.Size = new System.Drawing.Size(514, 79);
            this.txtDuty.TabIndex = 7;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label11.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label11.Location = new System.Drawing.Point(14, 118);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(61, 17);
            this.label11.TabIndex = 5;
            this.label11.Text = "(限500字)";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label10.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label10.Location = new System.Drawing.Point(15, 28);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(61, 17);
            this.label10.TabIndex = 3;
            this.label10.Text = "(限300字)";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label9.Location = new System.Drawing.Point(19, 98);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(56, 17);
            this.label9.TabIndex = 1;
            this.label9.Text = "项目描述";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label18.Location = new System.Drawing.Point(7, 13);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(68, 17);
            this.label18.TabIndex = 6;
            this.label18.Text = "项目中职责";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label19);
            this.panel2.Controls.Add(this.txtItDesc);
            this.panel2.Controls.Add(this.label16);
            this.panel2.Controls.Add(this.txtItDuty);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label17);
            this.panel2.Controls.Add(this.txtDevelop);
            this.panel2.Controls.Add(this.txtHardWare);
            this.panel2.Controls.Add(this.txtSoftWare);
            this.panel2.Controls.Add(this.label14);
            this.panel2.Controls.Add(this.label13);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Location = new System.Drawing.Point(12, 84);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(625, 223);
            this.panel2.TabIndex = 6;
            this.panel2.Visible = false;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label19.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label19.Location = new System.Drawing.Point(4, 189);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(61, 17);
            this.label19.TabIndex = 12;
            this.label19.Text = "(限500字)";
            // 
            // txtItDesc
            // 
            this.txtItDesc.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtItDesc.Location = new System.Drawing.Point(81, 161);
            this.txtItDesc.MaxLength = 600;
            this.txtItDesc.Multiline = true;
            this.txtItDesc.Name = "txtItDesc";
            this.txtItDesc.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtItDesc.Size = new System.Drawing.Size(532, 59);
            this.txtItDesc.TabIndex = 10;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label16.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label16.Location = new System.Drawing.Point(5, 121);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(61, 17);
            this.label16.TabIndex = 9;
            this.label16.Text = "(限300字)";
            // 
            // txtItDuty
            // 
            this.txtItDuty.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtItDuty.Location = new System.Drawing.Point(82, 93);
            this.txtItDuty.MaxLength = 300;
            this.txtItDuty.Multiline = true;
            this.txtItDuty.Name = "txtItDuty";
            this.txtItDuty.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtItDuty.Size = new System.Drawing.Size(532, 62);
            this.txtItDuty.TabIndex = 8;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label8.Location = new System.Drawing.Point(3, 101);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(68, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "项目中职责";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label17.Location = new System.Drawing.Point(9, 172);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(56, 17);
            this.label17.TabIndex = 7;
            this.label17.Text = "项目描述";
            // 
            // txtDevelop
            // 
            this.txtDevelop.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtDevelop.Location = new System.Drawing.Point(81, 64);
            this.txtDevelop.Name = "txtDevelop";
            this.txtDevelop.Size = new System.Drawing.Size(532, 23);
            this.txtDevelop.TabIndex = 5;
            // 
            // txtHardWare
            // 
            this.txtHardWare.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtHardWare.Location = new System.Drawing.Point(82, 37);
            this.txtHardWare.Name = "txtHardWare";
            this.txtHardWare.Size = new System.Drawing.Size(532, 23);
            this.txtHardWare.TabIndex = 4;
            // 
            // txtSoftWare
            // 
            this.txtSoftWare.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtSoftWare.Location = new System.Drawing.Point(81, 10);
            this.txtSoftWare.Name = "txtSoftWare";
            this.txtSoftWare.Size = new System.Drawing.Size(532, 23);
            this.txtSoftWare.TabIndex = 3;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label14.Location = new System.Drawing.Point(9, 67);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(56, 17);
            this.label14.TabIndex = 2;
            this.label14.Text = "开发环境";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label13.Location = new System.Drawing.Point(9, 40);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(56, 17);
            this.label13.TabIndex = 1;
            this.label13.Text = "硬件环境";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label12.Location = new System.Drawing.Point(9, 16);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(56, 17);
            this.label12.TabIndex = 0;
            this.label12.Text = "软件环境";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgvProjExperience);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox2.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.groupBox2.Location = new System.Drawing.Point(0, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(651, 114);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "请在页面下方\"新增项目经验\"处填写新的项目经验。 要更改或删除某项项目经验，请按\"编辑\"或\"删除\"链接。";
            // 
            // dgvProjExperience
            // 
            this.dgvProjExperience.AllowUserToAddRows = false;
            this.dgvProjExperience.AllowUserToDeleteRows = false;
            this.dgvProjExperience.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvProjExperience.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProjExperience.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.projExpName,
            this.Column3,
            this.Column8,
            this.describe,
            this.Column2,
            this.StartDate,
            this.EndDate,
            this.Modify,
            this.Delete,
            this.id,
            this.resume_id,
            this.Column4,
            this.Column5,
            this.Column6,
            this.Column7});
            this.dgvProjExperience.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvProjExperience.Location = new System.Drawing.Point(3, 19);
            this.dgvProjExperience.Name = "dgvProjExperience";
            this.dgvProjExperience.ReadOnly = true;
            this.dgvProjExperience.RowTemplate.Height = 23;
            this.dgvProjExperience.Size = new System.Drawing.Size(645, 199);
            this.dgvProjExperience.TabIndex = 0;
            this.dgvProjExperience.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvProjExperience_CellContentClick);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "ProjectName";
            this.Column1.FillWeight = 200F;
            this.Column1.HeaderText = "项目名称";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // projExpName
            // 
            this.projExpName.DataPropertyName = "ProjectExpName";
            this.projExpName.HeaderText = "未知项";
            this.projExpName.Name = "projExpName";
            this.projExpName.ReadOnly = true;
            this.projExpName.Visible = false;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "ProjectIsIt";
            this.Column3.FalseValue = "0";
            this.Column3.FillWeight = 80F;
            this.Column3.HeaderText = "IT项目";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column3.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column3.TrueValue = "1";
            // 
            // Column8
            // 
            this.Column8.DataPropertyName = "ProjectDate";
            this.Column8.FillWeight = 150F;
            this.Column8.HeaderText = "项目时间";
            this.Column8.Name = "Column8";
            this.Column8.ReadOnly = true;
            // 
            // describe
            // 
            this.describe.DataPropertyName = "ProjectDesc";
            this.describe.HeaderText = "项目描述";
            this.describe.Name = "describe";
            this.describe.ReadOnly = true;
            this.describe.Visible = false;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "ProjectDuty";
            this.Column2.HeaderText = "项目中责任";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Visible = false;
            // 
            // StartDate
            // 
            this.StartDate.DataPropertyName = "ProjectExpStartDate";
            this.StartDate.FillWeight = 150F;
            this.StartDate.HeaderText = "开始时间";
            this.StartDate.Name = "StartDate";
            this.StartDate.ReadOnly = true;
            this.StartDate.Visible = false;
            // 
            // EndDate
            // 
            this.EndDate.DataPropertyName = "ProjectExpEndDate";
            this.EndDate.FillWeight = 150F;
            this.EndDate.HeaderText = "结束时间";
            this.EndDate.Name = "EndDate";
            this.EndDate.ReadOnly = true;
            this.EndDate.Visible = false;
            // 
            // Modify
            // 
            this.Modify.FillWeight = 50F;
            this.Modify.HeaderText = "编辑";
            this.Modify.Name = "Modify";
            this.Modify.ReadOnly = true;
            this.Modify.Text = "编辑";
            this.Modify.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.FillWeight = 50F;
            this.Delete.HeaderText = "删除";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Text = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // id
            // 
            this.id.DataPropertyName = "Id";
            this.id.HeaderText = "id";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // resume_id
            // 
            this.resume_id.HeaderText = "ResumeId";
            this.resume_id.Name = "resume_id";
            this.resume_id.ReadOnly = true;
            this.resume_id.Visible = false;
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "ProjectSoftwareEnv";
            this.Column4.HeaderText = "软件环境";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Visible = false;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "ProjectHardwareEnv";
            this.Column5.HeaderText = "硬件环境";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Visible = false;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "ProjectDevelopEnv";
            this.Column6.HeaderText = "开发环境";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            this.Column6.Visible = false;
            // 
            // Column7
            // 
            this.Column7.DataPropertyName = "ProjectOrder";
            this.Column7.HeaderText = "排序方式";
            this.Column7.Name = "Column7";
            this.Column7.ReadOnly = true;
            this.Column7.Visible = false;
            // 
            // FormProjectExperience
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(651, 462);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "FormProjectExperience";
            this.Text = "FormProjectExperience";
            this.Load += new System.EventHandler(this.FormProjectExperience_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvProjExperience)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtProjectName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.CheckBox cbIsIT;
        private System.Windows.Forms.Button btnSaveAndAddNew;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.LinkLabel linkLabel2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.TextBox txtItDesc;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtItDuty;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox txtDevelop;
        private System.Windows.Forms.TextBox txtHardWare;
        private System.Windows.Forms.TextBox txtSoftWare;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtDesc;
        private System.Windows.Forms.TextBox txtDuty;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgvProjExperience;
        private System.Windows.Forms.DateTimePicker dtEnd;
        private System.Windows.Forms.DateTimePicker dtStart;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn projExpName;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
        private System.Windows.Forms.DataGridViewTextBoxColumn describe;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn StartDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn EndDate;
        private System.Windows.Forms.DataGridViewLinkColumn Modify;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resume_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
    }
}