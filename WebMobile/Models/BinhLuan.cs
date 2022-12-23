namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BinhLuan")]
    public partial class BinhLuan
    {
        [Key]
        public int MaBinhLuan { get; set; }

        [StringLength(10)]
        public string MaSanPham { get; set; }

        [StringLength(128)]
        public string MaTaiKhoan { get; set; }

        public string TenTaiKhoan { get; set; }

        [StringLength(2048)]
        public string NoiDung { get; set; }

        public int? TinhTrang { get; set; }

        public DateTime? Ngay { get; set; }

        public virtual AspNetUsers AspNetUsers { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
