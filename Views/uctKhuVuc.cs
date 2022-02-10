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
    public partial class uctKhuVuc : UserControl
    {
        public uctKhuVuc()
        {
            InitializeComponent();
        }
        private void uctKhuVuc_Load(object sender, EventArgs e)
        {
            HienThiDanhSachKhuVuc();
            dis_end(false);
            bingding();
        }
        public static uctKhuVuc uctKV = new uctKhuVuc();
        int flag = 0;
        public void HienThiDanhSachKhuVuc()
        {
            dgvThongTinKhuVuc.DataSource = Models.KhuVucModel.FillDataSetKhuVuc().Tables[0];
            dgvThongTinKhuVuc.Dock = DockStyle.Fill;
            dgvThongTinKhuVuc.BorderStyle = BorderStyle.Fixed3D;
            dgvThongTinKhuVuc.RowHeadersVisible = false;
        }
        void loadcontrol()
        {
            cmbTrangThai.Items.Clear();
            cmbTrangThai.Items.Add("Hoạt động");
            cmbTrangThai.Items.Add("Ngừng hoạt động");
        }
        void bingding()
        {
            txtIdKhuVuc.DataBindings.Clear();
            txtIdKhuVuc.DataBindings.Add("Text", dgvThongTinKhuVuc.DataSource, "IdKhuVuc");
            txtTenKhuVuc.DataBindings.Clear();
            txtTenKhuVuc.DataBindings.Add("Text", dgvThongTinKhuVuc.DataSource, "TenKhuVuc");
            txtDienGiai.DataBindings.Clear();
            txtDienGiai.DataBindings.Add("Text", dgvThongTinKhuVuc.DataSource, "DienGiai");
            cmbTrangThai.DataBindings.Clear();
            cmbTrangThai.DataBindings.Add("Text", dgvThongTinKhuVuc.DataSource, "TrangThai");
        }
        void clearData()
        {
            txtIdKhuVuc.Text = Models.connection.ExcuteScalar(string.Format("select IdKhuVuc=dbo.FCgetIdKhuVuc()"));
            txtTenKhuVuc.Text = "";
            txtDienGiai.Text = "";
            loadcontrol();
        }
        void dis_end(bool e)
        {
            txtTenKhuVuc.Enabled = e;
            txtDienGiai.Enabled = e;
            cmbTrangThai.Enabled = e;
            btnLuu.Enabled = e;
            btnHuy.Enabled = e;
            btnThem.Enabled =!e;
            btnXoa.Enabled = !e;
            btnSua.Enabled = !e;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            flag = 0;
            clearData();
            dis_end(true);
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            flag = 1;
            dis_end(true);
            loadcontrol();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            uctKhuVuc_Load(sender, e);
            dis_end(false);
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string _idKhuVuc = "";
            try
            {
                _idKhuVuc = txtIdKhuVuc.Text;
            }
            catch
            {

            }
            string _tenKhuVuc = "";
            try
            {
                _tenKhuVuc = txtTenKhuVuc.Text;
            }
            catch
            {

            }
            string _dienGiai = "";
            try
            {
                _dienGiai = txtDienGiai.Text;
            }
            catch
            {

            }
            string _trangThai = "";
            try
            {
                _trangThai = cmbTrangThai.Text;
            }
            catch
            {

            }
           
            if (flag == 0)
            {
                //them moi
                if (_tenKhuVuc == "")
                {
                    MessageBox.Show("Hãy nhập tên khu vực");
                }
                else
                {
                    int i = 0;
                    i = Controllers.KhuVucControl.InsertKhuVuc(_idKhuVuc, _tenKhuVuc, _dienGiai, _trangThai);
                    if (i > 0)
                    {
                        MessageBox.Show("Thêm mới thành công!");
                        HienThiDanhSachKhuVuc();
                    }
                    else
                    {
                        MessageBox.Show("Thêm mới thất bại !");
                    }
                }
            }
            else
            {
                //sua

                int i = 0;
                i = Controllers.KhuVucControl.UpdateKhuVuc(_idKhuVuc, _tenKhuVuc, _dienGiai, _trangThai);
                if (i > 0)
                {
                    MessageBox.Show("Sửa thành công!");
                    HienThiDanhSachKhuVuc();
                    uctKhuVuc_Load(sender,e);
                }
                else
                {
                    MessageBox.Show("Sửa thất bại !");
                }
            }
           uctKhuVuc_Load(sender, e);
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string _idKhuVuc = "";
            try
            {
                _idKhuVuc = txtIdKhuVuc.Text;
            }
            catch
            {

            }
            DialogResult dr = MessageBox.Show("Bạn có chắc chắn xóa?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                int i = 0;
                i = Controllers.KhuVucControl.DeleteKhuVuc(_idKhuVuc);
                if (i > 0)
                {
                    MessageBox.Show("Xóa thành công!");
                    HienThiDanhSachKhuVuc();
                    uctKhuVuc_Load(sender, e);
                }
                else
                {
                    MessageBox.Show("Xóa không thành công!");
                }
            }
            else
            {
                return;
            }
        }

    }
}
