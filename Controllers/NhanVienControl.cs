using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Restaurant_management.Models;

namespace Restaurant_management.Controllers
{
    class NhanVienControl
    {
        public  static DataSet FillDataSet_getNhanVienByIdNhanVien(string _idNhanVien)
        {
            try
            {
                Models.NhanVienModel nvien = new Models.NhanVienModel(_idNhanVien);
                return nvien.FillDataSet_getNhanVienByIDNhanVien();
            }
            catch
            {
                return null;
            }
        }
        public static DataSet FillDataSet_SearchNVByIdNhanVien(string _idNhanVien)
        {
            try
            {
                Models.NhanVienModel nvien = new Models.NhanVienModel(_idNhanVien);
                return nvien.FillDataSet_SearchNhanVienByIdNhanVien();
            }
            catch
            {
                return null;
            }
        }
        public static DataSet FillDataSet_SearchNVByTenNhanVien(string _tenNhanVien)
        {
            try
            {
                Models.NhanVienModel nvien = new Models.NhanVienModel(_tenNhanVien);
                return nvien.FillDataSet_SearchNhanVienByTenNhanVien();
            }
            catch
            {
                return null;
            }
        }
        //Method add
        public static int InsertNhanVien(string _idNhanVien, string _hoNhanVien, string _tenNhanVien, DateTime _ngaySinhNhanVien, string _gioiTinhNhanVien, string _dienThoaiNhanVien, string _diaChiNhanVien, string _emailNhanVien)
        {
            try
            {
                Models.NhanVienModel _nhanVien = new Models.NhanVienModel(_idNhanVien, _hoNhanVien, _tenNhanVien, _ngaySinhNhanVien, _gioiTinhNhanVien, _dienThoaiNhanVien, _diaChiNhanVien, _emailNhanVien);
                return _nhanVien.InsertNhanVien();
            }
            catch
            {
                return 0;
            }
        }
        //method update
        public static int UpdateNhanVien(string _idNhanVien, string _hoNhanVien, string _tenNhanVien, DateTime _ngaySinhNhanVien, string _gioiTinhNhanVien, string _dienThoaiNhanVien, string _diaChiNhanVien, string _emailNhanVien)
        {
            try
            {
                Models.NhanVienModel _nhanVien = new Models.NhanVienModel(_idNhanVien, _hoNhanVien, _tenNhanVien, _ngaySinhNhanVien, _gioiTinhNhanVien, _dienThoaiNhanVien, _diaChiNhanVien, _emailNhanVien);
                return _nhanVien.UpdateNhanVien();
            }
            catch
            {
                return 0;
            }
        }
        public static int DeleteNhanVien(string _idNhanVien)
        {
            try
            {
                Models.NhanVienModel _nhanVien = new Models.NhanVienModel(_idNhanVien);
                return _nhanVien.DeleteNhanVien();
            }
            catch
            {
                return 0;
            }
        }

    }
}
