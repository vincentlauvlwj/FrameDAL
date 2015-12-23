namespace ResumeFactory.Forms.Details
{
    partial class FormCertificate
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.txtCertificateNmae = new System.Windows.Forms.TextBox();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cboGetMonth = new System.Windows.Forms.ComboBox();
            this.cboGetYear = new System.Windows.Forms.ComboBox();
            this.cboCertificateName = new System.Windows.Forms.ComboBox();
            this.cboCertificateType = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgvCertificateData = new System.Windows.Forms.DataGridView();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modify = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCertificateData)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnAdd);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Controls.Add(this.txtCertificateNmae);
            this.groupBox1.Controls.Add(this.linkLabel1);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.cboGetMonth);
            this.groupBox1.Controls.Add(this.cboGetYear);
            this.groupBox1.Controls.Add(this.cboCertificateName);
            this.groupBox1.Controls.Add(this.cboCertificateType);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.groupBox1.Location = new System.Drawing.Point(0, 228);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(661, 225);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增证书(*为必填项)";
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(148, 172);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(97, 33);
            this.btnAdd.TabIndex = 30;
            this.btnAdd.Text = "添加";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(402, 172);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(97, 33);
            this.btnSave.TabIndex = 29;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // txtCertificateNmae
            // 
            this.txtCertificateNmae.Location = new System.Drawing.Point(294, 45);
            this.txtCertificateNmae.Name = "txtCertificateNmae";
            this.txtCertificateNmae.Size = new System.Drawing.Size(246, 23);
            this.txtCertificateNmae.TabIndex = 11;
            this.txtCertificateNmae.Visible = false;
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.linkLabel1.Location = new System.Drawing.Point(548, 179);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(40, 16);
            this.linkLabel1.TabIndex = 10;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "返回";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(307, 103);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(20, 17);
            this.label5.TabIndex = 7;
            this.label5.Text = "月";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(212, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(20, 17);
            this.label4.TabIndex = 6;
            this.label4.Text = "年";
            // 
            // cboGetMonth
            // 
            this.cboGetMonth.FormattingEnabled = true;
            this.cboGetMonth.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
            "11",
            "12"});
            this.cboGetMonth.Location = new System.Drawing.Point(242, 100);
            this.cboGetMonth.Name = "cboGetMonth";
            this.cboGetMonth.Size = new System.Drawing.Size(49, 25);
            this.cboGetMonth.TabIndex = 5;
            // 
            // cboGetYear
            // 
            this.cboGetYear.FormattingEnabled = true;
            this.cboGetYear.Location = new System.Drawing.Point(148, 100);
            this.cboGetYear.Name = "cboGetYear";
            this.cboGetYear.Size = new System.Drawing.Size(58, 25);
            this.cboGetYear.TabIndex = 4;
            this.cboGetYear.SelectedIndexChanged += new System.EventHandler(this.comboBox3_SelectedIndexChanged);
            // 
            // cboCertificateName
            // 
            this.cboCertificateName.FormattingEnabled = true;
            this.cboCertificateName.Location = new System.Drawing.Point(294, 45);
            this.cboCertificateName.Name = "cboCertificateName";
            this.cboCertificateName.Size = new System.Drawing.Size(294, 25);
            this.cboCertificateName.TabIndex = 3;
            this.cboCertificateName.Visible = false;
            // 
            // cboCertificateType
            // 
            this.cboCertificateType.FormattingEnabled = true;
            this.cboCertificateType.Location = new System.Drawing.Point(148, 46);
            this.cboCertificateType.Name = "cboCertificateType";
            this.cboCertificateType.Size = new System.Drawing.Size(108, 25);
            this.cboCertificateType.TabIndex = 2;
            this.cboCertificateType.Text = "请选择";
            this.cboCertificateType.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(65, 103);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 1;
            this.label3.Text = "*获得时间";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(65, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "*证书名称";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgvCertificateData);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox2.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.groupBox2.Location = new System.Drawing.Point(0, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(661, 228);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "您可以在这里填写获得的各种证书。要修改或删除某证书，按\"编辑\"或\"删除\"。";
            // 
            // dgvCertificateData
            // 
            this.dgvCertificateData.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dgvCertificateData.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvCertificateData.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvCertificateData.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            this.dgvCertificateData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCertificateData.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column4,
            this.Column1,
            this.Column3,
            this.Modify,
            this.Delete,
            this.Column2,
            this.Column6,
            this.id,
            this.Column5});
            this.dgvCertificateData.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvCertificateData.Location = new System.Drawing.Point(3, 19);
            this.dgvCertificateData.Name = "dgvCertificateData";
            this.dgvCertificateData.ReadOnly = true;
            this.dgvCertificateData.RowTemplate.Height = 23;
            this.dgvCertificateData.Size = new System.Drawing.Size(655, 206);
            this.dgvCertificateData.TabIndex = 5;
            this.dgvCertificateData.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvCertificateData_CellContentClick);
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "certificateType";
            this.Column4.FillWeight = 90F;
            this.Column4.HeaderText = "证书类型";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "certificateName";
            this.Column1.FillWeight = 250F;
            this.Column1.HeaderText = "证书名称";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "GetDate";
            this.Column3.FillWeight = 150F;
            this.Column3.HeaderText = "颁发时间";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Modify
            // 
            this.Modify.FillWeight = 50F;
            this.Modify.HeaderText = "修改";
            this.Modify.Name = "Modify";
            this.Modify.ReadOnly = true;
            this.Modify.Text = "修改";
            this.Modify.ToolTipText = "修改";
            this.Modify.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.FillWeight = 50F;
            this.Delete.HeaderText = "删除";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Text = "删除";
            this.Delete.ToolTipText = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "CertificateGetDate";
            this.Column2.HeaderText = "起始时间";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Visible = false;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "ResumeId";
            this.Column6.HeaderText = "简历ID";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            this.Column6.Visible = false;
            // 
            // id
            // 
            this.id.DataPropertyName = "Id";
            this.id.HeaderText = "id";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "CertificateOrder";
            this.Column5.HeaderText = "排序方式";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Visible = false;
            // 
            // FormCertificate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(661, 453);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "FormCertificate";
            this.Text = "FormCretificate";
            this.Load += new System.EventHandler(this.FormCretificate_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCertificateData)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cboGetMonth;
        private System.Windows.Forms.ComboBox cboGetYear;
        private System.Windows.Forms.ComboBox cboCertificateName;
        private System.Windows.Forms.ComboBox cboCertificateType;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.TextBox txtCertificateNmae;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgvCertificateData;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewLinkColumn Modify;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
    }
}