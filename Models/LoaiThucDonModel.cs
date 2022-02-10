using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Restaurant_management.Models
{
    class LoaiThucDonModel
    {
        protected string IdLoaiThucDon { get; set; }
        protected string TenLoaiThucDon { get; set; }
        protected string DienGiai { get; set; }
        protected string TrangThai { get; set; }
        public LoaiThucDonModel(string _IdLoaiThucDon)
        {
           IdLoaiThucDon = _IdLoaiThucDon;
        }
        public LoaiThucDonModel()
        {

        }
        public LoaiThucDonModel(string _idLoaiThucDon, string _tenLoaiThucDon, string _dienGiai, string _trangThai)
        {
            this.IdLoaiThucDon =_idLoaiThucDon;
            this.TenLoaiThucDon = _tenLoaiThucDon;
            this.DienGiai = _dienGiai;
            this.TrangThai = _trangThai;
        }
        //khai bao cac ham them xoa sua
        public int InsertLoaiThucDon()
        {
            int i = 0;
            string[] paras = new string[4] { "@IdLoaiThucDon", "@TenLoaiThucDon", "@DienGiai", "@TrangThai" };
            object[] values = new object[4] { IdLoaiThucDon, TenLoaiThucDon, DienGiai, TrangThai };
            i = Models.connection.Excute_Sql("spInsertLoaiThucDon", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int UpdateLoaiThucDon()
        {
            int i = 0;
            string[] paras = new string[4] { "@IdLoaiThucDon", "@TenLoaiThucDon", "@DienGiai", "@TrangThai" };
            object[] values = new object[4] { IdLoaiThucDon, TenLoaiThucDon, DienGiai, TrangThai };
            i = Models.connection.Excute_Sql("spUpdateLoaiThucDon", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int DeleteLoaiThucDon()
        {
            int i = 0;
            string[] paras = new string[1] { "@IdLoaiThucDon" };
            object[] values = new object[1] { IdLoaiThucDon };
            i = Models.connection.Excute_Sql("spDeleteLoaiThucDon", CommandType.StoredProcedure, paras, values);
            return i;
        }
        //khoi tao ham dataset 
        public static DataSet FillDataSetLoaiThucDon()
        {
            return Models.connection.FillDataSet("spgetLoaiThucDon", CommandType.StoredProcedure);
        }
        // get nhan vien by IDNhanVien  
        public DataSet FillDataSet_getLoaiThucDonByIdLoaiThucDon()
        {
            DataSet ds = new DataSet();
            string[] pares = new string[1] { "@IdLoaiThucDon" };
            object[] values = new object[1] { IdLoaiThucDon };
            ds = Models.connection.FillDataSet("spgetLoaiThucDonByIdLoaiThucDon", CommandType.StoredProcedure, pares, values);
            return ds;
        }
    }
}
