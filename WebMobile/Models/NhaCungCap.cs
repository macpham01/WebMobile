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
        [DisplayName("Mã nhà sản xuất")]

        public string MaNhaSanXuat { get; set; }

        [StringLength(50)]
        [DisplayName("Tên nhà sản xuất")]

        public string TenNhaSanXuat { get; set; }

        [DisplayName("Địa chỉ")]

        public string DiaChi { get; set; }
        [DisplayName("Số điện thoại")]

        public string SoDienThoai { get; set; }
        [DisplayName("Email nhà cung cấp")]

        public string EmailNCC { get; set; }
    }
}
