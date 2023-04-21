using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMobile.Models.DTO
{
    public class ExportProducts
    {
        public int? giaban { get; set; }
        public int? soluong { get; set; }
        public int? luotview { get; set; }
        //ab.TenSanPham, ab.GiaBan, ab.SoLuongDaBan, ab.LuotView, ab.TenNhaSanXuat, lsp.TenLoaiSanPham
        public string tensp { get; set; }
        public string tennsx { get; set; }
        public string tenlsp{ get; set; }

        

    }
}