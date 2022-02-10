using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Restaurant_management.Models
{
    class KhuVucModel
    {
        protected string IdKhuVuc { get; set; }
        protected string TenKhuVuc { get; set; }
        protected string DienGiai { get; set; }
        protected string TrangThai { get; set; }
        public KhuVucModel(string IdKhuVuc)
        {
           this.IdKhuVuc= IdKhuVuc;
        }
        public KhuVucModel()
        {

        }
        public KhuVucModel(string _idKhuVuc, string _tenKhuVuc, string _dienGiai, string _trangThai)
        {
            this.IdKhuVuc = _idKhuVuc;
            this.TenKhuVuc = _tenKhuVuc;
            this.DienGiai = _dienGiai;
            this.TrangThai = _trangThai;
        }
        //khai bao cac ham them xoa sua
        public int InsertKhuVuc()
        {
            int i = 0;
            string[] paras = new string[4] { "@IdKhuVuc", "@TenKhuVuc", "@DienGiai", "@TrangThai" };
            object[] values = new object[4] { IdKhuVuc,TenKhuVuc,DienGiai,TrangThai };
            i = Models.connection.Excute_Sql("spInsertKhuVuc", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int UpdateKhuVuc()
        {
            int i = 0;
            string[] paras = new string[4] { "@IdKhuVuc", "@TenKhuVuc", "@DienGiai", "@TrangThai" };
            object[] values = new object[4] { IdKhuVuc, TenKhuVuc, DienGiai, TrangThai };
            i = Models.connection.Excute_Sql("spUpdateKhuVuc", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public int DeleteKhuVuc()
        {
            int i = 0;
            string[] paras = new string[1] { "@IdKhuVuc" };
            object[] values = new object[1] { IdKhuVuc};
            i = Models.connection.Excute_Sql("spDeleteKhuVuc", CommandType.StoredProcedure, paras, values);
            return i;
        }
        //khoi tao ham dataset 
        public static DataSet FillDataSetKhuVuc()
        {
            return Models.connection.FillDataSet("spgetKhuVuc", CommandType.StoredProcedure);
        }
        // get nhan vien by IDNhanVien  
        public DataSet FillDataSet_getKhuVucByIdKhuVuc()
        {
            DataSet ds = new DataSet();
            string[] pares = new string[1] { "@IdKhuVuc" };
            object[] values = new object[1] { IdKhuVuc };
            ds = Models.connection.FillDataSet("spgetKhuVucByIdKhuVuc", CommandType.StoredProcedure, pares, values);
            return ds;
        }
    }
}
