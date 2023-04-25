using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Windows.Input;

namespace WebMobile.Models
{
    [Table("ChiTietNhapHang")]
    public partial class ChiTietNhapHang
    {
        [Key]
        public string MaNhapHang { get; set; }
        public string MaSanPham { get; set; }
        public string TenSanPham { get; set; }

        [DisplayName("Số lượng nhập")]
        public int SoLuongNhap { get; set; }
        [DisplayName("Giá nhập")]

        public int GiaNhap { get; set; }
        public int ThanhTien { get; set; }

    }
}