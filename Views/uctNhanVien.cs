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
    public partial class uctNhanVien : UserControl
    {
        public uctNhanVien()
        {
            InitializeComponent();
        }
        int flag = 0;
        public static uctNhanVien uctNV = new uctNhanVien();
        //khai bao cac ham hien thi DSNV de truyen du lieu vao dataGridView
        public void HienThiDanhSachNhanVien()
        {
            dgvDSNhanVien.DataSource = Models.NhanVienModel.FillDataSetNhanVien().Tables[0];
            dgvDSNhanVien.Dock = DockStyle.Fill;
            dgvDSNhanVien.BorderStyle = BorderStyle.Fixed3D;
            dgvDSNhanVien.RowHeadersVisible = false;
        }
        void nhung(Control ctr)
        {
            pnlDSNhanVien.Controls.Clear();
            pnlDSNhanVien.BorderStyle = BorderStyle.Fixed3D;
            ctr.Dock = DockStyle.Fill;
            pnlDSNhanVien.Controls.Add(ctr);
            pnlDSNhanVien.Show();
        }
        private void uctNhanVien_Load(object sender, EventArgs e)
        {
            HienThiDanhSachNhanVien();
            dis_end(false);
            bingding();
        }
        void  bingding()
        {
            txtIDNhanVien.DataBindings.Clear();
            txtIDNhanVien.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "IdNhanVien");
            txtHoLot.DataBindings.Clear();
            txtHoLot.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "Holot");
            txtTen.DataBindings.Clear();
            txtTen.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "Ten");
            dtpNgaySinh.DataBindings.Clear();
            dtpNgaySinh.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "NgaySinh");
            cmbGioiTinh.DataBindings.Clear();
            cmbGioiTinh.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "GioiTinh");
            txtDienThoai.DataBindings.Clear();
            txtDienThoai.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "DienThoai");
            txtDiaChi.DataBindings.Clear();
            txtDiaChi.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "DiaChi");
            txtEmail.DataBindings.Clear();
            txtEmail.DataBindings.Add("Text", dgvDSNhanVien.DataSource, "Email");
        }
        void dis_end(bool e)
        {
            txtHoLot.Enabled = e;
            txtTen.Enabled = e;
            dtpNgaySinh.Enabled = e;
            cmbGioiTinh.Enabled = e;
            txtDiaChi.Enabled = e;
            txtDienThoai.Enabled = e;
            txtEmail.Enabled = e;
            btnThem.Enabled = !e;
            btnXoa.Enabled = !e;
            btnSua.Enabled = !e;
            btnLuu.Enabled = e;
            btnHuy.Enabled = e;
        }
        //ham load gioi tinh cho nhan vien
        void loadcontrol()
        {
            cmbGioiTinh.Items.Clear();
            cmbGioiTinh.Items.Add("Nam");
            cmbGioiTinh.Items.Add("Nữ");
        }
        //xoa du lieu o textbox luc nhan vao button
        void clearData()
        {
            txtIDNhanVien.Text = Models.connection.ExcuteScalar(string.Format("select IdNhanVien=dbo.FCgetIdNhanVien()"));
            txtHoLot.Text = "";
            txtTen.Text = "";
            txtEmail.Text = "";
            txtDiaChi.Text = "";
            txtDienThoai.Text = "";
            loadcontrol();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            //load lai
            uctNhanVien_Load(sender, e);
            dis_end(false);
            bingding();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            flag = 1;
            dis_end(true);//luc nay nut them xoa sua se an di,chi con nut luu va huy
            loadcontrol();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            flag = 0;
            clearData();
            dis_end(true);
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string _idNhanVien = "";
            try
            {
                _idNhanVien = txtIDNhanVien.Text;
            }
            catch
            {

            }
            string _hoNhanVien = "";
            try
            {
                _hoNhanVien = txtHoLot.Text;
            }
            catch
            {

            }
            string _tenNhanVien = "";
            try
            {
                _tenNhanVien = txtTen.Text;
            }
            catch
            {

            }
            string _gioitinhNhanVien = "";
            try
            {
                _gioitinhNhanVien = cmbGioiTinh.Text;
            }
            catch
            {

            }
            string _dienthoaiNhanVien = "";
            try
            {
                _dienthoaiNhanVien = txtDienThoai.Text;
            }
            catch
            {

            }
            string _emailNhanVien = "";
            try
            {
                _emailNhanVien = txtEmail.Text;
            }
            catch
            {

            }
            string _diachiNhanVien = "";
            try
            {
                _diachiNhanVien = txtDiaChi.Text;
            }
            catch
            {

            }


            DateTime _ngaysinhNhanVien =dtpNgaySinh.Value;
            try
            {
                
            }
            catch
            {

            }
            if(flag==0)
            {
                //them moi
                if(_idNhanVien=="" || _tenNhanVien=="" ||_hoNhanVien=="")
                {
                    MessageBox.Show("Hãy nhập đầy đủ thông tin");
                }
                else
                {
                    int i = 0;
                        i = Controllers.NhanVienControl.InsertNhanVien(_idNhanVien, _hoNhanVien, _tenNhanVien, _ngaysinhNhanVien, _gioitinhNhanVien, _diachiNhanVien, _dienthoaiNhanVien, _emailNhanVien);
                    if(i>0)
                    {
                        MessageBox.Show("Thêm mới thành công!");
                        HienThiDanhSachNhanVien();
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
                i = Controllers.NhanVienControl.UpdateNhanVien(_idNhanVien, _hoNhanVien, _tenNhanVien, _ngaysinhNhanVien, _gioitinhNhanVien, _diachiNhanVien, _dienthoaiNhanVien, _emailNhanVien);
                if (i > 0)
                {
                    MessageBox.Show("Sửa thành công!");
                    HienThiDanhSachNhanVien();
                    uctNhanVien_Load(sender, e);
                }
                else
                {
                    MessageBox.Show("Sửa thất bại !");
                }
            }
            uctNhanVien_Load(sender, e);
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string _idNhanVien = "";
            try
            {
                _idNhanVien = txtIDNhanVien.Text;
            }
            catch
            {

            }
            DialogResult dr = MessageBox.Show("Bạn có chắc chắn xóa?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(dr==DialogResult.Yes)
            {
                int i = 0;
                i = Controllers.NhanVienControl.DeleteNhanVien(_idNhanVien);
                if(i > 0)
                {
                    MessageBox.Show("Xóa thành công!");
                    HienThiDanhSachNhanVien();
                    uctNhanVien_Load(sender, e);
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

        private void btnSearch_Click(object sender, EventArgs e)
        {
            uctSearchNhanVien uctS = new uctSearchNhanVien();
            nhung(uctS);
        }

        private void btnHide_Click(object sender, EventArgs e)
        {
            pnlDSNhanVien.Controls.Clear();
            pnlDSNhanVien.BorderStyle = BorderStyle.None;
        }

        private void txtDienThoai_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(!char.IsDigit(e.KeyChar)&&!char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }    
        }
    }
    
}
