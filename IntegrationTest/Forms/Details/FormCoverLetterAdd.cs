using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Entity;
using System.Data;
using ResumeFactory.Service.Details;
namespace ResumeFactory.Forms.Details
{
    public partial class FormCoverLetterAdd : Form
    {
        private Resume resume;
        private CoverLetterService coverletterservice;
        private CoverLetter newcoverletter;
        private CoverLetter modifyCoverLetter;       
        private FormCoverLetter fcl;
        public Resume setResume
        {
            set { resume = value; }
            get { return resume; }
        }

        public CoverLetter setCoverLetter
        {
            set { modifyCoverLetter = value; }
            get { return modifyCoverLetter; }
        }

        public FormCoverLetterAdd()
        {
            InitializeComponent();
            richTextBox2.ReadOnly = true;
            richTextBox3.ReadOnly = true;
        }
        /// <summary>
        /// 窗口加载初始化，检测是creat还是modify
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormCoverLetterAdd_Load(object sender, EventArgs e)
        {
            
            if (modifyCoverLetter != null)
            {              
                this.txtCoverLetterName.Text = modifyCoverLetter.CoverLetterName;
                this.rtxtCoverLetterContens.Text = modifyCoverLetter.CoverLetterContent;

                this.btnAdd.Visible = false;
                this.button1.Visible = true;
                
            }
            else
            {
                this.btnAdd.Visible = true;
                this.button1.Visible = false;
            }
            fcl = (FormCoverLetter)this.Owner;
            fcl.setFlagCreating = true;
        }
        /// <summary>
        /// 内容发生改变
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {
            this.label4.Text = (rtxtCoverLetterContens.MaxLength-rtxtCoverLetterContens.TextLength).ToString();
            if (txtCoverLetterName.Text == "")
            {   
                label1.ForeColor = Color.Red;
                MessageBox.Show("请先输入求职信名称", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);
                rtxtCoverLetterContens.Text = "";              
                txtCoverLetterName.Focus();
            }
            if(rtxtCoverLetterContens.TextLength>=4000)
                MessageBox.Show("字数超出要求", "警告", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }
       /// <summary>
       /// 范例
       /// </summary>
       /// <param name="sender"></param>
       /// <param name="e"></param>
        private void linkLabel1_MouseHover(object sender, EventArgs e)
        {
            panel1.Visible = true;
            richTextBox2.Visible = true;
            richTextBox3.Visible = false;
        }
       /// <summary>
       /// 范例
       /// </summary>
       /// <param name="sender"></param>
       /// <param name="e"></param>
        private void linkLabel2_MouseHover(object sender, EventArgs e)
        {
            panel1.Visible = true;
            richTextBox3.Visible = true;
            richTextBox2.Visible = false;
        }

        private void richTextBox3_MouseLeave(object sender, EventArgs e)
        {
            panel1.Visible = false;
           
        }

        private void txtCoverLetterNmae_TextChanged(object sender, EventArgs e)
        {
            label1.ForeColor = SystemColors.ControlText; ;
            
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.txtCoverLetterName.Text == "")
            {
                MessageBox.Show("求职信内容为空");
                return;
            }
            newcoverletter = new CoverLetter();
            newcoverletter.ResumeId = resume.Id;
            newcoverletter.CoverLetterName = txtCoverLetterName.Text;
            newcoverletter.CoverLetterContent = rtxtCoverLetterContens.Text;
            newcoverletter.CoverLastModified = DateTime.Now;
            coverletterservice = new CoverLetterService();
            coverletterservice.AddOrUpdate(newcoverletter);
            this.Close();
            fcl.setFlagCreating = false;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

            //fcl.setFlagCreating = false;
            this.Close();
            
        }

      
        /// <summary>
        /// modify提交
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button1_Click(object sender, EventArgs e)
        {
            if ((modifyCoverLetter.CoverLetterName != this.txtCoverLetterName.Text) | (modifyCoverLetter.CoverLetterContent != this.rtxtCoverLetterContens.Text))
            {
                modifyCoverLetter.CoverLetterName = this.txtCoverLetterName.Text;
                modifyCoverLetter.CoverLetterContent = this.rtxtCoverLetterContens.Text;
                modifyCoverLetter.CoverLastModified = DateTime.Now;
                coverletterservice = new CoverLetterService();
                coverletterservice.AddOrUpdate(modifyCoverLetter);
            }
            this.Close();
        }

        private void FormCoverLetterAdd_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (modifyCoverLetter == null)
            {
                fcl.setFlagCreating = false;
            }
            //else fcl.setFlagCreating = true;
        }
    }
}
