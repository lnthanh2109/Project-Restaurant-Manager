using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Restaurant_management.Controllers
{
    class LoaiThucDonControl
    {
        public static DataSet FillDataSet_getLoaiThucDonByIdLoaiThucDon(string _idLoaiThucDon)
        {
            try
            {
                Models.LoaiThucDonModel ltdon = new Models.LoaiThucDonModel(_idLoaiThucDon);
                return ltdon.FillDataSet_getLoaiThucDonByIdLoaiThucDon();
            }
            catch
            {
                return null;
            }
        }

        //Method add
        public static int InsertLoaiThucDon(string _idLoaiThucDon, string _tenLoaiThucDon, string _dienGiai, string _trangThai)
        {
            try
            {
                Models.LoaiThucDonModel _loaithucdon = new Models.LoaiThucDonModel(_idLoaiThucDon, _tenLoaiThucDon, _dienGiai, _trangThai);
                return _loaithucdon.InsertLoaiThucDon();
            }
            catch
            {
                return 0;
            }
        }
        //method update
        public static int UpdateLoaiThucDon(string _idLoaiThucDon, string _tenLoaiThucDon, string _dienGiai, string _trangThai)
        {
            try
            {
                Models.LoaiThucDonModel _loaithucdon = new Models.LoaiThucDonModel(_idLoaiThucDon, _tenLoaiThucDon, _dienGiai, _trangThai);
                return _loaithucdon.UpdateLoaiThucDon();
            }
            catch
            {
                return 0;
            }
        }
        public static int DeleteLoaiThucDon(string _idLoaiThucDon)
        {
            try
            {
                Models.LoaiThucDonModel _loaithucdon = new Models.LoaiThucDonModel(_idLoaiThucDon);
                return _loaithucdon.DeleteLoaiThucDon();
            }
            catch
            {
                return 0;
            }
        }
    }
}
