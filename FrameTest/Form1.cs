using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using FrameDAL.DbHelper;
using System.Reflection;

namespace FrameTest
{
    public partial class Form1 : Form
    {
        private string connStr = "server=localhost;user id=root;password=root;database=test";

        public Form1()
        {
            InitializeComponent();
            IDbHelper db = new MySqlHelper(connStr);
            dataGridView1.DataSource = db.ExecuteGetDataTable("select * from account where id=?", "1");
        }
    }
}
