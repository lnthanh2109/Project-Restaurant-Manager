using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Restaurant_management.Models
{
    class ThucDonModel
    {
        protected String IdThucDon { get; set; }
        protected String TenLoaiThucDon { get; set; }
        protected String TenThucDon { get; set; }
        protected String DonViTinh { get; set; }
        protected String SoLuongTon { get; set; }

        internal DataSet FillDataSet_getNhanVienByIdThucDon()
        {
            throw new NotImplementedException();
        }

        protected String DonGiaTon { get; set; }

        internal DataSet FillDataSet_getNhanVienByIDNhanVien()
        {
            throw new NotImplementedException();
        }

        protected String TonToiThieu { get; set; }

        internal DataSet FillDataSet_SearchThucDonByIdThucDon()
        {
            throw new NotImplementedException();
        }

        protected String TrangThai { get; set; }

        public ThucDonModel(string IdThucDon)
        {
            this.IdThucDon = IdThucDon;
        }
        public ThucDonModel()
        {

        }
        public ThucDonModel(string _idThucDon, string _TenLoaiThucDon, string _TenThucDon, string _DonViTinh, string _SoLuongTon, string _DonGiaTon, string _TonToiThieu, string _TrangThai)
        {
            IdThucDon = _idThucDon;
            TenLoaiThucDon = _TenLoaiThucDon;
            TenThucDon = _TenThucDon;
            DonViTinh = _DonViTinh;
            SoLuongTon = _SoLuongTon;
            DonGiaTon = _DonGiaTon;
            TonToiThieu = _TonToiThieu;
            TrangThai = _TrangThai;
        }
        public int InsertThucDon()
        {
            int i = 0;
            string[] paras = new string[8] { "@IdThucDon", "@TenLoaiThucDon", "@TenThucDon", "@DonViTinh", "@SoLuongTon", "@DonGiaTon", "@TonToiThieu", "@TrangThai" };
            object[] values = new object[8] { IdThucDon, TenLoaiThucDon, TenThucDon, DonViTinh, SoLuongTon, DonGiaTon, TonToiThieu, TrangThai };
            i = Models.connection.Excute_Sql("spInsertThucDon", CommandType.StoredProcedure, paras, values);
            return i;
        }
        public static DataSet FillDataSeThucDon()
        {
            return Models.connection.FillDataSet("spgetThucDon", CommandType.StoredProcedure);
        }
        public DataSet FillDataSet_getThucDonbyIdThucDon()
        {
            DataSet ds = new DataSet();
            string[] pares = new string[1] { "@IdThucDon" };
            object[] values = new object[1] { IdThucDon };
            ds = Models.connection.FillDataSet("spgetThucDonbyIdThucDon", CommandType.StoredProcedure, pares, values);
            return ds;
        }
    }
}
