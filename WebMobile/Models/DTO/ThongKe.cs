using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMobile.Models.DTO
{
    public class ThongKe
    {
        public SanPham sanpham { get; set; }

        public string tensp { get; set; }

        public int? soluong { get; set; }

        public int? tongtien { get; set; }
        public int? gianhap { get; set; }

    }
}