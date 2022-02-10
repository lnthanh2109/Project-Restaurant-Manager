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
    public partial class uctLoaiThucDon : UserControl
    {
        public uctLoaiThucDon()
        {
            InitializeComponent();
        }
        private void uctLoaiThucDon_Load(object sender, EventArgs e)
        {
            HienThiDanhSachLoaiThucDon();
            dis_end(false);
            bingding();
        }
        public static uctLoaiThucDon uctLTD = new uctLoaiThucDon();
        int flag = 0;
        public void HienThiDanhSachLoaiThucDon()
        {
            dgvLoaiThucDon.DataSource = Models.LoaiThucDonModel.FillDataSetLoaiThucDon().Tables[0];
            dgvLoaiThucDon.Dock = DockStyle.Fill;
            dgvLoaiThucDon.BorderStyle = BorderStyle.Fixed3D;
            dgvLoaiThucDon.RowHeadersVisible = false;
        }
        void loadcontrol()
        {
            cmbTrangThai.Items.Clear();
            cmbTrangThai.Items.Add("Còn hàng");
            cmbTrangThai.Items.Add("Sắp hết");
            cmbTrangThai.Items.Add("Đã hết");
        }
        void bingding()
        {
            txtIDLoaiThucDon.DataBindings.Clear();
            txtIDLoaiThucDon.DataBindings.Add("Text", dgvLoaiThucDon.DataSource, "IdLoaiThucDon");
            txtTenLoaiThucDon.DataBindings.Clear();
            txtTenLoaiThucDon.DataBindings.Add("Text", dgvLoaiThucDon.DataSource, "TenLoaiThucDon");
            txtDienGiai.DataBindings.Clear();
            txtDienGiai.DataBindings.Add("Text", dgvLoaiThucDon.DataSource, "DienGiai");
            cmbTrangThai.DataBindings.Clear();
            cmbTrangThai.DataBindings.Add("Text", dgvLoaiThucDon.DataSource, "TrangThai");
        }
        void clearData()
        {
            txtIDLoaiThucDon.Text = Models.connection.ExcuteScalar(string.Format("select IdLoaiThucDon=dbo.FCgetIdLoaiThucDon()"));
            txtTenLoaiThucDon.Text = "";
            txtDienGiai.Text = "";
            loadcontrol();
        }
        void dis_end(bool e)
        {
            txtTenLoaiThucDon.Enabled = e;
            txtDienGiai.Enabled = e;
            cmbTrangThai.Enabled = e;
            btnLuu.Enabled = e;
            btnHuy.Enabled = e;
            btnThem.Enabled = !e;
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
            HienThiDanhSachLoaiThucDon();
            dis_end(false);
            bingding();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string _idLoaiThucDon = "";
            try
            {
                _idLoaiThucDon = txtIDLoaiThucDon.Text;
            }
            catch
            {

            }
            string _tenLoaiThucDon = "";
            try
            {
                _tenLoaiThucDon = txtTenLoaiThucDon.Text;
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
                if (_tenLoaiThucDon == "")
                {
                    MessageBox.Show("Hãy nhập tên loại thực đơn");
                }
                else
                {
                    int i = 0;
                    i = Controllers.LoaiThucDonControl.InsertLoaiThucDon(_idLoaiThucDon, _tenLoaiThucDon, _dienGiai, _trangThai);
                    if (i > 0)
                    {
                        MessageBox.Show("Thêm mới thành công!");
                        HienThiDanhSachLoaiThucDon();
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
                i = Controllers.LoaiThucDonControl.UpdateLoaiThucDon(_idLoaiThucDon, _tenLoaiThucDon, _dienGiai, _trangThai);
                if (i > 0)
                {
                    MessageBox.Show("Sửa thành công!");
                    HienThiDanhSachLoaiThucDon();
                    uctLoaiThucDon_Load(sender, e);
                }
                else
                {
                    MessageBox.Show("Sửa thất bại !");
                }
            }
            uctLoaiThucDon_Load(sender, e);

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string _idLoaiThucDon = "";
            try
            {
                _idLoaiThucDon = txtIDLoaiThucDon.Text;
            }
            catch
            {

            }
            DialogResult dr = MessageBox.Show("Bạn có chắc chắn xóa?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                int i = 0;
                i = Controllers.LoaiThucDonControl.DeleteLoaiThucDon(_idLoaiThucDon);
                if (i > 0)
                {
                    MessageBox.Show("Xóa thành công!");
                    HienThiDanhSachLoaiThucDon();
                    uctLoaiThucDon_Load(sender, e);
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
