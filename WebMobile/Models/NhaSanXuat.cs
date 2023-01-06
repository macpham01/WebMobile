namespace WebMobile.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;

    [Table("NhaSanXuat")]
    public partial class NhaSanXuat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhaSanXuat()
        {
            SanPham = new HashSet<SanPham>();
        }

        [Key]
        [StringLength(10)]
        [DisplayName("Mã nhà sản xuất")]

        public string MaNhaSanXuat { get; set; }

        [StringLength(50)]
        [DisplayName("Tên nhà sản xuất")]

        public string TenNhaSanXuat { get; set; }

        [StringLength(3)]
        [DisplayName("Tình trạng")]

        public string TinhTrang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham> SanPham { get; set; }
    }
}
