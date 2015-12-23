namespace ResumeFactory.Forms.Details
{
    partial class FormCoverLetter
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
            this.btnCreatLetter = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.number = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dgvCoverLetterList = new System.Windows.Forms.DataGridView();
            this.CoverLetterName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CoverLastModified = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modify = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resume_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.content = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCoverLetterList)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCreatLetter
            // 
            this.btnCreatLetter.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnCreatLetter.Location = new System.Drawing.Point(10, 13);
            this.btnCreatLetter.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnCreatLetter.Name = "btnCreatLetter";
            this.btnCreatLetter.Size = new System.Drawing.Size(100, 30);
            this.btnCreatLetter.TabIndex = 0;
            this.btnCreatLetter.Text = "创建求职信...";
            this.btnCreatLetter.UseVisualStyleBackColor = true;
            this.btnCreatLetter.Click += new System.EventHandler(this.btnCreatLetter_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(381, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(142, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "共可创建10份，还可创建";
            // 
            // number
            // 
            this.number.AutoSize = true;
            this.number.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.number.Location = new System.Drawing.Point(519, 20);
            this.number.Name = "number";
            this.number.Size = new System.Drawing.Size(22, 17);
            this.number.TabIndex = 2;
            this.number.Text = "10";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(535, 20);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "份。";
            // 
            // dgvCoverLetterList
            // 
            this.dgvCoverLetterList.AllowUserToAddRows = false;
            this.dgvCoverLetterList.AllowUserToDeleteRows = false;
            this.dgvCoverLetterList.AllowUserToResizeColumns = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.dgvCoverLetterList.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvCoverLetterList.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvCoverLetterList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvCoverLetterList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dgvCoverLetterList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCoverLetterList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.CoverLetterName,
            this.CoverLastModified,
            this.Modify,
            this.Delete,
            this.id,
            this.resume_id,
            this.content});
            this.dgvCoverLetterList.Location = new System.Drawing.Point(1, 64);
            this.dgvCoverLetterList.Name = "dgvCoverLetterList";
            this.dgvCoverLetterList.ReadOnly = true;
            this.dgvCoverLetterList.RowTemplate.Height = 23;
            this.dgvCoverLetterList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgvCoverLetterList.Size = new System.Drawing.Size(683, 452);
            this.dgvCoverLetterList.TabIndex = 4;
            this.dgvCoverLetterList.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvCoverLetterList_CellContentClick);
            // 
            // CoverLetterName
            // 
            this.CoverLetterName.DataPropertyName = "CoverLetterName";
            this.CoverLetterName.HeaderText = "求职信名称";
            this.CoverLetterName.Name = "CoverLetterName";
            this.CoverLetterName.ReadOnly = true;
            // 
            // CoverLastModified
            // 
            this.CoverLastModified.DataPropertyName = "CoverLastModified";
            this.CoverLastModified.HeaderText = "最后编辑时间";
            this.CoverLastModified.Name = "CoverLastModified";
            this.CoverLastModified.ReadOnly = true;
            // 
            // Modify
            // 
            this.Modify.HeaderText = "修改";
            this.Modify.Name = "Modify";
            this.Modify.ReadOnly = true;
            this.Modify.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Modify.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Modify.Text = "修改";
            this.Modify.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.HeaderText = "删除";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Text = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // id
            // 
            this.id.DataPropertyName = "Id";
            this.id.HeaderText = "ID";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // resume_id
            // 
            this.resume_id.DataPropertyName = "ResumeId";
            this.resume_id.HeaderText = "简历ID";
            this.resume_id.Name = "resume_id";
            this.resume_id.ReadOnly = true;
            this.resume_id.Visible = false;
            // 
            // content
            // 
            this.content.DataPropertyName = "CoverLetterContent";
            this.content.HeaderText = "求职信内容";
            this.content.Name = "content";
            this.content.ReadOnly = true;
            this.content.Visible = false;
            // 
            // btnRefresh
            // 
            this.btnRefresh.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnRefresh.Location = new System.Drawing.Point(111, 13);
            this.btnRefresh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(100, 30);
            this.btnRefresh.TabIndex = 5;
            this.btnRefresh.Text = "刷新";
            this.btnRefresh.UseVisualStyleBackColor = true;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // btnNext
            // 
            this.btnNext.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnNext.Location = new System.Drawing.Point(212, 13);
            this.btnNext.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(100, 30);
            this.btnNext.TabIndex = 6;
            this.btnNext.Text = "下一项";
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Location = new System.Drawing.Point(324, 20);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(32, 17);
            this.linkLabel1.TabIndex = 7;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "返回";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnCreatLetter);
            this.panel1.Controls.Add(this.linkLabel1);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.btnRefresh);
            this.panel1.Controls.Add(this.number);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnNext);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(682, 58);
            this.panel1.TabIndex = 8;
            // 
            // FormCoverLetter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(682, 516);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dgvCoverLetterList);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormCoverLetter";
            this.Text = "FormCoverLetter";
            this.Load += new System.EventHandler(this.FormCoverLetter_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCoverLetterList)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCreatLetter;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label number;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dgvCoverLetterList;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridViewTextBoxColumn CoverLetterName;
        private System.Windows.Forms.DataGridViewTextBoxColumn CoverLastModified;
        private System.Windows.Forms.DataGridViewLinkColumn Modify;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn resume_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn content;
    }
}