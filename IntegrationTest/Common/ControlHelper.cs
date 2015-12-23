using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using ResumeFactory.Forms;
using FrameDAL.Core;

namespace ResumeFactory.Common
{
    public static class ControlHelper
    {
        /// <summary>
        /// Author: Vincent Lau
        /// Date:   2015-11-22
        /// Desc:   在父窗体中打开一个子窗体
        /// </summary>
        /// <param name="owner">父窗体</param>
        /// <param name="hostPanel">放置子窗体的panel</param>
        /// <param name="formType">子窗体的类型</param>
        /// <param name="data">给子窗口传递的数据</param>
        /// <returns>打开的子窗体</returns>
        public static Form OpenChildForm(this Form owner, Panel hostPanel, Type formType, object data = null)
        {
            Form form = hostPanel.Controls[formType.FullName] as Form;

            if (form == null)
            {
                form = Activator.CreateInstance(formType) as Form;
                form.Owner = owner;
                form.TopLevel = false;
                form.FormBorderStyle = FormBorderStyle.None;
                form.Dock = DockStyle.Fill;
                form.Name = formType.FullName;
                Font tmp = form.Font;
                hostPanel.Controls.Add(form);
                form.Font = tmp;
            }

            form.BringToFront();
            form.Show();
            if (form is IRefreshable) (form as IRefreshable).OnBringToFront(data);
            return form;
        }

        /// <summary>
        /// Author: Vincent Lau
        /// Date:   2015-6-10
        /// Desc:   设置绑定好的ComboBox的地区
        /// </summary>
        /// <param name="cmbProvince">省、自治区、直辖市ComboBox</param>
        /// <param name="cmbCity">地级市、自治州ComboBox</param>
        /// <param name="cmbCounty">县、自治县、县级市ComboBox</param>
        /// <param name="areaCode">行政区划代码</param>
        public static void SetAreaToCmb(ComboBox cmbProvince, ComboBox cmbCity, ComboBox cmbCounty, string areaCode)
        {
            if (string.IsNullOrEmpty(areaCode)) areaCode = "440101";
            cmbProvince.SelectedValue = areaCode.Substring(0, 2) + "0000";
            cmbCity.SelectedValue = areaCode.Substring(0, 4) + "00";
            cmbCounty.SelectedValue = areaCode;
        }

        /// <summary>
        /// Author: Vincent Lau
        /// Date:   2015-6-10
        /// Desc:   绑定省、市、县到ComboBox。注意，对于每组ComboBox只可进行一次绑定
        /// </summary>
        /// <param name="cmbProvince">省、自治区、直辖市ComboBox</param>
        /// <param name="cmbCity">地级市、自治州ComboBox</param>
        /// <param name="cmbCounty">县、自治县、县级市ComboBox</param>
        public static void BindAreaToCmb(ComboBox cmbProvince, ComboBox cmbCity, ComboBox cmbCounty)
        {
            cmbProvince.SelectedIndexChanged += delegate(object sender1, EventArgs e1)
            {
                if (cmbProvince.SelectedValue == null) return;
                DataTable dt = QueryCities(cmbProvince.SelectedValue.ToString());
                for (int i = 1; i < dt.Rows.Count; i++)
                {
                    DataRow row = dt.Rows[i];
                    string prefix = StringUtil.GetCommonPrefix(row["AREA_NAME"].ToString(), cmbProvince.Text);
                    if (!string.IsNullOrEmpty(prefix))
                        row["AREA_NAME"] = row["AREA_NAME"].ToString().Replace(prefix, "");
                }
                cmbCity.DisplayMember = "AREA_NAME";
                cmbCity.ValueMember = "AREA_CODE";
                cmbCity.DataSource = dt;
            };
            cmbCity.SelectedIndexChanged += delegate(object sender1, EventArgs e1)
            {
                if (cmbCity.SelectedValue == null) return;
                DataTable dt = QueryCounties(cmbCity.SelectedValue.ToString());
                for (int i = 1; i < dt.Rows.Count; i++)
                {
                    DataRow row = dt.Rows[i];
                    string prefix = StringUtil.GetCommonPrefix(row["AREA_NAME"].ToString(), cmbProvince.Text);
                    if (!string.IsNullOrEmpty(prefix))
                        row["AREA_NAME"] = row["AREA_NAME"].ToString().Replace(prefix, "");
                }
                cmbCounty.DisplayMember = "AREA_NAME";
                cmbCounty.ValueMember = "AREA_CODE";
                cmbCounty.DataSource = dt;
            };
            cmbProvince.DisplayMember = "AREA_NAME";
            cmbProvince.ValueMember = "AREA_CODE";
            cmbProvince.DataSource = QueryProvinces();
        }

        private static DataTable QueryProvinces()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = "select area_code, area_name from area_dict where area_code like '__0000' order by area_code";
                return session.CreateQuery(sql).ExecuteGetDataTable();
            }
        }

        private static DataTable QueryCities(string provinceCode)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = "select area_code, area_name from area_dict where area_code like ? order by area_code";
                return session.CreateQuery(sql, provinceCode.Substring(0, 2) + "__00").ExecuteGetDataTable();
            }
        }

        private static DataTable QueryCounties(string cityCode)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = "select area_code, area_name from area_dict where area_code like ? order by area_code";
                return session.CreateQuery(sql, cityCode.Substring(0, 4) + "__").ExecuteGetDataTable();
            }
        }

        /// <summary>
        /// 绑定职位类别，职位子类别到ComboBox
        /// </summary>
        /// <param name="listJobClass">职位类别ComboBox</param>
        /// <param name="listJobSubclass">职位子类别ComboBox</param>
        public static void BindJobClass(PopListBox listJobClass, PopListBox listJobSubclass)
        {
            listJobClass.TextChanged += (sender, e) =>
            {
                if (string.IsNullOrWhiteSpace(listJobClass.Text)) return;
                listJobSubclass.Text = "";
                listJobSubclass.DataSource = GetJobSubclass(listJobClass.Text);
                listJobSubclass.DisplayMember = "job_subclass";
                listJobSubclass.ValueMember = "job_subclass";
            };
            listJobClass.DataSource = GetJobClass();
            listJobClass.DisplayMember = "job_class";
            listJobClass.ValueMember = "job_class";
        }

        private static DataTable GetJobClass()
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = "select distinct job_class from job_dict";
                return session.CreateQuery(sql).ExecuteGetDataTable();
            }
        }

        private static DataTable GetJobSubclass(string jobClass)
        {
            using (ISession session = AppContext.Instance.OpenSession())
            {
                string sql = "select job_subclass from job_dict where job_class = ?";
                return session.CreateQuery(sql, jobClass).ExecuteGetDataTable();
            }
        }
    }
}
