using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;

namespace ResumeFactory.Common
{
    /// <summary>
    /// Author: Vincent Lau
    /// 简历项目控件，带有一个完成状态图标和一个文本Label
    /// </summary>
    public class ResumeItemPanel : Panel
    {
        private Image uncompleteIcon = Image.FromFile(Environment.CurrentDirectory + "/Resources/icon_uncomplete_s.gif");
        private Image noneIcon = Image.FromFile(Environment.CurrentDirectory + "/Resources/sign12.gif");
        private Image completeIcon = Image.FromFile(Environment.CurrentDirectory + "/Resources/sign11.gif");
        
        private int _FinishStatus;

        /// <summary>
        /// 项目完成状态，0为未填，1为完成部分，2为已完成
        /// </summary>
        /// <exception cref="ArgumentException">错误的完成状态</exception>
        public int FinishStatus
        { 
            get
            {
                return _FinishStatus;
            }
            set
            {
                switch (value)
                { 
                    case 0:
                        pictureBox.Image = noneIcon;
                        break;
                    case 1:
                        pictureBox.Image = uncompleteIcon;
                        break;
                    case 2:
                        pictureBox.Image = completeIcon;
                        break;
                    default:
                        throw new ArgumentException("错误的完成状态" + value);
                }
                _FinishStatus = value;
            }
        }

        /// <summary>
        /// Label上显示的文字信息
        /// </summary>
        public string Msg
        {
            get
            {
                return label.Text;
            }
            set
            {
                label.Text = value;
            }
        }

        /// <summary>
        /// 该控件被点击的事件
        /// </summary>
        public event EventHandler Selected;

        private PictureBox pictureBox = new PictureBox();
        private Label label = new Label();

        public ResumeItemPanel()
        {

            pictureBox.Size = new Size(20, 20);
            pictureBox.Dock = DockStyle.Left;

            label.Font = new Font("微软雅黑", 11F);
            label.Dock = DockStyle.Fill;

            this.Height = 30;
            this.Width = 129;
            this.Padding = new Padding(0, 5, 0, 0);
            this.Controls.Add(pictureBox);
            this.Controls.Add(label);
            label.BringToFront();

            FinishStatus = 0;
            pictureBox.Click += delegate(object sender, EventArgs e)
            {
                if (Selected != null) Selected(this, e);
            };
            label.Click += delegate(object sender, EventArgs e)
            {
                if (Selected != null) Selected(this, e);
            };
            this.Click += delegate(object sender, EventArgs e)
            {
                if (Selected != null) Selected(this, e);
            };
        }
    }
}
