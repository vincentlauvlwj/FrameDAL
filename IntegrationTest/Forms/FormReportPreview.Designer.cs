namespace ResumeFactory.Forms
{
    partial class FormReportPreview
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormReportPreview));
            this.previewControl = new FastReport.Preview.PreviewControl();
            this.SuspendLayout();
            // 
            // previewControl
            // 
            this.previewControl.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.previewControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.previewControl.Font = new System.Drawing.Font("宋体", 9F);
            this.previewControl.Location = new System.Drawing.Point(0, 0);
            this.previewControl.Name = "previewControl";
            this.previewControl.PageOffset = new System.Drawing.Point(10, 10);
            this.previewControl.Size = new System.Drawing.Size(732, 435);
            this.previewControl.TabIndex = 0;
            this.previewControl.UIStyle = FastReport.Utils.UIStyle.Office2007Black;
            // 
            // FormReportPreview
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(732, 435);
            this.Controls.Add(this.previewControl);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormReportPreview";
            this.ShowInTaskbar = false;
            this.Text = "预览简历";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FormReportPreview_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private FastReport.Preview.PreviewControl previewControl;
    }
}