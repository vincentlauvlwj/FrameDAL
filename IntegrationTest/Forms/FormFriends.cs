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
using ResumeFactory.Service;
using ResumeFactory.Service.ReportGenerator;

namespace ResumeFactory.Forms
{
    public partial class FormFriends : Form, IRefreshable
    {
        private User loginUser;
        private FriendsService service;
        private int curPage = 1;
        private readonly int pageSize = 1;
        private int totalPage = 0;

        public FormFriends()
        {
            InitializeComponent();
            service = new FriendsService();
        }

        public void OnBringToFront(object data)
        {
            loginUser = data as User;
            GetResumes();
        }

        private void GetResumes()
        {
            datagvFriends.AutoGenerateColumns = false;
            try
            {
                datagvFriends.DataSource = service.GetFriendsResume(loginUser, curPage, pageSize);
                totalPage = service.GetTotalPage(pageSize);
            }
            catch (Exception ex)
            {
                MessageBox.Show(string.Format("获取第{0}页数据发生异常, 详细信息如下\n{1}", curPage, ex.Message));
            }
            labelTotalPage.Text = labelTotalPage.Text.Replace("{total}", totalPage.ToString());
            txboxCurPage.Text = curPage.ToString();
            linkPrePage.Enabled = curPage == 1 ? false : true;
            linkNextPage.Enabled = curPage == totalPage ? false : true;
        }

        private string GetStars(int score)
        {
            return "★★★★★☆☆☆☆☆".Substring(5 - score, 5);
        }

        private void linkPrePage_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            curPage = curPage - 1;
            GetResumes();
        }

        private void linkNextPage_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            curPage = curPage + 1;
            GetResumes();
        }

        private void linkFirstPage_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            curPage = 1;
            GetResumes();
        }

        private void linkLastPage_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            curPage = totalPage;
            GetResumes();
        }

        private void datagvFriends_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (datagvFriends.Columns[e.ColumnIndex].HeaderText == "操作")
            {
                // 预览简历
                try
                {
                    FriendsResume resume = GetResumeFromDgv(e.RowIndex) as FriendsResume;
                    Type type = Type.GetType(resume.TemplateGeneratorClass, true);
                    IReportGenerator generator = (IReportGenerator)Activator.CreateInstance(type);
                    new FormReportPreview(generator.PrepareReport(resume)).ShowDialog();

                }
                catch (Exception ex)
                {
                    MessageBox.Show("预览简历发生异常：" + ex.Message);
                }
            }
        }

        /// <summary>
        /// 通过DataGridView的行号获得此行的简历对象
        /// </summary>
        /// <param name="rowIndex"></param>
        /// <returns></returns>
        private Resume GetResumeFromDgv(int rowIndex)
        {
            var result = from resume in (datagvFriends.DataSource as List<FriendsResume>)
                         where resume.Id == datagvFriends["id", rowIndex].Value.ToString()
                         select resume;
            return result.First();
        }

        private void txboxCurPage_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (int)Keys.Enter)
            {
                curPage = txboxCurPage.Text.ToInt32(1);
                GetResumes();
            }
        }
    }
}
