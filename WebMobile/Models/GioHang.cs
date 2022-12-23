namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GioHang")]
    public partial class GioHang
    {
        [Key]
        public int IdGH { get; set; }

        [StringLength(128)]
        public string MaTaiKhoan { get; set; }

        [StringLength(10)]
        public string MaSanPham { get; set; }

        [StringLength(50)]
        public string TenSanPham { get; set; }

        public int? SoLuong { get; set; }

        public int? Gia { get; set; }

        public int? TongTien { get; set; }
    }
}
