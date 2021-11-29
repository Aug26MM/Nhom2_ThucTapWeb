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
            ChuDe tenChuDe = DbContext.ChuDes.FirstOrDefault(x => x.TenChuDe == newChuDe.TenChuDe);

            if (currentChuDe == null && tenChuDe == null)
            {
                DbContext.ChuDes.Add(newChuDe);
                DbContext.SaveChanges();
                return true;
               
                
            }
            else
            {
                return false;
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
            ChuDe currentChuDe = DbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == ChuDeId);
            List<BaiViet> lstBaiViet = DbContext.BaiViets.Where(x => x.ChuDeid == ChuDeId).ToList();//tim danh sach bai viet lien quan toi chu de do
            if (currentChuDe == null)
            {
                return false;
            }
            else if (lstBaiViet.Count>0)//neu lst bai viết co du lieu thi th xoa
            {
                for (int i = 0; i < lstBaiViet.Count; i++)
                {
                    if (lstBaiViet[i].ChuDeid == ChuDeId)
                    {
                        DbContext.BaiViets.Remove(lstBaiViet[i]);
                        DbContext.SaveChanges();
                    }
                }
            }
            //Xoa du lieu
            DbContext.ChuDes.Remove(currentChuDe);
            DbContext.SaveChanges();
            return true;
        }

    }
}
