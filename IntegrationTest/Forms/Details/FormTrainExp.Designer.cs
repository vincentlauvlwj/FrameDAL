namespace ResumeFactory.Forms.Details
{
    partial class FormTrainExp
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
            this.dgvTrainExpList = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnSave = new System.Windows.Forms.Button();
            this.linkBack = new System.Windows.Forms.LinkLabel();
            this.btnSaveAndNew = new System.Windows.Forms.Button();
            this.tbTrainDesc = new System.Windows.Forms.TextBox();
            this.tbTrainCertificate = new System.Windows.Forms.TextBox();
            this.tbTrainAddress = new System.Windows.Forms.TextBox();
            this.tbTrainCourse = new System.Windows.Forms.TextBox();
            this.tbTrainFirm = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dtpEndDate = new System.Windows.Forms.DateTimePicker();
            this.dtpStartDate = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label8 = new System.Windows.Forms.Label();
            this.TrainFirm = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrainTime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrainCourse = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ResumeId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrainCertificate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrainAddress = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrainDesc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTrainExpList)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvTrainExpList
            // 
            this.dgvTrainExpList.AllowUserToAddRows = false;
            this.dgvTrainExpList.AllowUserToDeleteRows = false;
            this.dgvTrainExpList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvTrainExpList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTrainExpList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TrainFirm,
            this.TrainTime,
            this.TrainCourse,
            this.Edit,
            this.Delete,
            this.Id,
            this.ResumeId,
            this.TrainCertificate,
            this.TrainAddress,
            this.TrainDesc});
            this.dgvTrainExpList.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvTrainExpList.Location = new System.Drawing.Point(0, 31);
            this.dgvTrainExpList.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvTrainExpList.Name = "dgvTrainExpList";
            this.dgvTrainExpList.ReadOnly = true;
            this.dgvTrainExpList.RowTemplate.Height = 23;
            this.dgvTrainExpList.Size = new System.Drawing.Size(785, 141);
            this.dgvTrainExpList.TabIndex = 0;
            this.dgvTrainExpList.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTrainExpList_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 172);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(785, 515);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "新增培训经历（*为必填项）";
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.linkBack);
            this.panel1.Controls.Add(this.btnSaveAndNew);
            this.panel1.Controls.Add(this.tbTrainDesc);
            this.panel1.Controls.Add(this.tbTrainCertificate);
            this.panel1.Controls.Add(this.tbTrainAddress);
            this.panel1.Controls.Add(this.tbTrainCourse);
            this.panel1.Controls.Add(this.tbTrainFirm);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.dtpEndDate);
            this.panel1.Controls.Add(this.dtpStartDate);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 20);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(779, 491);
            this.panel1.TabIndex = 0;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(364, 392);
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
            this.linkBack.Location = new System.Drawing.Point(504, 396);
            this.linkBack.Name = "linkBack";
            this.linkBack.Size = new System.Drawing.Size(42, 21);
            this.linkBack.TabIndex = 46;
            this.linkBack.TabStop = true;
            this.linkBack.Text = "返回";
            this.linkBack.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkBack_LinkClicked);
            // 
            // btnSaveAndNew
            // 
            this.btnSaveAndNew.Location = new System.Drawing.Point(181, 392);
            this.btnSaveAndNew.Name = "btnSaveAndNew";
            this.btnSaveAndNew.Size = new System.Drawing.Size(141, 33);
            this.btnSaveAndNew.TabIndex = 45;
            this.btnSaveAndNew.Text = "保存并新增培训经历";
            this.btnSaveAndNew.UseVisualStyleBackColor = true;
            this.btnSaveAndNew.Click += new System.EventHandler(this.btnSaveAndNew_Click);
            // 
            // tbTrainDesc
            // 
            this.tbTrainDesc.Location = new System.Drawing.Point(181, 175);
            this.tbTrainDesc.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbTrainDesc.Multiline = true;
            this.tbTrainDesc.Name = "tbTrainDesc";
            this.tbTrainDesc.Size = new System.Drawing.Size(342, 157);
            this.tbTrainDesc.TabIndex = 27;
            // 
            // tbTrainCertificate
            // 
            this.tbTrainCertificate.Location = new System.Drawing.Point(181, 144);
            this.tbTrainCertificate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbTrainCertificate.Name = "tbTrainCertificate";
            this.tbTrainCertificate.Size = new System.Drawing.Size(342, 23);
            this.tbTrainCertificate.TabIndex = 26;
            // 
            // tbTrainAddress
            // 
            this.tbTrainAddress.Location = new System.Drawing.Point(181, 113);
            this.tbTrainAddress.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbTrainAddress.Name = "tbTrainAddress";
            this.tbTrainAddress.Size = new System.Drawing.Size(342, 23);
            this.tbTrainAddress.TabIndex = 25;
            // 
            // tbTrainCourse
            // 
            this.tbTrainCourse.Location = new System.Drawing.Point(181, 82);
            this.tbTrainCourse.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbTrainCourse.Name = "tbTrainCourse";
            this.tbTrainCourse.Size = new System.Drawing.Size(342, 23);
            this.tbTrainCourse.TabIndex = 24;
            // 
            // tbTrainFirm
            // 
            this.tbTrainFirm.Location = new System.Drawing.Point(181, 51);
            this.tbTrainFirm.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbTrainFirm.Name = "tbTrainFirm";
            this.tbTrainFirm.Size = new System.Drawing.Size(342, 23);
            this.tbTrainFirm.TabIndex = 23;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(333, 25);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(20, 17);
            this.label7.TabIndex = 22;
            this.label7.Text = "至";
            // 
            // dtpEndDate
            // 
            this.dtpEndDate.Location = new System.Drawing.Point(372, 20);
            this.dtpEndDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpEndDate.Name = "dtpEndDate";
            this.dtpEndDate.Size = new System.Drawing.Size(119, 23);
            this.dtpEndDate.TabIndex = 21;
            // 
            // dtpStartDate
            // 
            this.dtpStartDate.Location = new System.Drawing.Point(181, 20);
            this.dtpStartDate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpStartDate.Name = "dtpStartDate";
            this.dtpStartDate.Size = new System.Drawing.Size(128, 23);
            this.dtpStartDate.TabIndex = 20;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(38, 178);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(56, 17);
            this.label6.TabIndex = 19;
            this.label6.Text = "详细描述";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(38, 147);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 17);
            this.label5.TabIndex = 18;
            this.label5.Text = "获得证书";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(38, 119);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 17);
            this.label4.TabIndex = 17;
            this.label4.Text = "培训地点";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(38, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 16;
            this.label3.Text = "*培训课程";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(38, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 17);
            this.label2.TabIndex = 15;
            this.label2.Text = "*培训机构";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(38, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 17);
            this.label1.TabIndex = 14;
            this.label1.Text = "*时间";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label8);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(785, 31);
            this.panel2.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(3, 9);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(582, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "请在页面下方\"新增培训课程\"处填写新的培训课程。 要更改或删除某项培训课程，请按\"编辑\"或\"删除\"链接。";
            // 
            // TrainFirm
            // 
            this.TrainFirm.DataPropertyName = "TrainSchool";
            this.TrainFirm.FillWeight = 110.4842F;
            this.TrainFirm.HeaderText = "培训机构";
            this.TrainFirm.Name = "TrainFirm";
            this.TrainFirm.ReadOnly = true;
            // 
            // TrainTime
            // 
            this.TrainTime.DataPropertyName = "TrainTime";
            this.TrainTime.FillWeight = 145.9444F;
            this.TrainTime.HeaderText = "培训时间";
            this.TrainTime.Name = "TrainTime";
            this.TrainTime.ReadOnly = true;
            // 
            // TrainCourse
            // 
            this.TrainCourse.DataPropertyName = "TrainCourse";
            this.TrainCourse.FillWeight = 138.6649F;
            this.TrainCourse.HeaderText = "培训课程";
            this.TrainCourse.Name = "TrainCourse";
            this.TrainCourse.ReadOnly = true;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 50.76142F;
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
            this.Delete.FillWeight = 54.14511F;
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
            this.Id.HeaderText = "培训经历Id";
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
            // TrainCertificate
            // 
            this.TrainCertificate.DataPropertyName = "TrainCertificate";
            this.TrainCertificate.HeaderText = "获得证书";
            this.TrainCertificate.Name = "TrainCertificate";
            this.TrainCertificate.ReadOnly = true;
            this.TrainCertificate.Visible = false;
            // 
            // TrainAddress
            // 
            this.TrainAddress.DataPropertyName = "TrainAddress";
            this.TrainAddress.HeaderText = "培训地点";
            this.TrainAddress.Name = "TrainAddress";
            this.TrainAddress.ReadOnly = true;
            this.TrainAddress.Visible = false;
            // 
            // TrainDesc
            // 
            this.TrainDesc.DataPropertyName = "TrainDesc";
            this.TrainDesc.HeaderText = "描述";
            this.TrainDesc.Name = "TrainDesc";
            this.TrainDesc.ReadOnly = true;
            this.TrainDesc.Visible = false;
            // 
            // FormTrainExp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 687);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvTrainExpList);
            this.Controls.Add(this.panel2);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormTrainExp";
            this.Text = "FormTrainExep";
            ((System.ComponentModel.ISupportInitialize)(this.dgvTrainExpList)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTrainExpList;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tbTrainDesc;
        private System.Windows.Forms.TextBox tbTrainCertificate;
        private System.Windows.Forms.TextBox tbTrainAddress;
        private System.Windows.Forms.TextBox tbTrainCourse;
        private System.Windows.Forms.TextBox tbTrainFirm;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dtpEndDate;
        private System.Windows.Forms.DateTimePicker dtpStartDate;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.LinkLabel linkBack;
        private System.Windows.Forms.Button btnSaveAndNew;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainFirm;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainTime;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainCourse;
        private System.Windows.Forms.DataGridViewLinkColumn Edit;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn ResumeId;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainCertificate;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainAddress;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrainDesc;
    }
}