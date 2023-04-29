namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;

    [Table("HoaDon")]
    public partial class HoaDon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDon()
        {
            ChiTietHoaDon = new HashSet<ChiTietHoaDon>();
        }

        public long ID { get; set; }

        [DisplayName("Ngày tạo")]
        public DateTime? NgayTao { get; set; }

        [StringLength(128)]
        [DisplayName("Người đặt")]
        public string NguoiDat { get; set; }

        [StringLength(50)]
        [DisplayName("Người nhận")]
        public string NguoiNhan { get; set; }

        [StringLength(50)]
        [DisplayName("Số điện thoại")]
        public string SDT { get; set; }

        [StringLength(50)]
        [DisplayName("Địa chỉ")]
        public string DiaChi { get; set; }

        [DisplayName("Tổng tiền")]
        public long? TongTien { get; set; }

        [DisplayName("Trạng thái giao hàng")]
        public string TrangThai { get; set; }
        [DisplayName("CCCD")]
        public string CCCD { get; set; }

        [DisplayName("Hình thức thanh toán")]
        public string HinhThucThanhToan { get; set; }

        [DisplayName("Tình trạng")]
        public string TinhTrang { get; set; }

        public virtual AspNetUsers AspNetUsers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDon { get; set; }
    }
}
