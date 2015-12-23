using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ResumeFactory.Common
{
    public partial class FormPopListBox : Form
    {
        private TextBox textBox;

        public FormPopListBox(TextBox textBox)
        {
            InitializeComponent();
            this.textBox = textBox;
        }

        private void listBox_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (listBox.IndexFromPoint(e.Location) == ListBox.NoMatches) return;
            textBox.Text = listBox.SelectedValue as string;
            this.DialogResult = DialogResult.OK;
        }
    }
}
