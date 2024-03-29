USE [master]
GO
/****** Object:  Database [ShopMobile]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE DATABASE [ShopMobile]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopMobile', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopMobile.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopMobile_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopMobile_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopMobile] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopMobile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopMobile] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopMobile] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopMobile] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopMobile] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopMobile] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopMobile] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopMobile] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopMobile] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopMobile] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopMobile] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopMobile] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopMobile] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopMobile] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopMobile] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopMobile] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopMobile] SET  MULTI_USER 
GO
ALTER DATABASE [ShopMobile] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopMobile] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopMobile] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopMobile] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopMobile] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopMobile] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopMobile] SET QUERY_STORE = OFF
GO
USE [ShopMobile]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[isAdmin] [bit] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[TenTaiKhoan] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](2048) NULL,
	[TinhTrang] [int] NULL,
	[Ngay] [datetime] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhapHang]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhapHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhapHang] [char](10) NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuongNhap] [int] NULL,
	[GiaNhap] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietNhapHang2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IdGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IdGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiDat] [nvarchar](128) NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [nvarchar](30) NULL,
	[CCCD] [varchar](25) NULL,
	[HinhThucThanhToan] [nvarchar](30) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [char](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](50) NOT NULL,
	[EmailNCC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[MaNhapHang] [char](10) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[TongTienNhap] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[MaNhaCungCap] [char](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhapHang] PRIMARY KEY CLUSTERED 
(
	[MaNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinCaNhan]    Script Date: 30/04/2023 8:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCaNhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinCaNhan] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705040843094_InitialCreate', N'DoAn_ShopOnline.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC621BD82D5227E909BAB9609D2DCE5B404BB443AC44A912954D50F497F5E1FCA4F3173A942859E245175BB19D628145440EBF190E87E47038F4FFFFFCDFF8C7E7C0B79E709C90904EECA3D1A16D61EA861EA1CB899DB2C5771FEC1F7FF8C737E30B2F78B67E2DE84E381DB4A4C9C47E642C3A759CC47DC4014A460171E33009176CE4868183BCD0393E3CFCDE393A723040D8806559E34F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FB3C3CA30FB3C730BAA53EA17894B7B0AD339F20906686FD856D214A438618C87AFA39C133168774398BA000F9F72F1106BA05F2132CFA70BA22EFDA9DC363DE1D67D5B08072D38485414FC0A313A11F476EBE9696ED527FA0C10BD0347BE1BDCEB438B1AF3C9C157D0A7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F7358CBF8CAA880756E77607A53D1D8F0EF9BF036B9AFA2C8DF184E294C5C83FB0EED2B94FDC5FF0CB7DF805D3C9C9D17C71F2E1DD7BE49DBCFF373E7957ED29F415E86A0550741787118E4136BC28FB6F5B4EBD9D23372C9B55DAE45A015B82A9615BD7E8F923A64BF60893E6F8836D5D9267EC1525C2B83E530233091AB13885CF9BD4F7D1DCC765BDD3C893FFDFC0F5F8DDFB41B8DEA027B2CC865EE20F13278679F509FB596DF248A27C7AD5C6FB41905DC661C0BFEBF695D73ECCC2347679674223C93D8A9798D5A51B3B2BE3ED64D21C6A78B32E50F7DFB4B9A4AA796B497987D69909058B6DCF8642DED7E5DBD9E2CEA208062F332DAE912683D36F582309E1C092E8562674D4D5842874EDEFBC225E0488F8032C891DB88047B2207180CB5EFE14820122DA5BE63B9424B02278FF41C96383E8F0E700A2CFB09BC660A8338682E8D5B9DD3D8614DFA4C19CDBFFF6780D3634F75FC34BE4B230BEA0BCD5C6781F43F74B98B20BEA9D23863F33B700E49FF724E80E30883867AE8B93E4128C197BD3101CEE02F08AB293E3DE707C91DAB54B32F51109F43E89B49C3E14A42BBF444FA1F82606329D7FD224EAC770496837510B52B3A83945ABA882ACAFA81CAC9BA482D22C6846D02A674E3598C7978DD0F02E5F06BBFF3EDF669BB7692DA8A871062B24FE19531CC332E6DD21C6704C5723D065DDD885B3900D1F67FAEA7B53C6E957E4A743B35A6B36648BC0F0B32183DDFFD9908909C54FC4E35E49878350410CF09DE8F567ACF6392749B6EDE950EBE6B6996F670D304D97B324095D92CD024D084C0430EAF2830F67B54733F2DEC81111E818183AE15B1E9440DF6CD9A86EE939F631C3D6999B8708A7287191A7AA113AE4F510ACD8513582AD222375E1BE557882A5E3983742FC1094C04C2594A9D382509744C86FD592D4B2E316C6FB5EF2906BCE71842967D8AA892ECCF581102E40C9471A94360D8D9D8AC5351BA2C16B358D799B0BBB1A77253EB1159B6CF19D0D7629FCB75731CC668D6DC1389B55D2450063506F17062ACE2A5D0D403EB8EC9B814A272683810A976A2B065AD7D80E0CB4AE923767A0F911B5EBF84BE7D57D33CFFA4179FBDB7AA3BA76609B357DEC9969E6BE27B461D002C7AA799ECF79257E669AC319C829CE678970756513E1E033CCEA219B95BFABF5439D6610D9889A005786D6022AAE0315206542F510AE88E5354A27BC881EB045DCAD1156ACFD126CC50654ECEAB56885D07C792A1B67A7D347D9B3D21A1423EF7458A8E0680C425EBCEA1DEFA014535C56554C175FB88F375CE998188C0605B578AE0625159D195C4B8569B66B49E790F571C936D292E43E19B4547466702D091B6D5792C629E8E1166CA4A2FA163ED0642B221DE56E53D68D9D3C634A148C1D436AD5F81A4511A1CB4AAA9528B166799ED5F4BB59FFE4A320C770DC449383544A5B7262618C9658AA05D620E9258913768E189A231EE7997A8142A6DD5B0DCB7FC1B2BA7DAA8358EC030535FF3B6F61B8C4AFEDB7AA4322702EA19701F76AB250BAC606F4CD2D9EFE867C146BA2F7D3D04F036A76B2CCADF33BBC6AFBBC4445183B92FC8A13A5684C7175EBEAEF3438EAC41870A04A3F66FDC1324398545E78A155A59B3C53334A11A8AAA29882573B1B3C9343D37BC0647FB1FF78B522BCCEFC12492A550051D413A392E7A08055EABAA3D65351AA98F59AEE8852BE491552AAEA216535ABA42664B5622D3C8346F514DD39A879245574B5B63BB226A3A40AADA95E035B23B35CD71D5593745205D65477C75E65A0C80BE91EEF60C653CC465B587ED8DD6C0F3360BCCEAA38CC1658B9D3AF02558A7B62895B7B054C94EFA545194F7C1B59541EE7D8CCA20C18E615A876235E5F801AAFF1CD98B56BEEDA22DF74CD6FC6EB67B7AF6A1DCAA14F2629B997873FE990371607AEF64736CA092C27B1AD428DB0C1BF240C07234E309AFDE64F7D82F9725E105C234A163861796A877D7C78742CBDD1D99FF7324E9278BEE6C06A7A34531FB32D6469D12714BB8F28567326367853B20255C2D157D4C3CF13FBF7ACD56916D9E07F65C507D655F29992DF52A8B88F536CFDA1E6800E9363DF7CE0DAD31711DDB57AF5DF87BCE981751BC38C39B50E255DAE33C2F57712BDA4C99B6E20CDDAAF27DEEE84AA3D49D0A24A1362FD170873C206797D5048F9CF003DFFABAF68DA17061B216A5E110C8537880A4DAF04D6C132BE10F0E093652F04FA7556FF62601DD18CAF0508ED0F26BF15E8BE0C152D77B8D568CE45DB5892323DB7E65A6F9478B9EBBD4949C9DE68A2AB69D73DE03648AD5EC332DE5856F260BBA326E97830EC5D9AF6AB671AEF4B72F12AED63B739C5DB4C236EB822FA5B650FEF41BE9B267F67F739C2DBB635532C77CF132DFB6502EF99B189ACAEDDE7FB6EDBD84C61DE3D37B65E59BD7B666BBBDA3F776C699DB7D09DE7E8AAE946863B195D2CB82D07370F9CC3097F1E8211E41E65FE74529FF4D594B0DAC2704562666ACE3693192B1347E1AB5034B3EDD757B1E1377656D034B335E46836F116EB7F236F41D3CCDB90F9B88BEC616DEEA12EA3BB651D6B4A887A4BD9C2B59EB424A7B7F9AC8D17EC6F29397810A5D4668FE18EF8EDE4020FA29221A74E8FDC5FF5BA17F6CECA2F2FC2FE9D90E50A82FF0E23C56E6DD72C69AEE8222C366F49A282448AD05C63863CD852CF624616C86550CD63CCD9DBEF2C6EC76F3AE6D8BBA2B7298B52065DC6C1DCAF05BCB813D0C43F4B70AECB3CBE8DB29F3119A20B2026E1B1F95BFA534A7CAF94FB521313324070EF424474F958321ED95DBE94483721ED0824D4573A45F738887C004B6EE90C3DE1756403F3FB8897C87D5945004D20ED035157FBF89CA0658C824460ACDAC327D8B0173CFFF017687BF2D780540000, N'6.1.3-40302')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a26637a0-2c98-46b4-a493-4d5a142ae721', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'a26637a0-2c98-46b4-a493-4d5a142ae721')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'05c220be-cc7e-4f9e-bcfa-e3883b1a1720', N'ryo@gmail.com', 0, N'AGkjAN2sVtY9ieLDbEMulIYzheRHXlL4ywQcNy7lf7YSD7fNkQTs3FNMsFOPsIyZYw==', N'95dec9dd-d8f4-4290-9090-9a1b2f14a516', NULL, 0, 0, NULL, 0, 1, N'ryo@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'4211', N'lamdong01@gmail.com', 0, N'202cb962ac5975b964b7152d234b70', NULL, NULL, 0, 0, NULL, 0, 0, N'lamdong01@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'6939', N'user@gmail.com', 0, N'827ccbeea8a706c4c34a16891f84e7b', NULL, NULL, 0, 0, NULL, 0, 0, N'user@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'7847', N'macpham01@gmail.com', 0, N'202cb962ac5975b964b7152d234b70', NULL, NULL, 0, 0, NULL, 0, 0, N'macpham01@gmail.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', 0, N'AOR+AkCofAq8px+p6v98m1nhWJfZQ79uXyK3eFDkSMLCDGwqRXel6AqKT6/PFdhAbA==', N'4e1b9929-b72a-4398-a361-6dae8f51c884', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'9728', N'canhpokemon01@gmail.com', 0, N'827ccbeea8a706c4c34a16891f84e7b', NULL, NULL, 0, 0, NULL, 1, 0, N'canhpokemon01@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', 0, N'ANdSYVVlN4ZyNjgVrYwrkIEwlUeGEX0a25cT6r9jYDoJMlPs44t/CZoVaW/6CF/v7g==', N'178d21bb-94c1-4154-8c6e-c87cade64763', NULL, 0, 0, NULL, 0, 0, N'hebizoro@gmail.com', 0)
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1, N'1111', N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', N'Quá đẹp', 0, CAST(N'2017-05-09T18:45:18.340' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (2, N'1111', N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', N'Quá vi diệu', 0, CAST(N'2017-05-09T18:50:40.353' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (3, N'1111', N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', N'Quá đẹp luôn ad ơi', 0, CAST(N'2017-05-09T19:33:41.017' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (4, N'1111', N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', N'Top 1 của ngày là đây chứ đâu', 0, CAST(N'2017-05-09T19:39:55.300' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (5, N'SP01', N'4211', N'lamdong01@gmail.com', N'sản phẩm rất đẹp', 0, CAST(N'2023-02-13T12:04:22.720' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (6, N'SP01', N'4211', N'lamdong01@gmail.com', N'san pham rat dep', 0, CAST(N'2023-02-13T12:09:05.873' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (7, N'SP01', N'4211', N'lamdong01@gmail.com', N'hello', 0, CAST(N'2023-02-13T12:12:43.343' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1005, N'SP03', N'4211', N'lamdong01@gmail.com', N'Sản phẩm rất đẹp', 0, CAST(N'2023-04-13T18:28:43.653' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP03', 60016, N'OPPO Reno8 series', 1, 11875000, 11875000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP20', 70030, N'Samsung Untral S', 2, 17550000, 35100000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP23', 70030, N'iPhone X', 2, 9499999, 18999998)
GO
SET IDENTITY_INSERT [dbo].[ChiTietNhapHang] ON 

INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (13, N'1010      ', N'1111', N'Samsung Galaxy S23 Pro', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (14, N'1010      ', N'27318624', N'OPPO Reno8 T 5G', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (15, N'1010      ', N'haizz', N'iPhone 14 Pro Max', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (16, N'1010      ', N'SP01', N'Samsung Galaxy S23', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (17, N'1010      ', N'SP02', N'Samsung Galaxy S22 ', 1, 4000000, 4000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (18, N'1010      ', N'SP03', N'OPPO Reno8 series', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (19, N'1010      ', N'SP04', N'OPPO A55', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (20, N'1010      ', N'SP05', N'iPhone 14', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (21, N'1010      ', N'SP06', N'iPhone 14 Plus', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (22, N'1010      ', N'SP07', N'Samsung Galaxy Z Fold4 ', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (23, N'1010      ', N'SP08', N'iPhone 12', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (24, N'1010      ', N'SP10', N'OPPO Find X5 Pro 5G', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (25, N'1010      ', N'SP11', N'iPhone 13', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (26, N'1010      ', N'SP12', N'OPPO A16K', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (27, N'1010      ', N'SP13', N'Samsung Galaxy A73', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (28, N'1010      ', N'SP14', N'OPPO Reno8 T', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (29, N'1010      ', N'SP15', N'OPPO A96', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (30, N'1010      ', N'SP16', N'Samsung Galaxy M33', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (31, N'1010      ', N'SP17', N'Samsung Galaxy A14', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (32, N'1010      ', N'SP18', N'iPhone 12 Pro', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (33, N'1010      ', N'SP19', N'iPhone 12 Pro Max', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (34, N'1010      ', N'SP20', N'Samsung Untral S', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (35, N'1010      ', N'SP21', N'OPPO A15Plus', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (36, N'1010      ', N'SP22', N'Samsung Galaxy R5', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (37, N'1010      ', N'SP23', N'iPhone X', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (38, N'1010      ', N'SP24', N'Samsung Galaxt A04s', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (39, N'1010      ', N'SP25', N'IPhone XS', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (40, N'1010      ', N'SP26', N'OPPO Reno7 Z 5G', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (41, N'1010      ', N'SP27', N'OPPO A95 4G', 1, 7000000, 7000000)
INSERT [dbo].[ChiTietNhapHang] ([Id], [MaNhapHang], [MaSanPham], [TenSanPham], [SoLuongNhap], [GiaNhap], [ThanhTien]) VALUES (42, N'1010      ', N'SP9', N'iPhone 13 Pro Max', 1, 7000000, 7000000)
SET IDENTITY_INSERT [dbo].[ChiTietNhapHang] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([IdGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (12070, N'lamdong01@gmail.com                                                                                                             ', N'SP03', N'OPPO Reno8 series', 1, 12500000, 12500000)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai], [CCCD], [HinhThucThanhToan], [TinhTrang]) VALUES (60016, CAST(N'2023-04-20T16:05:16.000' AS DateTime), N'4211', N'Nguyễn Văn Anh', N'12345', N'Nguyên Xá Nam Từ Liêm Hà Nội', 11875000, N'Đang giao hàng', N'12345', N'Chuyển khoản', N'Chưa thanh toán')
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai], [CCCD], [HinhThucThanhToan], [TinhTrang]) VALUES (70030, CAST(N'2023-04-29T23:22:59.217' AS DateTime), N'4211', N'Nguyễn Vân Anh', N'123', N'Nguyên Xá Nam Từ Liêm Hà Nội', 54099998, N'Chưa giao hàng', N'123', N'Chuyển khoản', N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Cao Cấp', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Tầm Trung', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Phổ Thông', N'0')
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [EmailNCC]) VALUES (N'NCC01     ', N'Văn Phòng Đại Diện - Công Ty Nokia', N'Phòng 703, Tầng7, Tòa Nhà Metropolitan, 235 Đồng Khởi, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM)', N'(028) 38236894', N'chau.nguyen@nokia.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [EmailNCC]) VALUES (N'NCC02     ', N'Thế Giới Di Động - Công Ty TNHH Thế Giới Di Động', N'Phòng 6.5, Tầng6, Tòa Nhà E. Town 2, 364 Cộng Hòa, P. 13, Q. Tân Bình, Tp. Hồ Chí Minh (TPHCM)', N'(028) 35100100', N'lienhe@thegioididong.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [EmailNCC]) VALUES (N'NCC03     ', N'Công ty TNHH Thương Mại Công Nghệ Bạch Long', N'134 Trần Phú, phường 4, quận 5, Tp. Hồ Chí Minh (TPHCM)', N'0869287135', N'marketing@bachlongmobile.com')
GO
INSERT [dbo].[NhapHang] ([MaNhapHang], [NgayNhap], [SoLuongNhap], [TongTienNhap], [Email], [MaNhaCungCap], [TenNhaCungCap]) VALUES (N'1010      ', CAST(N'2023-04-30' AS Date), 30, 207000000, N'macpham01@gmail.com', N'NCC02     ', NULL)
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Iphone', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Oppo', N'0')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'1111', N'LSP01', N'NSX02', N'Samsung Galaxy S23 Pro', N'<p>&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 10<br />
&nbsp;&nbsp;&nbsp; Camera sau:Hai camera 12 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:7 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A10 Fusion 4 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:3 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:128 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:Kh&ocirc;ng</p>

<p>&nbsp;</p>
', 15000000, 26, 22, N'0         ', N'Khuyến mãi', N'1111.png', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 9<br />
&nbsp;&nbsp;&nbsp; Camera sau:12 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:5 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A9 2 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:2 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:16 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:2750 mAh</p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'27318624', N'LSP01', N'NSX03', N'OPPO Reno8 T 5G', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 20000000, 21, 24, N'0         ', N'Old', N'oppo3.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'haizz', N'LSP01', N'NSX01', N'iPhone 14 Pro Max', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 15000000, 17, 29, N'1         ', N'old', N'haizz.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP01', N'LSP02', N'NSX02', N'Samsung Galaxy S23', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 8000000, 12, 30, N'0         ', N'New', N'samsung3.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP02', N'LSP01', N'NSX02', N'Samsung Galaxy S22 ', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 5000000, 17, 70, N'0         ', N'New', N'samsung2.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 15)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP03', N'LSP02', N'NSX03', N'OPPO Reno8 series', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 12500000, 22, 70, N'0         ', N'New', N'oppo1.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP04', N'LSP03', N'NSX03', N'OPPO A55', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 11500000, 22, 32, N'0         ', N'New', N'hinh4.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP05', N'LSP01', N'NSX01', N'iPhone 14', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 15000000, 12, 13, N'0         ', N'New', N'SP08.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP06', N'LSP01', N'NSX01', N'iPhone 14 Plus', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 15500000, 12, 9, N'0         ', N'New', N'hinh17.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP07', N'LSP02', N'NSX02', N'Samsung Galaxy Z Fold4 ', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 12000000, 12, 33, N'0         ', N'New', N'samsung5.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP08', N'LSP03', N'NSX01', N'iPhone 12', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 11100000, 12, 22, N'0         ', N'Đang khuyến mãi', N'hinh8.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP10', N'LSP03', N'NSX03', N'OPPO Find X5 Pro 5G', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 19990000, 22, 16, N'0         ', N'New', N'oppo6.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 15)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP11', N'LSP01', N'NSX01', N'iPhone 13', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 12000000, 12, 11, N'0         ', N'Đang khuyến mãi', N'SP11.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 20)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP12', N'LSP02', N'NSX03', N'OPPO A16K', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 18000000, 12, 51, N'0         ', N'3290000', N'oppo5.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP13', N'LSP02', N'NSX02', N'Samsung Galaxy A73', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 12000000, 12, 11, N'0         ', N'Old', N'SP13.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP14', N'LSP01', N'NSX03', N'OPPO Reno8 T', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 18500000, 22, 30, N'0         ', N'New', N'oppo2.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP15', N'LSP02', N'NSX03', N'OPPO A96', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 10000000, 22, 30, N'0         ', N'New', N'SP15.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP16', N'LSP01', N'NSX02', N'Samsung Galaxy M33', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 19500000, 22, 37, N'0         ', N'New', N'samsung7.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP17', N'LSP01', N'NSX02', N'Samsung Galaxy A14', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 15000000, 12, 20, N'0         ', N'Old', N'SP17.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP18', N'LSP02', N'NSX01', N'iPhone 12 Pro', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 9999000, 17, 89, N'0         ', N'New', N'hinh13.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 20)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP19', N'LSP03', N'NSX01', N'iPhone 12 Pro Max', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 12500000, 17, 54, N'0         ', N'Old', N'hinh7.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP20', N'LSP02', N'NSX02', N'Samsung Untral S', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 19500000, 30, 49, N'0         ', N'New', N'samsung6.png', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 9<br />
&nbsp;&nbsp;&nbsp; Camera sau:12 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:5 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A9 2 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:2 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:16 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:2750 mAh</p>

<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>

', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP21', N'LSP03', N'NSX03', N'OPPO A15Plus', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 8500000, 12, 20, N'0         ', N'New', N'SP03.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP22', N'LSP02', N'NSX02', N'Samsung Galaxy R5', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 9000000, 22, 31, N'0         ', N'New', N'samsung1.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 15)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP23', N'LSP01', N'NSX01', N'iPhone X', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 9999999, 25, 33, N'0         ', N'New', N'hinh14.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP24', N'LSP02', N'NSX02', N'Samsung Galaxt A04s', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 13999000, 22, 21, N'0         ', N'New', N'samsung4.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif"><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s21-fe-6gb" target="_blank" title="Tham khảo điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) đang kinh doanh tại Thế Giới Di Động ">Samsung Galaxy S21 FE 5G (6GB/128GB)</a>&nbsp;được Samsung ra mắt với d&aacute;ng dấp thời thượng, cấu h&igrave;nh khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ d&ugrave;ng hằng ng&agrave;y v&agrave; c&ograve;n g&igrave; nữa? Mời bạn kh&aacute;m ph&aacute; qua nội dung sau ngay.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vẻ ngo&agrave;i sang trọng, m&agrave;u sắc thời trang</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G&nbsp;thiết kế mỏng nhẹ với độ d&agrave;y&nbsp;<strong>7.9 mm</strong>, khối lượng chỉ&nbsp;<strong>177 gram</strong>, c&aacute;c g&oacute;c cạnh bo tr&ograve;n cho cảm gi&aacute;c h&agrave;i h&ograve;a, mềm mại, kết hợp c&aacute;c t&ocirc;ng m&agrave;u thời thượng gồm t&iacute;m, xanh l&aacute;, x&aacute;m v&agrave; trắng gi&uacute;p bạn dễ d&agrave;ng tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng đầy c&aacute; t&iacute;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040738.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Vẻ ngoài sang trọng, màu sắc thời trang" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&aacute;c chi tiết được ho&agrave;n thiện tinh tế, khung m&aacute;y bằng nh&ocirc;m kh&aacute; nhẹ v&agrave; bền chắc, mặt lưng l&agrave;m từ nhựa, chế t&aacute;c c&oacute; độ nh&aacute;m nhẹ, cầm b&aacute;m tay, khi sử dụng c&oacute; hơi d&iacute;nh mồ h&ocirc;i nhưng rất dễ l&agrave;m sạch.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại chính hãng tại Thế Giới Di Động">điện thoại th&ocirc;ng minh</a>&nbsp;phủ&nbsp;k&iacute;nh cường lực&nbsp;<strong>Corning Gorilla Glass Victus</strong>&nbsp;s&aacute;ng&nbsp;b&oacute;ng, gần như an to&agrave;n khi rơi ở độ cao&nbsp;<strong>2m&nbsp;</strong>xuống (th&ocirc;ng tin từ h&atilde;ng sản xuất c&ocirc;ng bố), hạn chế trầy xước hiệu quả.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ở cạnh h&ocirc;ng m&aacute;y, c&oacute; c&aacute;c n&uacute;t nguồn, &acirc;m lượng bấm &ecirc;m &aacute;i, khe gắn sim ở cạnh dưới, nằm gần micro n&ecirc;n khi lắp sim bạn cần ch&uacute; &yacute; để tr&aacute;nh nhầm lẫn thao t&aacute;c.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển qua mặt sau của m&aacute;y th&igrave; c&aacute;ch sắp xếp camera sau theo h&agrave;ng dọc giống với phi&ecirc;n bản&nbsp;S21, cụm camera l&agrave;m gồ l&ecirc;n, c&oacute; thể bị xước nếu đặt nằm tr&ecirc;n mặt b&agrave;n nhiều lần, n&ecirc;n để bảo vệ ống k&iacute;nh tốt hơn, bạn c&oacute; thể d&ugrave;ng th&ecirc;m ốp lưng, miếng d&aacute;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040740.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Mặt sau của máy thì cách sắp xếp camera sau theo hàng dọc" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm được thiết kế&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank" title="Tham khảo điện thoại có kháng nước, chống bụi tại Thế Giới Di Động">kh&aacute;ng nước, kh&aacute;ng bụi</a>&nbsp;ti&ecirc;u chuẩn&nbsp;<strong>IP68</strong>, giảm khả năng bị nước, bụi bẩn x&acirc;m nhập g&acirc;y ảnh hưởng đến tuổi thọ v&agrave; hoạt động của m&aacute;y, cho bạn tự tin mang theo điện thoại trong c&aacute;c h&agrave;nh tr&igrave;nh thường nhật cũng như khi đi phượt, c&ocirc;ng t&aacute;c xa nh&agrave;.&nbsp;</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm xem ch&acirc;n thật</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với k&iacute;ch thước&nbsp;<strong>6.4 inch</strong>, đường viền kh&aacute; mỏng, camera trước dạng đục lỗ cho kh&ocirc;ng gian hiển thị rộng r&atilde;i, bạn c&oacute; thể xem được nhiều chi tiết tr&ecirc;n m&agrave;n h&igrave;nh hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại&nbsp;<strong>Dynamic AMOLED 2X</strong>,&nbsp;độ ph&acirc;n giả<strong>i Full HD+</strong>,&nbsp;tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>, cho h&igrave;nh ảnh t&aacute;i hiện chi tiết, mượt m&agrave;, m&agrave;u sắc tươi tắn, độ tương phản cao.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040742.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Trải nghiệm xem chân thật" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&oacute; độ s&aacute;ng tối đa&nbsp;<strong>1200 nits&nbsp;</strong>xem trong nh&agrave; v&agrave; ngo&agrave;i trời đều cho chất lượng h&igrave;nh ảnh tốt. Điện thoại t&iacute;ch hợp loa k&eacute;p stereo trong trẻo cho &acirc;m lượng ở mức kh&aacute;.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, nằm b&ecirc;n dưới của m&agrave;n h&igrave;nh c&oacute; cảm biến v&acirc;n tay quang học cho ph&eacute;p mở kh&oacute;a bằng v&acirc;n tay nhanh ch&oacute;ng, bạn cũng c&oacute; thể chọn mở kh&oacute;a bằng khu&ocirc;n mặt với camera trước t&ugrave;y theo từng ho&agrave;n cảnh sử dụng.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng ổn định, chơi game mượt m&agrave;</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Cung cấp sức mạnh cho S21 FE l&agrave; CPU&nbsp;<strong>Exynos 2100</strong>&nbsp;c&oacute; sức mạnh được đ&aacute;nh gi&aacute; l&agrave; tương đương Snapdragon 888 n&ecirc;n chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng bạn khi n&oacute; đ&aacute;p ứng được từ c&aacute;c t&aacute;c vụ hằng ng&agrave;y như đọc b&aacute;o, xem phim đến g&otilde; chữ trong Word, Excel mượt m&agrave;. Kiểm tra hiệu năng với phần mềm&nbsp;PCMark (b&ecirc;n tr&aacute;i) cho 14.234 điểm,&nbsp;GeekBench 5 (b&ecirc;n phải) cho 745 điểm đơn nh&acirc;n v&agrave; 2.183 điểm đa nh&acirc;n.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040753.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hiệu năng ổn định, chơi game mượt mà" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-6gb" target="_blank" title="Tham khảo một số mẫu điện thoại RAM 6 GB đang kinh doanh tại Thế Giới Di Động ">RAM 6 GB</a>&nbsp;cho c&aacute;c hoạt động đa nhiệm kh&aacute; tốt, phối hợp GPU Mali-G78 xử l&yacute; đồ họa tối ưu, chơi game Li&ecirc;n Qu&acirc;n với độ họa tối đa 60 FPS, tần số qu&eacute;t 120 Hz, combat kh&ocirc;ng lag, kh&ocirc;ng drop FPS khi chơi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040747.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game Liên Quân" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Với game PUBG Mobile th&igrave; cho đồ họa sắc n&eacute;t, c&oacute; t&igrave;nh trạng drop FPS nhẹ khi bắn s&uacute;ng ở nơi đ&ocirc;ng người hoặc khi chết, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040749.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Game PUBG Mobile" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">V&igrave; đều&nbsp;<strong>chơi ở mức đồ họa tối đa, tốc độ l&agrave;m mới 120 Hz</strong>&nbsp;n&ecirc;n m&aacute;y kh&aacute; n&oacute;ng khi chơi, n&ecirc;n game thủ cần hạ mức độ họa xuống ch&uacute;t để m&aacute;y m&aacute;t v&agrave; d&ugrave;ng tiết kiệm pin hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-rom-128gb" target="_blank" title="Tham khảo một số mẫu điện thoại ROM 128 GB đang kinh doanh tại Thế Giới Di Động ">Bộ nhớ trong&nbsp;128 GB</a>, kh&ocirc;ng gian lưu trữ tương đối rộng để bạn lưu lại được nhiều h&igrave;nh ảnh, t&agrave;i liệu hoặc ứng dụng m&agrave; bạn đang quan t&acirc;m tiện lợi. Hỗ trợ kết nối&nbsp;<strong>5G</strong>&nbsp;cho t&iacute;n hiệu ổn định, ph&aacute;t trực tuyến hoặc tải xuống c&aacute;c tệp tin dung lượng lớn nhanh ch&oacute;ng, độ trễ thấp.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ghi lại h&igrave;nh ảnh sống động</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Galaxy S21 FE 5G thiết kế cụm camera sau c&oacute; 3 ống k&iacute;nh, trong đ&oacute; c&oacute; camera ch&iacute;nh v&agrave; camera g&oacute;c si&ecirc;u rộng cho độ ph&acirc;n giải&nbsp;<strong>12 MP</strong>&nbsp;v&agrave; 1 camera tele&nbsp;<strong>8 MP</strong>&nbsp;chụp ảnh cho chất lượng rất &quot;ổn &aacute;p&quot; với c&aacute;c chi tiết r&otilde; r&agrave;ng, m&agrave;u sắc của bầu trời, c&acirc;y cối nịnh mắt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040751.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Ghi lại hình ảnh sống động" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chụp phong cảnh c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank" title="Tham khảo một số mẫu điện thoại camera gốc rộng đang kinh doanh tại Thế Giới Di Động ">điện thoại c&oacute; camera g&oacute;c rộng</a>&nbsp;với trường nh&igrave;n l&ecirc;n đến&nbsp;<strong>123 độ,&nbsp;</strong>nhờ c&oacute; tầm bao qu&aacute;t rộng lớn gi&uacute;p cho tấm ảnh thu được nhiều chi tiết hơn, ảnh chụp kh&ocirc;ng bị m&eacute;o ở c&aacute;c g&oacute;c l&agrave;m cho tổng quan bức h&igrave;nh th&ecirc;m phần chất lượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040744.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Chụp phong cảnh với camera góc siêu rộng" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;hỗ trợ cho m&aacute;y chế độ Night Mode cải thiện chất lượng chụp ảnh trong điều kiện thiếu s&aacute;ng. M&aacute;y bắt n&eacute;t kh&aacute; nhanh, chi tiết c&oacute; độ n&eacute;t ở mức chấp nhận được, m&agrave;u sắc t&aacute;i tạo ở t&ocirc;ng ấm, nếu c&oacute; vật thể di chuyển nhanh th&igrave; ch&uacute;ng c&oacute; thể hơi nh&ograve;e khi xuất hiện trong h&igrave;nh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040757.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Hỗ trợ chế độ Night Mode" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Camera trước c&oacute; độ ph&acirc;n giải cao&nbsp;<strong>32 MP</strong>, trang bị đa dạng chế độ chụp, l&agrave;m nổi bật chủ thể trong h&igrave;nh với chế độ&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank" title="Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động">chụp x&oacute;a ph&ocirc;ng</a>, cho bạn tỏa s&aacute;ng trong bức ảnh ch&acirc;n dung thu lại được.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Vi&ecirc;n pin&nbsp;4500&nbsp;mAh</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y l&agrave; mức dung lượng tương đối ổn, khi Thế Giới Di Động kiểm tra với t&aacute;c vụ hỗn hợp c&oacute; chơi&nbsp;Li&ecirc;n Qu&acirc;n, xem YouTube, d&ugrave;ng&nbsp;Facebook, Messenger,&nbsp;Chrome,&nbsp;PUBG Mobile th&igrave; thời gian trải nghiệm rơi v&agrave;o tầm&nbsp;<strong>8 giờ</strong>&nbsp;trong điều kiện &acirc;m lượng, độ s&aacute;ng tối đa, d&ugrave;ng WIFI trong m&ocirc;i trường c&oacute; m&aacute;y lạnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" onclick="return false;"><img alt="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" src="https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-6gb-200122-040755.jpg" title="Samsung Galaxy S21 FE 5G (6GB/128GB) - Viên pin 4500 mAh" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Được hỗ trợ c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank" title="Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động">sạc pin nhanh</a><strong>&nbsp;25 W</strong>, nạp đầy từ 0 - 100% chỉ khoảng 1 tiếng 30 ph&uacute;t, thời gian sạc ph&ugrave; hợp, cho bạn kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. B&ecirc;n cạnh sạc nhanh, điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y,&nbsp;sạc ngược kh&ocirc;ng d&acirc;y, cho bạn sạc linh hoạt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mức gi&aacute; hấp dẫn, t&iacute;nh năng xịn s&ograve; trong ph&acirc;n kh&uacute;c, mẫu Samsung Galaxy S21 FE 5G (6GB/128GB) của d&ograve;ng Galaxy S hứa hẹn sẽ mang đến những ph&uacute;t gi&acirc;y trải nghiệm đ&aacute;ng nhớ cho bạn.</span></span></p>

<p>&nbsp;</p>
', 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP25', N'LSP01', N'NSX01', N'IPhone XS', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 17999000, 17, 20, N'0         ', N'New', N'hinh12.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP26', N'LSP03', N'NSX03', N'OPPO Reno7 Z 5G', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 8490000, 17, 31, N'0         ', N'New', N'oppo7.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 20)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP27', N'LSP02', N'NSX03', N'OPPO A95 4G', N'<p>M&agrave;n h&igrave;nh: Dynamic AMOLED 2X6.4&quot;Full HD+</p>

<p>Hệ điều h&agrave;nh: Android 12</p>

<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>

<p>Camera trước: 32 MP</p>

<p>Chip: Exynos 2100</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 2 Nano SIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4500 mAh25 W</p>
', 6800000, 17, 30, N'0         ', N'New', N'oppo8.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ đến từ c&aacute;c thế hệ trước đ&oacute; th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb" target="_blank" title="Tham khảo điện thoại OPPO Reno8 T 5G 256GB đang kinh doanh tại Thế Giới Di Động">OPPO Reno8 T 5G 256GB</a>&nbsp;cuối c&ugrave;ng đ&atilde; được giới thiệu ch&iacute;nh thức tại Việt Nam, được định h&igrave;nh l&agrave; d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c tầm trung với camera 108 MP, con chip Snapdragon 695 c&ugrave;ng kiểu d&aacute;ng thiết kế mặt lưng v&agrave; m&agrave;n h&igrave;nh bo cong hết sức nổi bật.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế với kiểu d&aacute;ng bắt mắt</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Qua những lần chạm đầu ti&ecirc;n tr&ecirc;n chiếc Reno8 T 5G th&igrave; m&igrave;nh thấy đ&acirc;y l&agrave; một chiếc điện thoại c&oacute; độ ho&agrave;n thiện kh&aacute; tốt, m&aacute;y mang lại cho m&igrave;nh một cảm gi&aacute;c cầm nắm tương đối l&agrave; đầm tay, hai b&ecirc;n cạnh cũng được l&agrave;m bo cong gi&uacute;p hạn chế t&igrave;nh trạng cấn tay mang đến cho m&igrave;nh một trải nghiệm sử dụng kh&aacute; l&agrave; thoải m&aacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" onclick="return false;"><img alt="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101507.jpg" title="Vẻ ngoài hiện đại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tr&ecirc;n tay m&igrave;nh đ&acirc;y hiện đang l&agrave; phi&ecirc;n bản m&agrave;u đen c&oacute; hiệu ứng phản quang kh&aacute; bắt mắt, đ&acirc;y c&oacute; thể coi l&agrave; phi&ecirc;n bản m&agrave;u truyền thống v&agrave; quen thuộc đến từ nh&agrave; OPPO, nhưng lần n&agrave;y h&atilde;ng l&agrave;m cho n&oacute; trở n&ecirc;n nổi bật hơn bằng c&aacute;ch tạo th&ecirc;m một vệt b&oacute;ng theo kiểu mặt nhẵn ở b&ecirc;n dưới tr&ocirc;ng kh&aacute; lạ mắt.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" onclick="return false;"><img alt="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101543.jpg" title="Mặt lưng nhám - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngoại trừ cụm camera v&agrave; phần vệt b&oacute;ng b&ecirc;n tr&ecirc;n ra th&igrave; gần như mọi vị tr&iacute; kh&aacute;c tr&ecirc;n mặt lưng đều được l&agrave;m theo kiểu nh&aacute;m, nhờ đ&oacute; m&agrave; hiện tượng b&aacute;m dấu v&acirc;n tay cũng được hạn chế kh&aacute; nhiều để mang đến cho m&igrave;nh cảm gi&aacute;c cầm chắc tay hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" onclick="return false;"><img alt="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101606.jpg" title="Cụm camera độc đáo - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh đ&oacute;, c&aacute;ch l&agrave;m nhẵn c&ugrave;ng chất liệu l&agrave; thuỷ tinh hữu cơ n&ecirc;n mặt lưng của m&aacute;y cho khả năng kh&aacute;ng xước kh&aacute; tốt, điều n&agrave;y l&agrave;m m&igrave;nh an t&acirc;m hơn mỗi khi đặt m&aacute;y l&ecirc;n c&aacute;c bề mặt gồ ghề dễ xước hay để chung&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;với c&aacute;c vật dụng kh&aacute;c như ch&igrave;a kh&oacute;a, đầu d&acirc;y sạc hay m&oacute;c kh&oacute;a kim loại v&agrave;o c&ugrave;ng một chiếc t&uacute;i.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm m&agrave; m&igrave;nh thấy chưa thực sự ưng &yacute; lắm l&agrave; c&aacute;ch thiết kế cụm camera, phần n&agrave;y được l&agrave;m hơi cao so với mặt lưng n&ecirc;n theo cảm nhận của m&igrave;nh đ&acirc;y l&agrave; một vị tr&iacute; kh&aacute; dễ xước, để c&oacute; thể an t&acirc;m sử dụng m&igrave;nh cũng đ&atilde; d&ugrave;ng th&ecirc;m ốp lưng m&agrave; h&atilde;ng c&oacute; tặng k&egrave;m để bảo vệ thiết bị được an to&agrave;n hơn.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" onclick="return false;"><img alt="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101610.jpg" title="Thiết kế cụm camera - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Điều l&agrave;m m&igrave;nh ấn tượng nhất về chiếc m&aacute;y n&agrave;y c&oacute; lẽ l&agrave; c&aacute;ch m&agrave; h&atilde;ng tối ưu k&iacute;ch thước cạnh viền, theo m&igrave;nh điều n&agrave;y cũng nhờ một phần từ việc thiết kế m&agrave;n h&igrave;nh bo cong n&ecirc;n khi xem một v&agrave;i tựa phim hay chơi game c&oacute; tone m&agrave;u tối m&aacute;y l&agrave;m cho m&igrave;nh c&oacute; cảm gi&aacute;c như đang sử dụng một chiếc điện thoại kh&ocirc;ng viền.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" onclick="return false;"><img alt="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101615.jpg" title="Tối ưu viền màn hình siêu mỏng - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trải nghiệm nội dung tốt hơn với m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Về th&ocirc;ng số m&agrave;n h&igrave;nh, m&aacute;y được trang bị tấm nền AMOLED với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels) nhờ đ&oacute; m&agrave; h&igrave;nh ảnh mang đến c&oacute; m&agrave;u sắc rực rỡ bắt mắt, m&agrave;u đen t&aacute;i hiện s&acirc;u c&ugrave;ng độ ph&acirc;n giải cao gi&uacute;p mọi nội dung khi xem đều tạo cho m&igrave;nh một cảm gi&aacute;c ch&acirc;n thực v&agrave; ấn tượng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" target="_blank">M&agrave;n h&igrave;nh AMOLED l&agrave; g&igrave;? C&oacute; g&igrave; nổi bật? Thiết bị n&agrave;o c&oacute; m&agrave;n h&igrave;nh AMOLED?</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" onclick="return false;"><img alt="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101619.jpg" title="Sử dụng tấm nền AMOLED - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Reno8 T 5G sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inch cho kh&ocirc;ng gian hiển thị vừa đủ để m&igrave;nh xem phim hay thao t&aacute;c chơi game được thoải m&aacute;i. Tuy sở hữu k&iacute;ch thước lớn nhưng h&atilde;ng cũng đ&atilde; l&agrave;m n&oacute; theo kiểu d&agrave;i v&agrave; thon n&ecirc;n nh&igrave;n cũng rất hiện đại chứ kh&ocirc;ng bị qu&aacute; th&ocirc; như một v&agrave;i mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank" title="Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động">điện thoại Android</a>&nbsp;kh&aacute;c c&oacute; c&ugrave;ng k&iacute;ch thước tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" onclick="return false;"><img alt="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101623.jpg" title="Kích thước màn hình lớn - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Ngo&agrave;i ra, điện thoại c&oacute; một ưu điểm kh&aacute; lớn về tần số qu&eacute;t m&agrave;n h&igrave;nh khi m&aacute;y hỗ trợ tối đa 120 Hz, vậy n&ecirc;n khi m&igrave;nh thao t&aacute;c vuốt chạm m&aacute;y phản hồi với tốc độ rất nhanh, mọi nội dung hiển thị ở tốc độ khung h&igrave;nh cao cũng sẽ được t&aacute;i hiện lại theo một c&aacute;ch mượt m&agrave; gi&uacute;p m&igrave;nh xem phim đ&atilde; mắt hơn.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" onclick="return false;"><img alt="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101627.jpg" title="Hỗ trợ tần số quét cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank" title="Tham khảo điện thoại OPPO đang kinh doanh tại Thế Giới Di Động">điện thoại OPPO</a>&nbsp;n&agrave;y c&oacute; độ s&aacute;ng kh&aacute; lớn khi m&aacute;y hỗ trợ tối đa l&ecirc;n tới 800 nits, đủ để m&igrave;nh c&oacute; thể sử dụng ở ngo&agrave;i trời &aacute;nh s&aacute;ng cao mỗi khi d&ugrave;ng cho việc xem bản đồ l&uacute;c di chuyển hay căn chỉnh khung h&igrave;nh để chụp ảnh.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" onclick="return false;"><img alt="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101632.jpg" title="Màn hình độ sáng cao - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hỗ trợ camera chụp ảnh độ ph&acirc;n giải si&ecirc;u cao</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chiếc điện thoại OPPO Reno n&agrave;y được h&atilde;ng trang bị bộ ba camera với độ ph&acirc;n giải cảm biến ch&iacute;nh l&agrave; 108 MP, k&egrave;m với đ&oacute; l&agrave; hai ống k&iacute;nh phụ c&oacute; chung độ ph&acirc;n giải 2 MP hỗ trợ x&oacute;a ph&ocirc;ng c&ugrave;ng t&iacute;nh năng chụp ảnh hiển vi.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" onclick="return false;"><img alt="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101637.jpg" title="Camera chụp ảnh sắc nét - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với chế độ chụp mặc định, m&aacute;y mang đến cho m&igrave;nh bức ảnh c&oacute; chất lượng kh&aacute; ổn &aacute;p với độ chi tiết cao, m&agrave;u sắc được t&aacute;i hiện theo kiểu ch&acirc;n thực chứ kh&ocirc;ng bị l&agrave;m trở n&ecirc;n qu&aacute; ảo hay qu&aacute; bệt.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101643.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101647.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một v&agrave;i trường hợp chụp ảnh ngược s&aacute;ng điện thoại cũng sẽ tự động c&acirc;n bằng gi&uacute;p cho bức ảnh trở n&ecirc;n kh&ocirc;ng qu&aacute; tối hay ch&oacute;a, điều n&agrave;y quả thực rất hữu &iacute;ch đối với m&igrave;nh khi kh&ocirc;ng phải mất th&ecirc;m nhiều thời gian hậu kỳ - chỉnh sửa để c&acirc;n bằng s&aacute;ng theo c&aacute;ch thủ c&ocirc;ng.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" onclick="return false;"><img alt="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101653.jpg" title="Ảnh chụp từ điện thoại - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">C&ograve;n khi chuyển sang chụp ảnh ở khoảng c&aacute;ch gần, m&aacute;y lấy n&eacute;t rất nhanh, vật thể c&oacute; m&agrave;u sắc tươi tắn cũng được chế độ AI camera tinh chỉnh gi&uacute;p bức ảnh c&agrave;ng th&ecirc;m phần sinh động đầy sức sống.</span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặc d&ugrave; Reno8 T 5G kh&ocirc;ng được hỗ trợ camera g&oacute;c si&ecirc;u rộng nhưng độ bao qu&aacute;t từ camera ch&iacute;nh theo m&igrave;nh cảm nhận cũng kh&aacute; tốt, như bức ảnh dưới đ&acirc;y gần như mọi khung cảnh trước mắt m&igrave;nh đều được thu lại một c&aacute;ch trọn vẹn.</span></span></p>

<p>&nbsp;</p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Hiệu năng đ&aacute;p ứng tốt mọi nhu cầu cơ bản</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Trang bị b&ecirc;n trong Reno8 T 5G l&agrave; một con chip được đ&aacute;nh l&agrave; c&oacute; hiệu năng tốt của nh&agrave; Qualcomm với t&ecirc;n gọi Snapdragon 695 5G, t&iacute;nh đến thời điểm hiện tại m&igrave;nh thấy đ&acirc;y được xem l&agrave; vi xử l&yacute; vẫn đ&aacute;p ứng tốt nhiều nhu cầu sử dụng từ chơi game đến những t&aacute;c vụ cơ bản.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-snapdragon-695-5g-hieu-nang-manh-me-1456599" target="_blank">T&igrave;m hiểu chip Snapdragon 695 5G. Hiệu năng mạnh mẽ!</a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" onclick="return false;"><img alt="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101721.jpg" title="Trang bị con chip từ nhà Qualcomm - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung việc trang bị Snapdragon 695 5G cũng được xem l&agrave; kh&aacute; hợp l&yacute;, với số điểm mang lại tr&ecirc;n những phần mềm đ&aacute;nh gi&aacute; hiệu năng hiện vẫn c&ograve;n rất tốt, cụ thể l&agrave; Reno8 T 5G đạt 677 (đơn nh&acirc;n), 1873 (đa nh&acirc;n) tr&ecirc;n Benchmark v&agrave; 9790 điểm tr&ecirc;n PCMark.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" onclick="return false;"><img alt="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101726.jpg" title="Cấu hình khá tốt trong tầm giá - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để giải đ&aacute;p cho những th&ocirc;ng tin c&oacute; phần l&yacute; thuyết ở b&ecirc;n tr&ecirc;n th&igrave; m&igrave;nh cũng sẽ mang đến cho c&aacute;c bạn trải nghiệm thực tế của Reno8 T 5G mang lại. Đầu ti&ecirc;n, cảm nhận khi d&ugrave;ng c&aacute;c t&aacute;c vụ cơ bản như xem phim, lướt web v&agrave; nhắn tin m&aacute;y dường như kh&ocirc;ng gặp bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thao t&aacute;c của m&igrave;nh đều được phản hồi nhanh một c&aacute;ch mượt m&agrave;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" onclick="return false;"><img alt="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101732.jpg" title="Sử dụng mượt mà - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">N&acirc;ng cao hơn một ch&uacute;t m&igrave;nh cũng đ&atilde; chuyển qua chơi một v&agrave;i tựa game hiện đang kh&aacute; phổ biến ở thị trường nước ta như Li&ecirc;n Qu&acirc;n Mobile, mức đồ họa m&igrave;nh c&agrave;i đặt cho tựa game n&agrave;y l&agrave; ở độ ph&acirc;n giải si&ecirc;u cao v&agrave; chất lượng h&igrave;nh ảnh cao, nhờ đ&oacute; m&agrave; h&igrave;nh ảnh trong game được t&aacute;i hiện đẹp mắt với hiệu ứng rực rỡ đầy sống động.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101736.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phần trải nghiệm về độ mượt Reno8 T 5G vẫn đ&aacute;p ứng tốt, FPS được duy tr&igrave; ở con số loanh quanh mức 58 - 60, đ&ocirc;i l&uacute;c m&aacute;y cũng c&oacute; xuất hiện t&igrave;nh trạng khựng nhẹ nhưng sẽ kh&ocirc;ng k&eacute;o d&agrave;i qu&aacute; l&acirc;u ảnh hưởng tới trận đấu của m&igrave;nh. Để c&oacute; được trải nghiệm ho&agrave;n hảo nhất m&igrave;nh cũng đ&atilde; chuyển sang mức đồ họa thấp hơn th&igrave; quả thật t&igrave;nh trạng n&agrave;y cũng đ&atilde; được cải thiện đi đ&aacute;ng kể.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101741.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Chuyển đến tựa game PUBG Mobile dường như l&uacute;c n&agrave;y m&aacute;y cũng đ&atilde; bắt đầu xuất hiện một v&agrave;i yếu điểm về hiệu năng, m&igrave;nh c&agrave;i đặt cấu h&igrave;nh tr&ograve; chơi ở mức đồ họa HD v&agrave; tốc độ khung h&igrave;nh cao. Theo c&aacute; nh&acirc;n m&igrave;nh tựa game n&agrave;y khi c&agrave;i đặt ở cấu h&igrave;nh cao sẽ mang lại trải nghiệm chưa được tốt lắm, FPS cũng chỉ duy tr&igrave; loanh quanh 30 - 31 điểm v&agrave; m&aacute;y c&oacute; hơi khựng nhẹ ở giai đoạn đầu trận trong qu&aacute; tr&igrave;nh tải xuống đồ họa trận đấu.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101746.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Tuy nhi&ecirc;n, bạn cũng ho&agrave;n to&agrave;n c&oacute; thể chuyển xuống mức đồ họa thấp hơn với tốc độ khung h&igrave;nh mượt, điều n&agrave;y sẽ gi&uacute;p v&aacute;n game của bạn trở n&ecirc;n ổn định hơn nhưng đổi lại l&agrave; phần chất lượng h&igrave;nh ảnh sẽ giảm đi đ&ocirc;i ch&uacute;t. Nếu như bạn kh&ocirc;ng đặt nặng vấn đề về chất lượng h&igrave;nh ảnh m&agrave; ưu ti&ecirc;n độ mượt m&agrave; tr&ecirc;n một chiếc điện thoại tầm trung th&igrave; đ&acirc;y rất c&oacute; thể l&agrave; chiếc điện thoại d&ugrave;ng cho việc chơi game kh&aacute; ổn tr&ecirc;n thị trường.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" onclick="return false;"><img alt="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" src="https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-256gb-020323-101750.jpg" title="Trải nghiệm game thực tế - OPPO Reno8 T 5G 256GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">B&ecirc;n cạnh việc trang bị chipset từ nh&agrave; Qualcomm hay hệ điều h&agrave;nh Android 13 mới, đ&acirc;y c&ograve;n l&agrave; mẫu điện thoại RAM 8 GB được bổ sung th&ecirc;m t&iacute;nh năng mở rộng với tổng số bộ nhớ tối đa c&oacute; thể đạt được l&agrave; 16 GB. Nhờ vậy m&agrave; m&aacute;y mang đến một trải nghiệm về đa nhiệm hết sức ấn tượng, cho d&ugrave; m&igrave;nh mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&aacute;y vẫn kh&ocirc;ng hết xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu.</span></span></p>

<p>&nbsp;</p>
', 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu], [Image], [MoTa], [GiamGia]) VALUES (N'SP9', N'LSP01', N'NSX01', N'iPhone 13 Pro Max', N'<p>M&agrave;n h&igrave;nh: OLED6.7&quot;Super Retina XDR</p>

<p>Hệ điều h&agrave;nh: iOS 16</p>

<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>

<p>Camera trước: 12 MP</p>

<p>Chip: Apple A16 Bionic</p>

<p>RAM: 6 GB</p>

<p>Dung lượng lưu trữ: 128 GB</p>

<p>SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>

<p>Pin, Sạc: 4323 mAh20 W</p>

<p>&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', 12000000, 17, 24, N'0         ', N'New', N'hinh9.png', N'<h3><span style="font-size:20px"><span style="font-family:Times New Roman,Times,serif">Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-14-pro-max" target="_blank" title="Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Đức Cảnh shop.</span></span></h3>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone-13-series" target="_blank" title="Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động">điện thoại</a>&nbsp;cho đến nay.&nbsp;</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" onclick="return false;"><img alt="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg" title="Thiết kế vuông vức - iPhone 14 Pro Max 128GB" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đột ph&aacute; với thiết kế Dynamic island</span></span></h3>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" onclick="return false;"><img alt="Hình notch mới mẻ - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg" title="Hình notch mới mẻ - iPhone 14 Pro Max" /></a></span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</span></span></p>

<h3><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</span></span></h3>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" onclick="return false;"><img alt="Phiên bản màu tím - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg" title="Phiên bản màu tím - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>V&agrave;ng - Gold&nbsp;</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" onclick="return false;"><img alt="Phiên bản màu vàng - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg" title="Phiên bản màu vàng - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Bạc - Silver</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" onclick="return false;"><img alt="Phiên bản màu bạc - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg" title="Phiên bản màu bạc - iPhone 14 Pro Max" /></a></span></span></p>

<h4><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><strong>Đen - Space Black</strong></span></span></h4>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px">Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</span></span></p>

<p><span style="font-family:Times New Roman,Times,serif"><span style="font-size:18px"><a href="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" onclick="return false;"><img alt="Phiên bản màu đen - iPhone 14 Pro Max" src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg" title="Phiên bản màu đen - iPhone 14 Pro Max" /></a></span></span></p>

<p>&nbsp;</p>
', 5)
GO
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] ON 

INSERT [dbo].[ThongTinCaNhan] ([id], [MaTaiKhoan], [TenTaiKhoan], [SoDienThoai], [DiaChi], [GioiTinh], [NgaySinh]) VALUES (1, N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'Soái Ặc Min', 1634819905, N'nhà hàng xóm', N'nam', N'1996-04-17')
INSERT [dbo].[ThongTinCaNhan] ([id], [MaTaiKhoan], [TenTaiKhoan], [SoDienThoai], [DiaChi], [GioiTinh], [NgaySinh]) VALUES (2, N'05c220be-cc7e-4f9e-bcfa-e3883b1a1720', N'RyoSama', 1123123123, N'1231312123', N'nữ', N'1998-03-12')
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 30/04/2023 8:16:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()) FOR [Ngay]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  CONSTRAINT [DF_OrderDetail_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_MaLoaiSanPham]  DEFAULT ((0)) FOR [MaLoaiSanPham]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_MaNhaSanXuat]  DEFAULT ((0)) FOR [MaNhaSanXuat]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New') FOR [GhiChu]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_OrderDetail_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([NguoiDat])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThongTinCaNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinCaNhan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ThongTinCaNhan] CHECK CONSTRAINT [FK_ThongTinCaNhan_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [ShopMobile] SET  READ_WRITE 
GO
