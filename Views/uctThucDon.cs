using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Restaurant_management.Views
{
    public partial class uctThucDon : UserControl
    {     
        public uctThucDon()
        {
            InitializeComponent();
        }

        int flag = 0;
        public static uctThucDon uctTD = new uctThucDon();


        public void HienThiDanhSachThucDon()
        {
            dataGridView1.DataSource = Models.ThucDonModel.FillDataSeThucDon().Tables[0];
            dataGridView1.Dock = DockStyle.Fill;
            dataGridView1.BorderStyle = BorderStyle.Fixed3D;
            dataGridView1.RowHeadersVisible = false;
        }
        private void uctThucDon_Load(object sender, EventArgs e)
        {
            HienThiDanhSachThucDon();
            dis_end(false);
            bingding();
        }
        void bingding()
        {
            txtIDThucDon.DataBindings.Clear();
            txtIDThucDon.DataBindings.Add("Text", dataGridView1.DataSource, "IdThucDon");
            cmbTenLoaiThucDon.DataBindings.Clear();
            cmbTenLoaiThucDon.DataBindings.Add("Text", dataGridView1.DataSource, "TenLoaiThucDon");
            txtTenThucDon.DataBindings.Clear();
            txtTenThucDon.DataBindings.Add("Text", dataGridView1.DataSource, "TenThucDon");
            txtDonViTinh.DataBindings.Clear();
            txtDonViTinh.DataBindings.Add("Text", dataGridView1.DataSource, "DonViTinh");
            txtSoLuongTon.DataBindings.Clear();
            txtSoLuongTon.DataBindings.Add("Text", dataGridView1.DataSource, "SoLuongTon");
            txtDonGiaTon.DataBindings.Clear();
            txtDonGiaTon.DataBindings.Add("Text", dataGridView1.DataSource, "DonGiaTon");
            txtTonToiThieu.DataBindings.Clear();
            txtTonToiThieu.DataBindings.Add("Text", dataGridView1.DataSource, "TonToiThieu");
            txtTrangThai.DataBindings.Clear();
            txtTrangThai.DataBindings.Add("Text", dataGridView1.DataSource, "TrangThai");
        }
        void dis_end(bool e)
        {
            cmbTenLoaiThucDon.Enabled = e;
            txtTenThucDon.Enabled = e;
            txtDonViTinh.Enabled = e;
            txtSoLuongTon.Enabled = e;
            txtDonGiaTon.Enabled = e;
            txtTonToiThieu.Enabled = e;
            txtTrangThai.Enabled = e;
            btnThem.Enabled = !e;
            btnXoa.Enabled = !e;
            btnSua.Enabled = !e;
            btnLuu.Enabled = e;
            btnHuy.Enabled = e;
        }
        void loadcontrol()
        {
            cmbTenLoaiThucDon.Items.Clear();
            cmbTenLoaiThucDon.Items.Add("Thức ăn");
            cmbTenLoaiThucDon.Items.Add("Thức uống");
        }
        void clearData()
        {
            txtIDThucDon.Text = Models.connection.ExcuteScalar(string.Format("select IdThucDon=dbo.FCgetIdThucDon()"));
            txtTenThucDon.Text = "";
            txtDonViTinh.Text = "";
            txtSoLuongTon.Text = "";
            txtDonGiaTon.Text = "";
            txtTonToiThieu.Text = "";
            txtTrangThai.Text = "";
            loadcontrol();
        }
    }
}
