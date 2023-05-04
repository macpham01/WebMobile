namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            BinhLuan = new HashSet<BinhLuan>();
            ChiTietHoaDon = new HashSet<ChiTietHoaDon>();
        }

        [Key]
        [StringLength(10)]
        [DisplayName("Mã sản phẩm")]
        public string MaSanPham { get; set; }

        [StringLength(10)]
        [DisplayName("Mã loại sản phẩm")]

        public string MaLoaiSanPham { get; set; }

        [StringLength(10)]
        [DisplayName("Mã nhà sản xuất")]

        public string MaNhaSanXuat { get; set; }
        [DisplayName("Tên sản phẩm")]
        [Required(ErrorMessage = "Tên sản phẩm không được để trống.")]

        public string TenSanPham { get; set; }
        [DisplayName("Cấu hình")]

        public string CauHinh { get; set; }
        [Required(ErrorMessage ="Hình ảnh không được để trống.")]
        [DisplayName("Hình ảnh")]

        public string Image { get; set; }
        [DisplayName("Giá")]
        [Required(ErrorMessage = "Giá không được để trống.")]

        public int? Gia { get; set; }

        [DisplayName("Giảm giá")]
        [Required(ErrorMessage = "Giảm giá không được để trống.")]

        public int? GiamGia { get; set; }

        [DisplayName("Giá bán")]

        public int? GiaBan { get {
                return (Gia * (100 - GiamGia)) / 100;
            
        } }

        [DisplayName("Số lượng")] //Thay thế số lượng đã bán trong DB
        [Required(ErrorMessage = "Số lượng không được để trống.")]

        public int? SoLuongDaBan { get; set; }
        [DisplayName("Lượt xem")]

        public int? LuotView { get; set; }

        [StringLength(10)]
        [DisplayName("Tình trạng")]

        public string TinhTrang { get; set; }
        [DisplayName("Mô tả")]

        public string MoTa { get; set; }

        [StringLength(50)]
        [DisplayName("Ghi chú")]

        public string GhiChu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDon { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }

        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}
