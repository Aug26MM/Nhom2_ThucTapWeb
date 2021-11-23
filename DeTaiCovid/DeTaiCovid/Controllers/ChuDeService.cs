using DeTaiCovid.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DeTaiCovid.Controllers
{
    public class ChuDeService
    {
        private TinTucCovidContext DbContext = new TinTucCovidContext();

        public List<ChuDe> LayDSChuDe()
        {
            return DbContext.ChuDes.ToList();
        }
        
        public bool ThemChuDe(ChuDe newChuDe)
        {

            ChuDe currentChuDe = DbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == newChuDe.ChuDeid);
            if (currentChuDe == null)
            {
                return false;
            }
            else
            {
                DbContext.ChuDes.Add(newChuDe);
                DbContext.SaveChanges();
                return true;
            }
        }

        public bool SuaChuDe(ChuDe chuDe)
        {
            ChuDe currentChuDe = DbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == chuDe.ChuDeid);         
            if (currentChuDe == null)
            {
                return false;
            }
            else
            {
                currentChuDe.TenChuDe = chuDe.TenChuDe;              
                DbContext.ChuDes.Update(currentChuDe);
                DbContext.SaveChanges();
                return true;
            }
        }

        public bool XoaChuDe(int ChuDeId)
        {
            ChuDe chuDe = DbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == ChuDeId);
            BaiViet baiViet = DbContext.BaiViets.SingleOrDefault(X => X.BaiVietId == ChuDeId);
            if (chuDe == null)
            {
                return false;
            }
            else if (baiViet == null)
            {
                List<ChuDe> lstChuDe = DbContext.ChuDes.ToList();
                for (int i = 0; i < lstChuDe.Count; i++)
                {
                    if (lstChuDe[i].ChuDeid == ChuDeId)
                    {
                        DbContext.ChuDes.Remove(lstChuDe[i]);
                        DbContext.SaveChanges();
                    }
                }
            }
            //Xoa du lieu
            DbContext.ChuDes.Remove(chuDe);
            DbContext.SaveChanges();
            return true;
        }

    }
}
