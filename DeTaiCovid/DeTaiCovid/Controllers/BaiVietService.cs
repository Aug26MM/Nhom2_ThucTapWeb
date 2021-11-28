using DeTaiCovid.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DeTaiCovid.Controllers

{
    public class BaiVietService
    {
        private TinTucCovidContext dbContext = new TinTucCovidContext();

        public List<BaiViet> LayDSBaiViet()
        {
            return dbContext.BaiViets.ToList();
        }

        public List<BaiViet> LayDSBaiVietTheoChuDe(int maChuDe)
        {
            return dbContext.BaiViets.Where(x => x.ChuDeid == maChuDe).ToList();
        }
        
        public bool ThemBaiViet(BaiViet newBaiViet)
        {

            ChuDe currentChuDe = dbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == newBaiViet.ChuDeid);
            if (currentChuDe == null)
            {
                return false;
            }
            else
            {
                dbContext.BaiViets.Add(newBaiViet);
                CapNhapSoLuong(currentChuDe);
                dbContext.SaveChanges();
                return true;
            }
           


        }
        public bool SuaBaiViet(BaiViet baiviet)
        {
            BaiViet currentBaiViet = dbContext.BaiViets.SingleOrDefault(x => x.BaiVietId == baiviet.BaiVietId);
            ChuDe currentChuDe = dbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == baiviet.BaiVietId);
            if (currentBaiViet == null || currentChuDe == null)
            {
                return false;
            }
            else
            {
                currentBaiViet.TieuDe = baiviet.TieuDe;
                currentBaiViet.MoTa = baiviet.MoTa;
                currentBaiViet.NoiDung = baiviet.NoiDung;
                currentBaiViet.Anh = baiviet.Anh;
                currentBaiViet.NgayTao = baiviet.NgayTao;
                dbContext.BaiViets.Update(currentBaiViet);
                dbContext.SaveChanges();
                return true;
            }

        }
        public bool XoaBaiViet(BaiViet hocsinh)
        {

            BaiViet CurrentBaiViet = dbContext.BaiViets.SingleOrDefault(x => x.BaiVietId == hocsinh.BaiVietId);
            ChuDe currentChuDe = dbContext.ChuDes.SingleOrDefault(x => x.ChuDeid == hocsinh.ChuDeid);
            if (CurrentBaiViet == null)
            {
                return false;
            }
            else
            {
                dbContext.Remove(CurrentBaiViet);
                dbContext.SaveChanges();
                CapNhapSoLuong(currentChuDe);
                return true;
            }

        }
        public void CapNhapSoLuong(ChuDe currentChuDe)
        {
            List<BaiViet> lstChuDe = dbContext.BaiViets.ToList();
            int dem = 0;
            for (int i = 0; i < lstChuDe.Count; i++)
            {
                if (lstChuDe[i].ChuDeid == currentChuDe.ChuDeid)
                {
                    dem++;
                }
            }
            currentChuDe.SoLuongBaiViet = dem;
            dbContext.Update(currentChuDe);
            dbContext.SaveChanges();
        }
    }
}
