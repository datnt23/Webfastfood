create database QL_FastFood
go
USE [QL_FastFood]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/11/2022 5:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](20) NOT NULL,
	[PassAdmin] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDDH]    Script Date: 6/11/2022 5:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDDH](
	[IDDonDatHang] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDDH] PRIMARY KEY CLUSTERED 
(
	[IDDonDatHang] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 6/11/2022 5:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[IDDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [bit] NULL,
	[TrangThaiGiaoHang] [bit] NULL,
	[DiaChiGH] [nvarchar](200) NULL,
	[NgayDH] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[IDKhachHang] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[IDDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/11/2022 5:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [varchar](11) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/11/2022 5:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IDLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/11/2022 5:28:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiSanPham] [int] NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[ChuThich] [nvarchar](max) NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [HoTen]) VALUES (N'Admin', N'123456', N'Nguyễn Trọng Khải')
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (1, 1, 1, CAST(15000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (1, 2, 1, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (2, 21, 1, CAST(69000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (3, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (4, 21, 2, CAST(69000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (5, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (6, 14, 1, CAST(69000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (7, 21, 1, CAST(69000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (8, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (9, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (11, 13, 3, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (11, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (1008, 24, 3, CAST(29000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (1009, 19, 2, CAST(69000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDDH] ([IDDonDatHang], [IDSanPham], [SoLuong], [Gia]) VALUES (1010, 24, 1, CAST(29000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (1, 1, 1, NULL, CAST(N'2022-06-01T18:38:51.173' AS DateTime), CAST(N'2022-06-09T00:00:00.000' AS DateTime), 6)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (2, 0, 0, NULL, CAST(N'2022-06-03T04:43:15.143' AS DateTime), CAST(N'2022-06-29T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (3, 0, 0, NULL, CAST(N'2022-06-03T04:44:46.340' AS DateTime), CAST(N'2022-06-10T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (4, 0, 0, NULL, CAST(N'2022-06-03T04:47:13.733' AS DateTime), CAST(N'2022-06-16T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (5, 0, 0, NULL, CAST(N'2022-06-03T05:41:29.047' AS DateTime), CAST(N'2022-07-09T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (6, 0, 0, NULL, CAST(N'2022-06-05T22:06:54.353' AS DateTime), CAST(N'2022-06-05T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (7, 0, 0, NULL, CAST(N'2022-06-05T22:07:24.793' AS DateTime), CAST(N'2022-06-05T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (8, 0, 0, NULL, CAST(N'2022-06-07T15:47:00.240' AS DateTime), CAST(N'2022-06-07T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (9, 0, 0, NULL, CAST(N'2022-06-07T15:56:24.920' AS DateTime), CAST(N'2022-06-07T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (11, 0, 0, NULL, CAST(N'2022-06-07T16:35:27.803' AS DateTime), CAST(N'2022-06-07T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (1008, 0, 0, NULL, CAST(N'2022-06-09T21:19:09.787' AS DateTime), CAST(N'2022-06-09T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (1009, 0, 0, NULL, CAST(N'2022-06-09T22:11:58.620' AS DateTime), CAST(N'2022-06-09T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[DonDatHang] ([IDDonDatHang], [DaThanhToan], [TrangThaiGiaoHang], [DiaChiGH], [NgayDH], [NgayGiao], [IDKhachHang]) VALUES (1010, 0, 0, NULL, CAST(N'2022-06-11T13:51:57.363' AS DateTime), CAST(N'2022-06-11T00:00:00.000' AS DateTime), 7)
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (1, N'Nguyễn Thanh Đạt', N'datpq', N'123456', CAST(N'2001-04-23T00:00:00.000' AS DateTime), N'0912252304', N'Thanh dat', N'thanhdatpqkg23@gmail.com')
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (2, N'Nguyễn Tiến Luân', N'thang', N'123456', CAST(N'1990-10-15T00:00:00.000' AS DateTime), N'0917654310', N'21 Quận 6', N'ntluan@hcmuns.edu.vn')
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (5, N'Nguyễn Thanh Đạt', N'thang', N'123', CAST(N'2021-02-18T00:00:00.000' AS DateTime), N'0912341241', N'sdafsdafsdfas', N'thanhdatpqkg1@gmail.com')
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (6, N'Nguyễn Thanh Đạt', N'datnt', N'1111', CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'0912341241', N'sdafsdafsdfas', N'thanhdatpqkg1@gmail.com')
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (7, N'Nguyễn Trọng Khải', N'nguyenkhai', N'123', CAST(N'2001-12-03T00:00:00.000' AS DateTime), N'0384533735', N'Phuoc long B quan 9', N'khainguyen@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 
GO
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'HAMBURGER')
GO
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (2, N'PIZZA')
GO
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (3, N'GÀ')
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (1, 3, N'Hamburger Bò Nướng', CAST(50000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Rau và Cà Chua', N'hbg1.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (2, 1, N'Hamburger Bò Phô Mai', CAST(49000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Dưa Chua', N'hbg2.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (3, 1, N'Hamburger Bò Nướng Khoai Tây Lát', CAST(49000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Rau và Khoai Tây', N'hbg3.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (4, 1, N'Hamburger Gà Nướng', CAST(49000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Rau và Cà Chua', N'hbg4.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (5, 1, N'Hamburger Gà Giòn Cay', CAST(49000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Rau và Cà Chua', N'hbg5.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (6, 1, N'Hamburger Cá', CAST(49000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Kèm Rau và Cà chua', N'hbg6.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (7, 2, N'Pizza Xốt Bơ Tỏi', CAST(79000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Thanh Nhẹ Với Ô Liu Đen Tuyệt Hảo, Cà Chua Bi Tươi Ngon, Nấm, Thơm, Bắp, Hành Tây Và Phô Mai Mozzarella Cho Bạn Bữa Tiệc Rau Củ Tròn Vị', N'pizza1.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (8, 2, N'Pizza Hải Sản Xốt Pesto', CAST(79000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'ới Hải Sản (Tôm, Mực) Nhân Đôi Cùng Với Nấm Trên Nền Xốt Pesto Đặc Trưng, Phủ Phô Mai Mozzarella Từ New Zealand Và Quế Tây.', N'pizza2.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (9, 2, N'Pizza Cơn Lốc Hải Sản', CAST(99000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Với Hải Sản (MựC, Thanh Cua) Nhân Đôi Cùng Với Thơm, Ớt Chuông Xanh, HàNh Tây, Phủ Phô Mai Mozzarella Từ New Zealand Trên Nền XốT Cheesy Mayo.', N'pizza3.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (10, 2, N'Pizza Hải Sản Xốt Tiêu Đen', CAST(99000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Với Hải Sản (Tôm, Mực, Thanh Cua) Nhân Đôi Cùng Với Hành Tây, Thơm Phủ Xốt Tiêu Đen Thơm Nóng Và Phô Mai Mozzarella Từ New Zealand.', N'pizza4.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (11, 2, N'Pizza Phô Mai 2 Loại Nhân', CAST(109000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Cùng Thưởng thức 2 Loại Nhân Phủ Trên Cùng 1 Bánh Pizza', N'pizza5.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (12, 2, N'Pizza Pate Lạp Xưởng', CAST(99000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Sự kết hợp đột phá của hương vị truyền thống với Lạp xưởng Mai Quế Lộ, Pate Đồng Quê và phô mai Mozzarella thơm béo mang lại trải nghiệm mới mẻ và thú vị.', N'pizza6.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (13, 3, N'Gà Chiên Giòn Rụm', CAST(29000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Gà Được Phủ Một Lớp Bột Mì Để Giữ Cho Miếng Gà Luôn Nóng Giòn .', N'ga102.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (14, 3, N'Combo1', CAST(69000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Gồm 1 Miếng Gà Sốt Cay Kèm Khoai Tây Và 1 Lon PEPSi', N'ga100.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (19, 3, N'combo2', CAST(69000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Cơm Gà Sốt Cay và 1 Lon PEPSI', N'ga3.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (20, 3, N'combo3', CAST(69000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Cơm Gà Chiên Giòn và 1 Lon PEPSI', N'ga5.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (21, 3, N'combo4', CAST(69000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Cơm Gà Chiên Giòn Kèm Khoai Tây và 1 Lon PEPSI', N'ga6.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (24, 3, N'Gà Giòn Sốt Cay', CAST(29000 AS Decimal(18, 0)), CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'Món gà rán sốt cay có lớp vỏ bên ngoài giòn tan, vị cay cay và độ mặn ngọt vừa phải cùng với thịt gà mềm ngọt bên trong chắc hẳn sẽ là một món ăn hoàn hảo', N'ga111.jpg')
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_DonDatHang] FOREIGN KEY([IDDonDatHang])
REFERENCES [dbo].[DonDatHang] ([IDDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([IDLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([IDLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
