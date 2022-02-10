using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Restaurant_management
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }
        internal static List<byte> typePages = new List<byte>();
        public void ThemTabPages(UserControl uct,byte typeControl,string tenTab)
        {
            //Kiem tra trang nay ton tai chua ?
            for(int i=0;i<tabHienThi.TabPages.Count;i++)
            {
                if(tabHienThi.TabPages[i].Contains(uct)==true)
                {
                    tabHienThi.SelectedTab = tabHienThi.TabPages[i];
                    return;
                }    
            }
            TabPage tab = new TabPage();
            typePages.Add(typeControl);
            tab.Name = uct.Name;
            tab.Size = tabHienThi.Size;
            tab.Text = tenTab;
            tabHienThi.TabPages.Add(tab);
            tabHienThi.SelectedTab = tab;
            uct.Dock = DockStyle.Fill;
            tab.Controls.Add(uct);
            uct.Focus();
        }
        //Dong tab hien tai
        public void DongTabHienTai()
        {
            tabHienThi.TabPages.Remove(tabHienThi.SelectedTab);
        }
        //Dong all tab
        public void DongAllTab()
        {
            while(tabHienThi.TabPages.Count>0)
            {
                DongTabHienTai();
            }    
        }
        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Bạn có muốn thoát", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(dr==DialogResult.Yes)
            {
                this.Close();
            }    
            else
            {
                return;
            }    
        }

        private void quảnLýNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThemTabPages(Views.uctNhanVien.uctNV, 4, "Quản lý nhân viên");
        }

        private void đóngTrangHiệnTạiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DongTabHienTai();
        }

        private void đóngTấtCảCácTrangToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DongAllTab();
        }

        private void hệThốngKhuVựcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThemTabPages(Views.uctKhuVuc.uctKV, 4, "Hệ thống khu vực");
        }

        private void thựcĐơnToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ThemTabPages(Views.uctThucDon.uctTD, 4, "Quản lý thực đơn");
        }

        private void loạiThựcĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThemTabPages(Views.uctLoaiThucDon.uctLTD, 4, "Loại Thực Đơn");
        }
    }
}
