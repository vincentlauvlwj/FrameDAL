namespace ResumeFactory.Forms
{
    partial class FormFriends
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
            this.datagvFriends = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewLinkColumn();
            this.linkPrePage = new System.Windows.Forms.LinkLabel();
            this.linkNextPage = new System.Windows.Forms.LinkLabel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txboxCurPage = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.linkFirstPage = new System.Windows.Forms.LinkLabel();
            this.linkLastPage = new System.Windows.Forms.LinkLabel();
            this.labelTotalPage = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.datagvFriends)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // datagvFriends
            // 
            this.datagvFriends.AllowUserToAddRows = false;
            this.datagvFriends.AllowUserToDeleteRows = false;
            this.datagvFriends.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.datagvFriends.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.datagvFriends.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datagvFriends.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4});
            this.datagvFriends.Dock = System.Windows.Forms.DockStyle.Fill;
            this.datagvFriends.GridColor = System.Drawing.SystemColors.GrayText;
            this.datagvFriends.Location = new System.Drawing.Point(0, 0);
            this.datagvFriends.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.datagvFriends.Name = "datagvFriends";
            this.datagvFriends.ReadOnly = true;
            this.datagvFriends.RowTemplate.Height = 23;
            this.datagvFriends.Size = new System.Drawing.Size(841, 359);
            this.datagvFriends.TabIndex = 0;
            this.datagvFriends.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.datagvFriends_CellContentClick);
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "ResumeId";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // Column1
            // 
            this.Column1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column1.DataPropertyName = "UserName";
            this.Column1.HeaderText = "用户名";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 140;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "ResumeName";
            this.Column2.HeaderText = "模板名称";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column3.DataPropertyName = "Stars";
            this.Column3.HeaderText = "评分";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 120;
            // 
            // Column4
            // 
            this.Column4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Column4.HeaderText = "操作";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            this.Column4.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column4.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column4.Text = "立即围观";
            this.Column4.ToolTipText = "立即围观";
            this.Column4.UseColumnTextForLinkValue = true;
            this.Column4.Width = 90;
            // 
            // linkPrePage
            // 
            this.linkPrePage.AutoSize = true;
            this.linkPrePage.Location = new System.Drawing.Point(161, 4);
            this.linkPrePage.Name = "linkPrePage";
            this.linkPrePage.Size = new System.Drawing.Size(44, 17);
            this.linkPrePage.TabIndex = 1;
            this.linkPrePage.TabStop = true;
            this.linkPrePage.Text = "上一页";
            this.linkPrePage.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkPrePage_LinkClicked);
            // 
            // linkNextPage
            // 
            this.linkNextPage.AutoSize = true;
            this.linkNextPage.Location = new System.Drawing.Point(211, 4);
            this.linkNextPage.Name = "linkNextPage";
            this.linkNextPage.Size = new System.Drawing.Size(44, 17);
            this.linkNextPage.TabIndex = 2;
            this.linkNextPage.TabStop = true;
            this.linkNextPage.Text = "下一页";
            this.linkNextPage.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkNextPage_LinkClicked);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txboxCurPage);
            this.panel1.Controls.Add(this.labelTotalPage);
            this.panel1.Controls.Add(this.linkLastPage);
            this.panel1.Controls.Add(this.linkFirstPage);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.linkNextPage);
            this.panel1.Controls.Add(this.linkPrePage);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 359);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(841, 25);
            this.panel1.TabIndex = 3;
            // 
            // txboxCurPage
            // 
            this.txboxCurPage.Location = new System.Drawing.Point(33, 1);
            this.txboxCurPage.Name = "txboxCurPage";
            this.txboxCurPage.Size = new System.Drawing.Size(34, 23);
            this.txboxCurPage.TabIndex = 3;
            this.txboxCurPage.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txboxCurPage_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 4);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(20, 17);
            this.label1.TabIndex = 4;
            this.label1.Text = "第";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(67, 4);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(20, 17);
            this.label2.TabIndex = 5;
            this.label2.Text = "页";
            // 
            // linkFirstPage
            // 
            this.linkFirstPage.AutoSize = true;
            this.linkFirstPage.Location = new System.Drawing.Point(261, 4);
            this.linkFirstPage.Name = "linkFirstPage";
            this.linkFirstPage.Size = new System.Drawing.Size(32, 17);
            this.linkFirstPage.TabIndex = 6;
            this.linkFirstPage.TabStop = true;
            this.linkFirstPage.Text = "首页";
            this.linkFirstPage.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkFirstPage_LinkClicked);
            // 
            // linkLastPage
            // 
            this.linkLastPage.AutoSize = true;
            this.linkLastPage.Location = new System.Drawing.Point(299, 4);
            this.linkLastPage.Name = "linkLastPage";
            this.linkLastPage.Size = new System.Drawing.Size(32, 17);
            this.linkLastPage.TabIndex = 7;
            this.linkLastPage.TabStop = true;
            this.linkLastPage.Text = "末页";
            this.linkLastPage.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLastPage_LinkClicked);
            // 
            // labelTotalPage
            // 
            this.labelTotalPage.AutoSize = true;
            this.labelTotalPage.Location = new System.Drawing.Point(93, 4);
            this.labelTotalPage.Name = "labelTotalPage";
            this.labelTotalPage.Size = new System.Drawing.Size(66, 17);
            this.labelTotalPage.TabIndex = 8;
            this.labelTotalPage.Text = "共{total}页";
            // 
            // FormFriends
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 384);
            this.Controls.Add(this.datagvFriends);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormFriends";
            this.Text = "FormFriends";
            ((System.ComponentModel.ISupportInitialize)(this.datagvFriends)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView datagvFriends;
        private System.Windows.Forms.LinkLabel linkPrePage;
        private System.Windows.Forms.LinkLabel linkNextPage;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewLinkColumn Column4;
        private System.Windows.Forms.LinkLabel linkLastPage;
        private System.Windows.Forms.LinkLabel linkFirstPage;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txboxCurPage;
        private System.Windows.Forms.Label labelTotalPage;
    }
}