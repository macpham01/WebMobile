namespace WebMobile.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MobileShop : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Email = c.String(nullable: false, maxLength: 256),
                        Id = c.String(),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                        isAdmin = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Email);
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 256),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.BinhLuan",
                c => new
                    {
                        MaBinhLuan = c.Int(nullable: false, identity: true),
                        MaSanPham = c.String(maxLength: 10),
                        MaTaiKhoan = c.String(maxLength: 256),
                        TenTaiKhoan = c.String(),
                        NoiDung = c.String(maxLength: 2048),
                        TinhTrang = c.Int(),
                        Ngay = c.DateTime(),
                    })
                .PrimaryKey(t => t.MaBinhLuan)
                .ForeignKey("dbo.SanPham", t => t.MaSanPham)
                .ForeignKey("dbo.AspNetUsers", t => t.MaTaiKhoan)
                .Index(t => t.MaSanPham)
                .Index(t => t.MaTaiKhoan);
            
            CreateTable(
                "dbo.SanPham",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 10),
                        MaLoaiSanPham = c.String(maxLength: 10),
                        MaNhaSanXuat = c.String(maxLength: 10),
                        TenSanPham = c.String(),
                        CauHinh = c.String(),
                        Image = c.String(),
                        Gia = c.Int(),
                        GiamGia = c.Int(),
                        SoLuongDaBan = c.Int(),
                        LuotView = c.Int(),
                        TinhTrang = c.String(maxLength: 10, fixedLength: true),
                        MoTa = c.String(),
                        GhiChu = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaSanPham)
                .ForeignKey("dbo.LoaiSanPham", t => t.MaLoaiSanPham)
                .ForeignKey("dbo.NhaSanXuat", t => t.MaNhaSanXuat)
                .Index(t => t.MaLoaiSanPham)
                .Index(t => t.MaNhaSanXuat);
            
            CreateTable(
                "dbo.ChiTietHoaDon",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 10),
                        OrderID = c.Long(nullable: false),
                        TenSanPham = c.String(maxLength: 50),
                        SoLuong = c.Int(),
                        Gia = c.Int(),
                        TongTien = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaSanPham, t.OrderID })
                .ForeignKey("dbo.HoaDon", t => t.OrderID)
                .ForeignKey("dbo.SanPham", t => t.MaSanPham)
                .Index(t => t.MaSanPham)
                .Index(t => t.OrderID);
            
            CreateTable(
                "dbo.HoaDon",
                c => new
                    {
                        ID = c.Long(nullable: false, identity: true),
                        NgayTao = c.DateTime(),
                        NguoiDat = c.String(maxLength: 256),
                        NguoiNhan = c.String(maxLength: 50),
                        SDT = c.String(maxLength: 50, unicode: false),
                        DiaChi = c.String(maxLength: 50),
                        TongTien = c.Long(),
                        TrangThai = c.String(),
                        CCCD = c.String(),
                        HinhThucThanhToan = c.String(),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.AspNetUsers", t => t.NguoiDat)
                .Index(t => t.NguoiDat);
            
            CreateTable(
                "dbo.LoaiSanPham",
                c => new
                    {
                        MaLoaiSanPham = c.String(nullable: false, maxLength: 10),
                        TenLoaiSanPham = c.String(maxLength: 50),
                        TinhTrang = c.String(maxLength: 3),
                    })
                .PrimaryKey(t => t.MaLoaiSanPham);
            
            CreateTable(
                "dbo.NhaSanXuat",
                c => new
                    {
                        MaNhaSanXuat = c.String(nullable: false, maxLength: 10),
                        TenNhaSanXuat = c.String(maxLength: 50),
                        TinhTrang = c.String(maxLength: 3),
                    })
                .PrimaryKey(t => t.MaNhaSanXuat);
            
            CreateTable(
                "dbo.ThongTinCaNhan",
                c => new
                    {
                        id = c.Int(nullable: false),
                        MaTaiKhoan = c.String(nullable: false, maxLength: 256),
                        TenTaiKhoan = c.String(maxLength: 50),
                        SoDienThoai = c.Int(),
                        DiaChi = c.String(maxLength: 50),
                        GioiTinh = c.String(maxLength: 10),
                        NgaySinh = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => new { t.id, t.MaTaiKhoan })
                .ForeignKey("dbo.AspNetUsers", t => t.MaTaiKhoan)
                .Index(t => t.MaTaiKhoan);
            
            
            
            CreateTable(
                "dbo.ChiTietNhapHang",
                c => new
                    {
                        MaSanPham = c.String(nullable: false, maxLength: 128),
                        MaNhapHang = c.String(),
                        TenSanPham = c.String(),
                        SoLuongNhap = c.Int(nullable: false),
                        GiaNhap = c.Int(nullable: false),
                        ThanhTien = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.MaSanPham);
            
            CreateTable(
                "dbo.GioHang",
                c => new
                    {
                        IdGH = c.Int(nullable: false, identity: true),
                        MaTaiKhoan = c.String(maxLength: 128, fixedLength: true),
                        MaSanPham = c.String(maxLength: 10),
                        TenSanPham = c.String(maxLength: 50),
                        SoLuong = c.Int(),
                        Gia = c.Int(),
                        TongTien = c.Int(),
                    })
                .PrimaryKey(t => t.IdGH);
            
            CreateTable(
                "dbo.NhaCungCap",
                c => new
                    {
                        MaNhaCungCap = c.String(nullable: false, maxLength: 10),
                        TenNhaCungCap = c.String(maxLength: 50),
                        DiaChi = c.String(),
                        SoDienThoai = c.String(),
                        EmailNCC = c.String(),
                    })
                .PrimaryKey(t => t.MaNhaCungCap);
            
            CreateTable(
                "dbo.NhapHang",
                c => new
                    {
                        MaNhapHang = c.String(nullable: false, maxLength: 128),
                        NgayNhap = c.DateTime(nullable: false),
                        SoLuongNhap = c.Int(nullable: false),
                        TongTienNhap = c.Int(nullable: false),
                        Email = c.String(),
                        MaNhaCungCap = c.String(),
                        TenNhaCungCap = c.String(),
                    })
                .PrimaryKey(t => t.MaNhapHang);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        RoleId = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => new { t.RoleId, t.UserId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.RoleId)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.ThongTinCaNhan", "MaTaiKhoan", "dbo.AspNetUsers");
            DropForeignKey("dbo.HoaDon", "NguoiDat", "dbo.AspNetUsers");
            DropForeignKey("dbo.BinhLuan", "MaTaiKhoan", "dbo.AspNetUsers");
            DropForeignKey("dbo.SanPham", "MaNhaSanXuat", "dbo.NhaSanXuat");
            DropForeignKey("dbo.SanPham", "MaLoaiSanPham", "dbo.LoaiSanPham");
            DropForeignKey("dbo.ChiTietHoaDon", "MaSanPham", "dbo.SanPham");
            DropForeignKey("dbo.ChiTietHoaDon", "OrderID", "dbo.HoaDon");
            DropForeignKey("dbo.BinhLuan", "MaSanPham", "dbo.SanPham");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.ThongTinCaNhan", new[] { "MaTaiKhoan" });
            DropIndex("dbo.HoaDon", new[] { "NguoiDat" });
            DropIndex("dbo.ChiTietHoaDon", new[] { "OrderID" });
            DropIndex("dbo.ChiTietHoaDon", new[] { "MaSanPham" });
            DropIndex("dbo.SanPham", new[] { "MaNhaSanXuat" });
            DropIndex("dbo.SanPham", new[] { "MaLoaiSanPham" });
            DropIndex("dbo.BinhLuan", new[] { "MaTaiKhoan" });
            DropIndex("dbo.BinhLuan", new[] { "MaSanPham" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.NhapHang");
            DropTable("dbo.NhaCungCap");
            DropTable("dbo.GioHang");
            DropTable("dbo.ChiTietNhapHang");
            DropTable("dbo.__MigrationHistory");
            DropTable("dbo.ThongTinCaNhan");
            DropTable("dbo.NhaSanXuat");
            DropTable("dbo.LoaiSanPham");
            DropTable("dbo.HoaDon");
            DropTable("dbo.ChiTietHoaDon");
            DropTable("dbo.SanPham");
            DropTable("dbo.BinhLuan");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.AspNetRoles");
        }
    }
}
