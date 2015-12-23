using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ResumeFactory.Common;
using ResumeFactory.Entity;
using ResumeFactory.Service.Details;

namespace ResumeFactory.Forms.Details
{
    public partial class FormCertificate : Form,IRefreshable
    {
        private Resume resume;
        private Certificate certificate;
        private List<Certificate> certificateList;
        private List<CertificateDict> certificateDictList;
        private CertificateService certificateService = new CertificateService();
        private bool saveState = false;

        public FormCertificate()
        {
            InitializeComponent();
        }

        public void OnBringToFront(object data)
        {
            clearInfo();
            resume = data as Resume;
            if (resume == null)
            {
                resume = new Resume();
                return;
            }
            else RefreshDgvData(resume);
            
               
        }
        /// <summary>
        /// formload事件
        /// 加载cboBox内容，设置表格属性
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FormCretificate_Load(object sender, EventArgs e)
        {
           
            //证书字典加载
            certificateDictList = certificateService.GetCertificateDict();
            if (certificateDictList != null)
            {
                for (int i = 0; i < certificateDictList.Count; i++)
                    if (certificateDictList[i].CertificateType != "")
                        cboCertificateType.Items.Add(certificateDictList[i].CertificateType);
            }
            this.cboCertificateName.Text = "";
            this.txtCertificateNmae.Text = "";
            for (int i = 1990; i <= DateTime.Now.Year; i++)
            {
                cboGetYear.Items.Add(i);
            }
            cboGetYear.Text = DateTime.Now.Year.ToString();
            cboGetMonth.Text = DateTime.Now.Month.ToString();
            dgvCertificateData.Columns[0].Width = 80;
            dgvCertificateData.Columns[2].Width = 70;
            dgvCertificateData.Columns[3].Width = 70;
            dgvCertificateData.Columns[4].Width = 80;
        }
       /// <summary>
       /// 刷新数据列表
       /// </summary>
       /// <param name="resume"></param>
        private void RefreshDgvData(Resume resume)
        {
            try
            {
                certificateList = certificateService.GetCertificateListByResume(resume);
                if (certificateList != null)
                {
                    dgvCertificateData.AutoGenerateColumns = false;
                    dgvCertificateData.DataSource = certificateList;
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("读取数据失败"+e.Message);
                throw new NotImplementedException();
            }          
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String[] fLanguage = {"托福","雅思","大学英语六级","大学英语四级","通用英语高级","通用英语初级","德语高级"};
            //String[] computer = {"全国计算机等级二级","程序员","网络初级","USN认证","思科认证"};
            //String[] accounting = {"注册会计师","高级会计师","中级会计师","助理会计师"};
            //String[] technical = {"初级工程师","高级工程师","助理工程师"};
            //String[] other = {"全国律师资格证书","注册建筑师","公共营养师"};
            cboCertificateType.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCertificateName.DropDownStyle = ComboBoxStyle.DropDownList;
            txtCertificateNmae.Visible = false;
            try
            {
                switch (cboCertificateType.Text)
                {
                    case "外语证书": cboCertificateName.Visible = true; cboCertificateName.Items.Clear();
                        for (int i = 0; i < certificateDictList.Count; i++)
                        {
                            if (certificateDictList[i].CertificateNameLanguage != "")
                                this.cboCertificateName.Items.Add(certificateDictList[i].CertificateNameLanguage);
                        } break;
                    case "计算机证书": cboCertificateName.Visible = true; cboCertificateName.Items.Clear();
                        for (int i = 0; i < certificateDictList.Count; i++)
                        {
                            if (certificateDictList[i].CertificateNameComputer != "")
                                this.cboCertificateName.Items.Add(certificateDictList[i].CertificateNameComputer);
                        } break;
                    case "会计证书": cboCertificateName.Visible = true; cboCertificateName.Items.Clear();
                        for (int i = 0; i < certificateDictList.Count; i++)
                        {
                            if (certificateDictList[i].CertificateNameAccounting != "")
                                this.cboCertificateName.Items.Add(certificateDictList[i].CertificateNameAccounting);
                        } break;
                    case "职称证书": cboCertificateName.Visible = true; cboCertificateName.Items.Clear();
                        for (int i = 0; i < certificateDictList.Count; i++)
                        {
                            if (certificateDictList[i].CertificateNamePost != "")
                                this.cboCertificateName.Items.Add(certificateDictList[i].CertificateNamePost);
                        } break;
                    case "其它证书": cboCertificateName.Visible = true; cboCertificateName.Items.Clear();
                        for (int i = 0; i < certificateDictList.Count; i++)
                        {
                            if (certificateDictList[i].CertificateNameOther != "")
                                this.cboCertificateName.Items.Add(certificateDictList[i].CertificateNameOther);
                        } break;
                    case "自定义证书": cboCertificateName.Visible = false; txtCertificateNmae.Visible = true; break;
                    default: break;
                }
                cboCertificateName.SelectedIndex = 0;
            }
            catch { }
            
        }
        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboGetYear.DropDownStyle = ComboBoxStyle.DropDownList;
            cboGetMonth.DropDownStyle = ComboBoxStyle.DropDownList;             
        }
        /// <summary>
        /// 添加证书并更新数据列表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, EventArgs e)
        {
            CreatAndAdd();
            clearInfo();
            this.saveState = true;
        }
        /// <summary>
        /// 添加证书并更新数据列表
        /// </summary>
        private void CreatAndAdd()
        {
            if (cboCertificateName.Text == "" && txtCertificateNmae.Text == "" || cboGetYear.Text == "" || cboGetMonth.Text == "")
            {
                MessageBox.Show("信息不完整");
                return;
            }
            certificate = new Certificate();
            certificate.ResumeId = resume.Id;
            certificate.CertificateType = cboCertificateType.Text;
            certificate.CertificateName = (cboCertificateType.Text != "自定义证书") ? cboCertificateName.Text : txtCertificateNmae.Text;
            try
            {
                String data = cboGetYear.Text + "-" + cboGetMonth.Text;
                certificate.CertificateGetDate = DateTime.Parse(data);
            }
            catch
            { MessageBox.Show("请输入完整日期"); }
            if (TheSameCertificate(resume, certificate.CertificateName))
            {
                MessageBox.Show("证书" + "【" + certificate.CertificateName.ToString() + "】" + "已经存在");
                clearInfo();
                return;
            }
            else
                certificateService.AddOrUpdate(certificate);
            RefreshDgvData(this.resume);
        }
        /// <summary>
        /// 根据简历ID和证书名称判断证书是否有重复，重复返回true，否则返回false
        /// </summary>
        /// <param name="resume"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        private bool TheSameCertificate(Resume resume, string p)
        {
            RefreshDgvData(this.resume);
            for (int i = 0; i < certificateList.Count; i++)
            {
                if ((certificateList[i].ResumeId == certificate.ResumeId) && (certificateList[i].CertificateName == certificate.CertificateName))
                    return true;
            }
            return false;
            //throw new NotImplementedException();
        }
        /// <summary>
        /// 进入下一项
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            if (saveState == true)
                (this.Owner as FormDetails).NextPage();
            else
            {
                DialogResult result = MessageBox.Show("还未保存，是否保存", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                if (result == DialogResult.OK)
                {
                    CreatAndAdd();
                    clearInfo();
                    (this.Owner as FormDetails).NextPage();
                }
            }
            clearInfo();
            (this.Owner as FormDetails).NextPage();

        }

        private void clearInfo()
        {
            this.txtCertificateNmae.Text = null;
            this.cboCertificateName.Text = null;
            this.cboCertificateType.Text = null;
            this.cboGetYear.Text = DateTime.Now.Year.ToString();
            this.cboGetMonth.Text = DateTime.Now.Month.ToString();
            this.txtCertificateNmae.Visible = false;
            this.cboCertificateName.Visible = false;
        }
        /// <summary>
        /// 返回主界面
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (saveState == true)
                (this.Owner as FormDetails).BackToMain();
            else
            {
                DialogResult result = MessageBox.Show("还未保存，是否保存", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                if (result == DialogResult.OK)
                {
                    CreatAndAdd(); 
                    (this.Owner as FormDetails).BackToMain();
                }
            }
        }
        /// <summary>
        /// 操作数据列表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvCertificateData_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;
            if (dgvCertificateData.Columns[e.ColumnIndex].Name == "Delete")
            {   
                List<Certificate> temp = dgvCertificateData.DataSource as List<Certificate>;
                Certificate cert = GetCertificateFromDgv(e.RowIndex);
                DialogResult result = MessageBox.Show("确定要删除该项？删除后不可恢复", "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    try
                    {
                        certificateService.Delete(cert);
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show("删除记录出错"+ex.Message);
                    }
                    dgvCertificateData.DataSource = null;
                    temp.Remove(cert);
                    dgvCertificateData.DataSource = temp;
                }
            }
            if (dgvCertificateData.Columns[e.ColumnIndex].Name == "Modify")
            {
                 List<Certificate> cerList = dgvCertificateData.DataSource as List<Certificate>;
                 certificate = cerList[e.RowIndex];
                 this.cboCertificateType.Text = certificate.CertificateType;
                 if (certificate.CertificateType == "自定义证书")
                 {
                     txtCertificateNmae.Visible = true;
                     this.txtCertificateNmae.Text = certificate.CertificateName;
                 }
                 else this.cboCertificateName.Text = certificate.CertificateName;
                 this.cboGetYear.Text = DateTime.Now.Year.ToString();
                 this.cboGetMonth.Text = DateTime.Now.Month.ToString();
                
            }           
        }
        /// <summary>
        /// 在数据表中根据行号获取实例
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private Certificate GetCertificateFromDgv(int rowIndex)
        {
            var result = from certificate in (dgvCertificateData.DataSource as List<Certificate>)
                         where certificate.Id == dgvCertificateData["id", rowIndex].Value.ToString()
                         select certificate;
            return result.First();
        }
       
    }
}
