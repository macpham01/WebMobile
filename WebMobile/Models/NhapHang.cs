using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebMobile.Models
{
    [Table("NhapHang")]
    public partial class NhapHang
    {
        [Key]
        public string MaNhapHang { get; set; }
        public DateTime NgayNhap { get; set; }
        public int SoLuongNhap { get; set; }
        public int TongTienNhap { get; set; }
        public string Email { get; set; }

        public string MaNhaCungCap { get; set; }
        public string TenNhaCungCap { get; set; }

    }
}