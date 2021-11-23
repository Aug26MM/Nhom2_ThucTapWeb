﻿using DeTaiCovid.Controllers;
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
    public class ChuDeController : ControllerBase
    {
        private ChuDeService ChuDeService = new ChuDeService();
        [HttpGet]
        public IActionResult LayDSChuDe()
        {
            var lstChuDe = ChuDeService.LayDSChuDe();
            if (lstChuDe.Count > 0)
            {

                return Ok(lstChuDe);
            }
            else
            {
                return BadRequest("Danh Sách trống!");
            }
        }

        [HttpPost]
        public IActionResult ThemChuDe(ChuDe newChuDe)
        {
            bool check = ChuDeService.ThemChuDe(newChuDe);
            if (check == true)
            {
                return Ok($"Thêm Bài viết{newChuDe.ChuDeid} thành công");
            }
            else
            {
                return BadRequest($"Thêm bài viết {newChuDe.ChuDeid} Thất bại");
            }
        }
        [HttpPut]
        public IActionResult SuaBaiViet(ChuDe chuDe)
        {
            bool check = ChuDeService.SuaChuDe(chuDe);
            if (check == true)
            {
                return Ok($"sửa bài viết  {chuDe.ChuDeid}   thành công");
            }
            else
            {
                return BadRequest($"Sửa  bài viết  {chuDe.ChuDeid} Thất bại");

            }
        }

        [HttpDelete]
        public IActionResult XoaChuDe(int chuDe)
        {
            bool check = ChuDeService.XoaChuDe(chuDe);
            if (check == true)
            {
                return Ok($"xóa bài viêt {chuDe}  thành công");
            }
            else
            {
                return BadRequest($"xóa bài viết  {chuDe}  Thất bại");
            }
        }
    }
}
