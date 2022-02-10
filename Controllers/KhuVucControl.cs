using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Restaurant_management.Controllers
{
    class KhuVucControl
    {
        public static DataSet FillDataSet_getKhuVucByIdKhuVuc(string _idKhuVuc)
        {
            try
            {
                Models.KhuVucModel kvuc = new Models.KhuVucModel(_idKhuVuc);
                return kvuc.FillDataSet_getKhuVucByIdKhuVuc();
            }
            catch
            {
                return null;
            }
        }
        
        //Method add
        public static int InsertKhuVuc(string _idKhuVuc, string _tenKhuVuc, string _dienGiai, string _trangThai)
        {
            try
            {
                Models.KhuVucModel _khuvuc = new Models.KhuVucModel(_idKhuVuc,_tenKhuVuc,_dienGiai,_trangThai);
                return _khuvuc.InsertKhuVuc();
            }
            catch
            {
                return 0;
            }
        }
        //method update
        public static int UpdateKhuVuc(string _idKhuVuc, string _tenKhuVuc, string _dienGiai, string _trangThai)
        {
            try
            {
                Models.KhuVucModel _khuvuc = new Models.KhuVucModel(_idKhuVuc, _tenKhuVuc, _dienGiai, _trangThai);
                return _khuvuc.UpdateKhuVuc();
            }
            catch
            {
                return 0;
            }
        }
        public static int DeleteKhuVuc(string _idKhuVuc)
        {
            try
            {
                Models.KhuVucModel _khuvuc = new Models.KhuVucModel(_idKhuVuc);
                return _khuvuc.DeleteKhuVuc();
            }
            catch
            {
                return 0;
            }
        }
    }
}
