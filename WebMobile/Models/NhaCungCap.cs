namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;

    [Table("NhaCungCap")]
    public partial class NhaCungCap
    {
        [Key]
        [StringLength(10)]
        [DisplayName("Mã nhà cung cấp")]

        public string MaNhaCungCap { get; set; }

        [StringLength(50)]
        [DisplayName("Tên nhà cung cấp")]

        public string TenNhaCungCap { get; set; }

        [DisplayName("Địa chỉ")]

        public string DiaChi { get; set; }
        [DisplayName("Số điện thoại")]

        public string SoDienThoai { get; set; }
        [DisplayName("Email NCC")]

        public string EmailNCC { get; set; }
    }
}
