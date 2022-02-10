using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Restaurant_management.Models
{
    class NhanVienModel
    {
        //khai bao cac bien va ham thuoc tinh
        protected String IDNhanVien { get; set; }
        protected String HoLotNV { get; set; }
        protected String TenNV { get; set; }
        protected DateTime NgaySinhNV { get; set; }
        protected String DiaChiNV { get; set; }
        protected String DienThoaiNV { get; set; }
        protected String EmailNV { get; set; }
        protected String GioiTinhNV { get; set; }

        //Ham khoi tao(constructor)

        public NhanVienModel(string IdNhanVien)
        {
            this.IDNhanVien= IdNhanVien;
        }
        public NhanVienModel()
        {

        }
        public NhanVienModel(string _idNhanVien,string _hoNhanVien,string _tenNhanVien,DateTime _ngaySinhNhanVien,string _gioiTinhNhanVien,string _dienThoaiNhanVien,string _diaChiNhanVien,string _emailNhanVien)
        {
            IDNhanVien = _idNhanVien;
            HoLotNV = _hoNhanVien;
            TenNV = _tenNhanVien;
            NgaySinhNV = _ngaySinhNhanVien;
            GioiTinhNV = _gioiTinhNhanVien;
            DiaChiNV = _diaChiNhanVien;
            DienThoaiNV = _dienThoaiNhanVien;
            EmailNV = _emailNhanVien;
        }    
        //khai bao cac ham them xoa sua
        public int InsertNhanVien()
        {
            int i = 0;
            string[] paras = new string[8] { "@IdNhanVien", "@HoLot", "@Ten", "@NgaySinh", "@GioiTinh", "@DiaChi", "@Email", "@DienThoai" };
            object[] values = new object[8] { IDNhanVien, HoLotNV, TenNV, NgaySinhNV, GioiTinhNV, DienThoaiNV, EmailNV, DiaChiNV };
            i = Models.connection.Excute_Sql("spInsertNhanVien", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int UpdateNhanVien()
        {
            int i = 0;
            string[] paras = new string[8] { "@IdNhanVien", "@HoLot", "@Ten", "@NgaySinh", "@GioiTinh", "@DiaChi", "@Email", "@DienThoai" };
            object[] values = new object[8] { IDNhanVien, HoLotNV, TenNV, NgaySinhNV, GioiTinhNV, DienThoaiNV, EmailNV, DiaChiNV };
            i = Models.connection.Excute_Sql("spUpdateNhanVien", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int DeleteNhanVien()
        {
           
            int i = 0;
            string[] paras = new string[1] { "@IdNhanVien" };
            object[] values = new object[1] { IDNhanVien};
            i = Models.connection.Excute_Sql("spDeleteNhanVien", CommandType.StoredProcedure, paras, values);
            return i;
        } 
        //khoi tao ham dataset de load Nhanvien
        public static DataSet FillDataSetNhanVien()
        {
            return Models.connection.FillDataSet("spgetNhanVien", CommandType.StoredProcedure);
        }
        // get nhan vien by IDNhanVien  
        public DataSet FillDataSet_getNhanVienByIDNhanVien()
        {
            DataSet ds = new DataSet();
            string[] pares = new string[1] { "@IdNhanVien" };
            object[] values = new object[1] { IDNhanVien };
            ds = Models.connection.FillDataSet("spgetNhanVienByIdNhanVien", CommandType.StoredProcedure, pares, values);
            return ds;
        }
        public DataSet FillDataSet_SearchNhanVienByIdNhanVien()
        {
            DataSet ds = new DataSet();
            string[] paras = new string[1] { "@IdNhanVien" };
            object[] values = new object[1] { IDNhanVien };
            ds = Models.connection.FillDataSet("spSearchNVByIdNV", CommandType.StoredProcedure, paras, values);
            return ds;
        }
        public DataSet FillDataSet_SearchNhanVienByTenNhanVien()
        {
            DataSet ds = new DataSet();
            string[] paras = new string[1] { "@Ten" };
            object[] values = new object[1] { IDNhanVien };
            ds = Models.connection.FillDataSet("spSearchNVByTenNV", CommandType.StoredProcedure, paras, values);
            return ds;
        }
    }
}
