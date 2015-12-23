namespace ResumeFactory.Forms
{
    partial class FormMine
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
            this.dgvResume = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ResumeName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TemplateName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ResumeShareStr = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ScoreStars = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Setting = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Edit = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Delete = new System.Windows.Forms.DataGridViewLinkColumn();
            this.Preview = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnAdd = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvResume)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvResume
            // 
            this.dgvResume.AllowUserToAddRows = false;
            this.dgvResume.AllowUserToDeleteRows = false;
            this.dgvResume.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvResume.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvResume.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.ResumeName,
            this.TemplateName,
            this.ResumeShareStr,
            this.ScoreStars,
            this.Setting,
            this.Edit,
            this.Delete,
            this.Preview});
            this.dgvResume.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvResume.Location = new System.Drawing.Point(0, 48);
            this.dgvResume.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvResume.Name = "dgvResume";
            this.dgvResume.ReadOnly = true;
            this.dgvResume.RowTemplate.Height = 23;
            this.dgvResume.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvResume.Size = new System.Drawing.Size(726, 415);
            this.dgvResume.TabIndex = 6;
            this.dgvResume.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvResume_CellContentClick);
            this.dgvResume.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dgvResume_CellFormatting);
            // 
            // Id
            // 
            this.Id.DataPropertyName = "Id";
            this.Id.HeaderText = "Id";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            // 
            // ResumeName
            // 
            this.ResumeName.DataPropertyName = "ResumeName";
            this.ResumeName.FillWeight = 93.19231F;
            this.ResumeName.HeaderText = "简历名";
            this.ResumeName.Name = "ResumeName";
            this.ResumeName.ReadOnly = true;
            // 
            // TemplateName
            // 
            this.TemplateName.DataPropertyName = "TemplateName";
            this.TemplateName.FillWeight = 93.19231F;
            this.TemplateName.HeaderText = "模版名";
            this.TemplateName.Name = "TemplateName";
            this.TemplateName.ReadOnly = true;
            // 
            // ResumeShareStr
            // 
            this.ResumeShareStr.DataPropertyName = "ResumeShareStr";
            this.ResumeShareStr.FillWeight = 50F;
            this.ResumeShareStr.HeaderText = "是否公开";
            this.ResumeShareStr.Name = "ResumeShareStr";
            this.ResumeShareStr.ReadOnly = true;
            // 
            // ScoreStars
            // 
            this.ScoreStars.DataPropertyName = "ScoreStars";
            this.ScoreStars.FillWeight = 50F;
            this.ScoreStars.HeaderText = "评分";
            this.ScoreStars.Name = "ScoreStars";
            this.ScoreStars.ReadOnly = true;
            // 
            // Setting
            // 
            this.Setting.FillWeight = 20F;
            this.Setting.HeaderText = "设置";
            this.Setting.Name = "Setting";
            this.Setting.ReadOnly = true;
            this.Setting.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Setting.Text = "设置";
            this.Setting.UseColumnTextForLinkValue = true;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 20F;
            this.Edit.HeaderText = "编辑";
            this.Edit.Name = "Edit";
            this.Edit.ReadOnly = true;
            this.Edit.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Edit.Text = "编辑";
            this.Edit.UseColumnTextForLinkValue = true;
            // 
            // Delete
            // 
            this.Delete.FillWeight = 20F;
            this.Delete.HeaderText = "删除";
            this.Delete.Name = "Delete";
            this.Delete.ReadOnly = true;
            this.Delete.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Delete.Text = "删除";
            this.Delete.UseColumnTextForLinkValue = true;
            // 
            // Preview
            // 
            this.Preview.FillWeight = 20F;
            this.Preview.HeaderText = "预览";
            this.Preview.Name = "Preview";
            this.Preview.ReadOnly = true;
            this.Preview.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Preview.Text = "预览";
            this.Preview.UseColumnTextForLinkValue = true;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnAdd);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(726, 48);
            this.panel3.TabIndex = 5;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(3, 13);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(87, 26);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "新增...";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // FormMine
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(726, 463);
            this.Controls.Add(this.dgvResume);
            this.Controls.Add(this.panel3);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormMine";
            this.Text = "FormMine";
            ((System.ComponentModel.ISupportInitialize)(this.dgvResume)).EndInit();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvResume;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn ResumeName;
        private System.Windows.Forms.DataGridViewTextBoxColumn TemplateName;
        private System.Windows.Forms.DataGridViewTextBoxColumn ResumeShareStr;
        private System.Windows.Forms.DataGridViewTextBoxColumn ScoreStars;
        private System.Windows.Forms.DataGridViewLinkColumn Setting;
        private System.Windows.Forms.DataGridViewLinkColumn Edit;
        private System.Windows.Forms.DataGridViewLinkColumn Delete;
        private System.Windows.Forms.DataGridViewLinkColumn Preview;
    }
}