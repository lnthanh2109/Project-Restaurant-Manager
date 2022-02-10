using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant_management.Controllers
{
    class ThucDonControl
    {
        public static DataSet FillDataSet_getThucDonbyIdThucDon(string _idThucDon)
        {
            try
            {
                Models.ThucDonModel ThucDon = new Models.ThucDonModel(_idThucDon);
                return ThucDon.FillDataSet_getNhanVienByIdThucDon();
            }
            catch
            {
                return null;
            }
        }
        public static int InsertThucDon(string _idThucDon, string _TenLoaiThucDon, string _TenThucDon, string _DonViTinh, string _SoLuongTon, string _DonGiaTon, string _TonToiThieu, string _TrangThai)
        {
            try
            {
                Models.ThucDonModel _ThucDon = new Models.ThucDonModel(_idThucDon, _TenLoaiThucDon, _TenThucDon, _DonViTinh, _SoLuongTon, _DonGiaTon, _TonToiThieu, _TrangThai);
                return _ThucDon.InsertThucDon();
            }
            catch
            {
                return 0;
            }
        }

    }
}
