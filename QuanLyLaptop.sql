USE [QLLaptop]
GO
/****** Object:  Table [dbo].[CTDONHANG]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDONHANG](
	[SoHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](9, 2) NULL,
	[ThanhTien]  AS ([SoLuong]*[DonGia]),
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTGIAMGIA]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTGIAMGIA](
	[MaGiamGia] [int] NULL,
	[TenMaGiamGia] [nvarchar](50) NULL,
	[MaSP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[SoHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [date] NULL,
	[Gia] [money] NULL,
	[NgayGiaoHang] [date] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](100) NULL,
	[DienThoaiNhan] [varchar](10) NULL,
	[HTThanhToan] [bit] NULL,
	[HTGiaoHang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAMGIA]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAMGIA](
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[PhanTram] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](50) NULL,
	[DienThoaiKH] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaGiamGia] [int] NULL,
	[TenSP] [varchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[RAM] [int] NULL,
	[ViXuLy] [nvarchar](50) NULL,
	[KichThuocMH] [varchar](10) NULL,
	[DonGia] [money] NOT NULL,
	[SoLuongCon] [int] NOT NULL,
	[NgaySX] [date] NOT NULL,
	[MaLoaiSP] [int] NOT NULL,
	[MaNSX] [int] NOT NULL,
	[HinhAnh] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19/11/2022 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[TenAdmin] [nvarchar](50) NULL,
	[TenDNAdmin] [varchar](50) NULL,
	[MatKhauAdmin] [varchar](50) NULL,
	[EmailAdmin] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTDONHANG] ([SoHD], [MaSP], [SoLuong], [DonGia]) VALUES (1, 1, 1, CAST(18.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDONHANG] ([SoHD], [MaSP], [SoLuong], [DonGia]) VALUES (2, 2, 1, CAST(20.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDONHANG] ([SoHD], [MaSP], [SoLuong], [DonGia]) VALUES (3, 3, 1, CAST(1000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDONHANG] ([SoHD], [MaSP], [SoLuong], [DonGia]) VALUES (4, 3, 1, CAST(1000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDONHANG] ([SoHD], [MaSP], [SoLuong], [DonGia]) VALUES (4, 4, 1, CAST(10000.00 AS Decimal(9, 2)))
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([SoHD], [MaKH], [NgayDH], [Gia], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (1, 1, CAST(N'2022-11-10' AS Date), 180000000.0000, CAST(N'2022-11-10' AS Date), NULL, NULL, NULL, 0, 0)
INSERT [dbo].[DONHANG] ([SoHD], [MaKH], [NgayDH], [Gia], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (2, 1, CAST(N'2022-10-02' AS Date), 19000000.0000, CAST(N'2022-10-02' AS Date), NULL, NULL, NULL, 0, 0)
INSERT [dbo].[DONHANG] ([SoHD], [MaKH], [NgayDH], [Gia], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (3, 4, CAST(N'2022-11-18' AS Date), 1000000.0000, CAST(N'2022-11-21' AS Date), N'test', N'binh dương', N'0333111111', 0, 1)
INSERT [dbo].[DONHANG] ([SoHD], [MaKH], [NgayDH], [Gia], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (4, 4, CAST(N'2022-11-18' AS Date), 1010000.0000, CAST(N'2022-12-09' AS Date), N'test', N'binh dương', N'0333111111', 0, 1)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[GIAMGIA] ON 

INSERT [dbo].[GIAMGIA] ([MaGiamGia], [NgayBD], [NgayKT], [PhanTram]) VALUES (1, CAST(N'2022-11-15' AS Date), CAST(N'2022-11-20' AS Date), 20)
INSERT [dbo].[GIAMGIA] ([MaGiamGia], [NgayBD], [NgayKT], [PhanTram]) VALUES (2, CAST(N'2022-11-10' AS Date), CAST(N'2022-11-30' AS Date), 20)
SET IDENTITY_INSERT [dbo].[GIAMGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (1, N'Nguyễn Hoài Nam', N'Bình Dương', N'0334165442', N'namnh', N'1234', CAST(N'2000-11-02T00:00:00' AS SmallDateTime), 1, N'namnh@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (2, N'Trần Thị Bích Ngân', N'Bình Phước', N'0315896266', N'ngantt', N'4567', CAST(N'2001-10-02T00:00:00' AS SmallDateTime), 0, N'ngantt@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (3, N'Võ Minh Trọng', N'TP Hồ Chí Minh', N'0325487551', N'trongmv', N'7899', CAST(N'2002-01-21T00:00:00' AS SmallDateTime), 1, N'trongmv@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (4, N'test', N'binh dương', N'0333111111', N'tet', N'123', CAST(N'2022-11-15T00:00:00' AS SmallDateTime), 1, N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISP] ON 

INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Cao cấp - Sang trọng')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Đồ họa - Kỹ thuật')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Laptop Gaming')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Học tập - Văn phòng')
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Mỏng nhẹ')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
GO
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (1, N'Acer')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (2, N'Apple ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (3, N'ASUS')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (4, N'DELL')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (5, N'HP')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (6, N'HUAWEI')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (7, N'Lenovo')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (8, N'LG')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (9, N'MSI')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (1, 1, N'Asus VivoBook X415EA', N'Laptop Asus VivoBook X415EA i5 (EK033T) đi theo xu hướng thiết kế hiện đại, tối giản, chú trọng vào độ linh hoạt và cơ động để người dùng dễ di chuyển hằng ngày. Chiếc máy này sở hữu bộ vi xử lí gen 11 đến từ nhà Intel cho hiệu suất làm việc cao, ổn định. Thiết kế tối giản, gọn gàng với trọng lượng chỉ 1.55 kg.', 8, N'Intel Core i5 Tiger Lake,1135G7, 2.40 GHz', N'14 inch', 15000000.0000, 12, CAST(N'2020-05-11' AS Date), 1, 1, N'asus-vivobook.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (2, 2, N'Dell G3 15 3500', N'Laptop Dell G3 15 3500 i5 (70223130) là chiếc laptop gaming thuộc series G của nhà Dell với thiết kế cực ngầu và hiệu năng mạnh mẽ, hứa hẹn sẽ là người bạn đồng hành của các game thủ trong mọi cuộc chiến. Dell G3 15 3500 i5 có thiết kế mạnh mẽ với các đường cắt vuông vức, tone xanh - đen cực kì nổi bật. Máy có độ dày 28.18 mm và trọng lượng 2.56 kg, khá gọn nhẹ đối với một chiếc laptop gaming. Bàn phím trên Dell G3 có đèn nền màu xanh vừa tiện lợi cho việc gõ phím ở nơi thiếu ánh sáng vừa trông ấn tượng hơn. Phần Touchpad được đặt lệch hẳn sang một bên với một đường viền xanh chạy dọc bắt mắt. Máy cũng trang bị một Webcam HD tiện lợi cho các cuộc gọi nhóm, hội họp hoặc các streamer.', 8, N'Intel Core i5 Tiger Lake,11600H, 2.40 GHz', N'15.6 inch', 20000000.0000, 12, CAST(N'2020-05-11' AS Date), 3, 4, N'5_dell-g3.JPG')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (3, NULL, N'Dell G5 15 3500', N'Laptop Dell G3 15 3500 i5 (70223130) là chiếc laptop gaming thuộc series G của nhà Dell với thiết kế cực ngầu và hiệu năng mạnh mẽ, hứa hẹn sẽ là người bạn đồng hành của các game thủ trong mọi cuộc chiến. Dell G3 15 3500 i5 có thiết kế mạnh mẽ với các đường cắt vuông vức, tone xanh - đen cực kì nổi bật. Máy có độ dày 28.18 mm và trọng lượng 2.56 kg, khá gọn nhẹ đối với một chiếc laptop gaming. Bàn phím trên Dell G3 có đèn nền màu xanh vừa tiện lợi cho việc gõ phím ở nơi thiếu ánh sáng vừa trông ấn tượng hơn. Phần Touchpad được đặt lệch hẳn sang một bên với một đường viền xanh chạy dọc bắt mắt. Máy cũng trang bị một Webcam HD tiện lợi cho các cuộc gọi nhóm, hội họp hoặc các streamer.', 8, N'Intel Core i5 Tiger Lake,11600H, 2.40 GHz', N'15.6 inch', 1000000.0000, 12, CAST(N'2020-05-11' AS Date), 3, 2, N'dell-g5.png')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (4, NULL, N'	MacBook Pro', NULL, 8, N'Intel Core i5 2.3GHz', N'15.6 inch', 10000.0000, 2, CAST(N'2020-11-05' AS Date), 1, 2, N'10_apple-macbook-pro.jpg')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (6, NULL, N'MacBook Pro', NULL, 8, N'Intel Core i7 2.7GHz', N'15.4 inch', 1034556.0000, 10, CAST(N'2020-05-11' AS Date), 1, 2, N'mcb-pro.jpg')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (8, NULL, N'Inspiron 3567', NULL, 8, N'Intel Core i3 6006U 2GHz', N'15.6 inch', 222255000.0000, 15, CAST(N'2015-09-01' AS Date), 4, 4, N'dell-ip2.jpg')
INSERT [dbo].[SANPHAM] ([MaSP], [MaGiamGia], [TenSP], [MoTa], [RAM], [ViXuLy], [KichThuocMH], [DonGia], [SoLuongCon], [NgaySX], [MaLoaiSP], [MaNSX], [HinhAnh]) VALUES (10, NULL, N'Aspire 3', NULL, 8, N'Intel Core i3 7130U 2.7GHz', N'15.6 inch', 30155444.0000, 3, CAST(N'2019-11-05' AS Date), 5, 1, N'acer-asp3.jpg')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([MaAdmin], [TenAdmin], [TenDNAdmin], [MatKhauAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (1, N'Doãn Hoài Nam', N'namzz', N'123456', N'nam@gmail.com', 1)
INSERT [dbo].[Users] ([MaAdmin], [TenAdmin], [TenDNAdmin], [MatKhauAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (2, N'Nguyễn Văn Đức', N'ducnv', N'123789', N'duc@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (NULL) FOR [RAM]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (NULL) FOR [ViXuLy]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (NULL) FOR [KichThuocMH]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [fk_CT_DH] FOREIGN KEY([SoHD])
REFERENCES [dbo].[DONHANG] ([SoHD])
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [fk_CT_DH]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [fk_CTDONHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [fk_CTDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [fk_DONHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [fk_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_LOAISP_SANPHAM] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [fk_LOAISP_SANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [fk_MANSX_SANPHAM] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [fk_MANSX_SANPHAM]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
