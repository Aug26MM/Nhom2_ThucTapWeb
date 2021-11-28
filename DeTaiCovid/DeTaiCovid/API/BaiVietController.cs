using DeTaiCovid.Controllers;
using DeTaiCovid.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DeTaiCovid.API
{
    [Route("api/[controller]")]
    [ApiController]
    public class BaiVietController : ControllerBase
    {
        private BaiVietService BaiVietService = new BaiVietService();
        [HttpGet]
        public IActionResult LayDSBaiViet()
        {
            var lstBaiViet = BaiVietService.LayDSBaiViet();
            if (lstBaiViet.Count > 0)
            {

                return Ok(lstBaiViet);
            }
            else
            {
                //bắt mã lỗi
                return BadRequest("Danh Sách trống!");
            }
        }

        [HttpGet]
        [Route("layTheoChuDe")]
        public IActionResult LayDSBaiVietTheoChuDe(int maChuDe)
        {
            var lstBaiViet = BaiVietService.LayDSBaiVietTheoChuDe(maChuDe);
            if (lstBaiViet.Count > 0)
            {

                return Ok(lstBaiViet);
            }
            else
            {
                //bắt mã lỗi
                return BadRequest("Danh Sách trống!");
            }
        }

        [HttpGet]
        [Route("layTheoBaiVietId")]
        public IActionResult LayDSBaiVietTheoBaiVietId(int baiVietId)
        {
            var baiViet = BaiVietService.LayBaiVietTheoId(baiVietId);
            if (baiViet != null)
            {
                return Ok(baiViet);
            }
            else
            {
                //bắt mã lỗi
                return BadRequest("Không tìm thấy bài viết tương ứng!");
            }
        }

        [HttpPost]
        public IActionResult ThemBaiViet(BaiViet newBaiViet)
        {
            bool check = BaiVietService.ThemBaiViet(newBaiViet);
            if (check == true)
            {
                return Ok($"Thêm Bài viết{newBaiViet.BaiVietId} thành công");
            }
            else
            {
                return BadRequest($"Thêm bài viết {newBaiViet.BaiVietId} Thất bại");

            }
        }
        [HttpPut]
        public IActionResult SuaBaiViet(BaiViet baiviet)
        {
            bool check = BaiVietService.SuaBaiViet(baiviet);
            if (check == true)
            {
                return Ok($"sửa bài viết  {baiviet.BaiVietId}   thành công");
            }
            else
            {
                return BadRequest($"Sửa  bài viết  {baiviet.BaiVietId} Thất bại");

            }
        }
        [HttpDelete]
        public IActionResult XoaBaiViet(int baiVietId)
        {
            bool check = BaiVietService.XoaBaiViet(baiVietId);
            if (check == true)
            {
                return Ok($"xóa bài viêt {baiVietId}  thành công");
            }
            else
            {
                return BadRequest($"xóa bài viết  {baiVietId}  Thất bại");

            }
        }
    }
}
