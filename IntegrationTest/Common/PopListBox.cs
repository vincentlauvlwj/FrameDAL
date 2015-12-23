using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Windows.Forms;

namespace ResumeFactory.Common
{
    public class PopListBox : TextBox
    {
        public DataTable DataSource
        {
            get
            {
                return form.listBox.DataSource as DataTable;
            }
            set
            {
                form.listBox.DataSource = value;
            }
        }

        public string DisplayMember
        {
            get
            {
                return form.listBox.DisplayMember;
            }
            set
            {
                form.listBox.DisplayMember = value;
            }
        }

        public string ValueMember
        {
            get
            {
                return form.listBox.ValueMember;
            }
            set
            {
                form.listBox.ValueMember = value;
            }
        }

        public string DialogTitle
        {
            get
            {
                return form.Text;
            }
            set
            {
                form.Text = value;
            }
        }

        public int ListColumnWidth
        {
            get
            {
                return form.listBox.ColumnWidth;
            }
            set
            {
                form.listBox.ColumnWidth = value;
            }
        }

        public bool MultiColumn
        {
            get
            {
                return form.listBox.MultiColumn;
            }
            set
            {
                form.listBox.MultiColumn = value;
            }
        }

        private FormPopListBox form;

        public PopListBox()
        {
            form = new FormPopListBox(this);
            DialogTitle = "";
            ListColumnWidth = 200;
            this.Enter += (sender, e) =>
            {
                form.ShowDialog();
            };
        }
    }
}
