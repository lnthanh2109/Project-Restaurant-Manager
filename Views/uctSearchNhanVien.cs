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
    public partial class uctSearchNhanVien : UserControl
    {
        public uctSearchNhanVien()
        {
            InitializeComponent();
        }
        void loadcontrol()
        {
            cmbFind.Items.Clear();
            cmbFind.Items.Add("Id Nhân Viên");
            cmbFind.Items.Add("Tên Nhân Viên");
        }
        private void uctSearchNhanVien_Load(object sender, EventArgs e)
        {
            cmbFind.Text = "Id Nhân Viên";
            loadcontrol();
        }

        private void btnFind_Click(object sender, EventArgs e)
        {
            if(txtFind.Text=="")
            {
                MessageBox.Show("Bạn chưa nhập nội dung tìm kiếm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
            else
            {
                if (cmbFind.Text == "Id Nhân Viên") 
                {
                    string _idNhanVien = txtFind.Text;
                    DataTable dt = new DataTable();
                    dt = Controllers.NhanVienControl.FillDataSet_SearchNVByIdNhanVien(_idNhanVien).Tables[0];
                    if(dt.Rows.Count>0)
                    {
                        dgvDSNhanVien.DataSource = dt;
                    }    
                    else
                    {
                        MessageBox.Show("Id" + txtFind.Text + "không có trong dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }    
                }
                else
                {
                    string _ten = txtFind.Text;
                    DataTable dt = new DataTable();
                    dt = Controllers.NhanVienControl.FillDataSet_SearchNVByTenNhanVien(_ten).Tables[0];
                    if (dt.Rows.Count > 0)
                    {
                        dgvDSNhanVien.DataSource = dt;
                    }
                    else
                    {
                        MessageBox.Show("Tên" + txtFind.Text + "không có trong dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }    
            }    
        }

        private void btnFind_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtFind_TextChanged(object sender, EventArgs e)
        {

            if (cmbFind.Text == "Id Nhân Viên")
            {
                string _idNhanVien = txtFind.Text.ToString();
                DataTable dt = new DataTable();
                dt = Controllers.NhanVienControl.FillDataSet_SearchNVByIdNhanVien(_idNhanVien).Tables[0];
                dgvDSNhanVien.DataSource = dt;
            }
            else
            {
                string _ten = txtFind.Text.ToString();
                DataTable dt = new DataTable();
                dt = Controllers.NhanVienControl.FillDataSet_SearchNVByTenNhanVien(_ten).Tables[0];
                dgvDSNhanVien.DataSource = dt;
            }
        }
    }
}
