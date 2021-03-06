USE [dbSoftQuanLyNhaHang]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spUpdateNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spUpdateLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spUpdateKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDangNhap_MatKhau]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spUpdateDangNhap_MatKhau]
GO
/****** Object:  StoredProcedure [dbo].[spSearchNVByTenNV]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spSearchNVByTenNV]
GO
/****** Object:  StoredProcedure [dbo].[spSearchNVByIdNV]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spSearchNVByIdNV]
GO
/****** Object:  StoredProcedure [dbo].[spInsertNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spInsertNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[spInsertLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spInsertLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spInsertKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spInsertKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spInsertDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spInsertDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[spgetTenThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetTenThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spgetTenLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetTenLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spgetTenKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetTenKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spgetNhanVienByIdNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetNhanVienByIdNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[spgetNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[spgetLoaiThucDonByIdLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetLoaiThucDonByIdLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spgetLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spgetKhuVucByIdKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetKhuVucByIdKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spgetKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spgetDangNhapByIdDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetDangNhapByIdDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[spgetDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spgetDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spDeleteNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spDeleteLoaiThucDon]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spDeleteKhuVuc]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteDangNhapByIdDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spDeleteDangNhapByIdDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[spCheckDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[spCheckDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAllProcedures]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP PROCEDURE [dbo].[DeleteAllProcedures]
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5953A65647]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] DROP CONSTRAINT [UQ__LoaiThuc__6FDE7A5953A65647]
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5924D017B1]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] DROP CONSTRAINT [UQ__LoaiThuc__6FDE7A5924D017B1]
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5916206A6B]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] DROP CONSTRAINT [UQ__LoaiThuc__6FDE7A5916206A6B]
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB3C24D7DA7]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] DROP CONSTRAINT [UQ__KhuVuc__258A8CB3C24D7DA7]
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB375F7DF75]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] DROP CONSTRAINT [UQ__KhuVuc__258A8CB375F7DF75]
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB334C2817F]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] DROP CONSTRAINT [UQ__KhuVuc__258A8CB334C2817F]
GO
/****** Object:  Index [Unique_KhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] DROP CONSTRAINT [Unique_KhuVuc]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[LoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiThucDon]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiThucDon]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhuVuc]') AND type in (N'U'))
DROP TABLE [dbo].[KhuVuc]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DangNhap]') AND type in (N'U'))
DROP TABLE [dbo].[DangNhap]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdThucDon]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdNhanVien]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdLoaiThucDon]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdkhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdkhuVuc]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdKhachHang]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdKhachHang]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdBan]    Script Date: 10/2/2021 8:07:33 PM ******/
DROP FUNCTION [dbo].[fcgetIdBan]
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdBan]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	-- select IdKhachHang=dbo.fcgetIdKhuVuc()
	
					/*-------- BANG BAN ---------*/

	
	Create function [dbo].[fcgetIdBan]()
		returns varchar(5)
		
		
		As
		Begin
			Declare @IdBan varchar(5)
			Declare @MaxIdBan varchar(5)
			Declare @Max float
			
			
			Select @MaxIdBan = MAX(IdBan) from Ban
			
			if exists (select IdBan from Ban)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdBan,4,2)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdBan='BAN' + '0' + Convert(varchar(1),@Max)
			else
						set @IdBan ='BAN' +  Convert(varchar(3),@Max)
			Return @IdBan
	End
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdKhachHang]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		Create function [dbo].[fcgetIdKhachHang]()
		returns varchar(10)
		
		
		As
		Begin
			Declare @IdKhachHang varchar(10)
			Declare @MaxIdKhachHang varchar(10)
			Declare @Max float
			
			
			Select @MaxIdKhachHang = MAX(IdKhachHang) from KhachHang
			
			if exists (select IdKhachHang from KhachHang)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdKhachHang,3,8)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdKhachHang='KH' + '0000000' + Convert(varchar(1),@Max)
			else
			if (@Max < 100)
						set @IdKhachHang='KH' + '000000' + Convert(varchar(2),@Max)
			else
			if (@Max < 1000)
						set @IdKhachHang='KH' + '00000' + Convert(varchar(3),@Max)
			else
			if (@Max < 10000)
						set @IdKhachHang='KH' + '0000' + Convert(varchar(4),@Max)
			else
			if (@Max < 100000)
						set @IdKhachHang ='KH' + '000' + Convert(varchar(5),@Max)
			else
			if (@Max < 1000000)
						set @IdKhachHang  ='KH' + '00' + Convert(varchar(6),@Max)
			else	
			if (@Max < 10000000)
						set @IdKhachHang ='KH' + '0' + Convert(varchar(7),@Max)
			else
						set @IdKhachHang ='KH' +  Convert(varchar(8),@Max)
			Return @IdKhachHang
	End
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdkhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	-- select IdKhachHang=dbo.fcgetIdKhachHang()
	
	/*--------------- BANG KHU VUC ------------*/
	
	Create function [dbo].[fcgetIdkhuVuc]()
		returns varchar(5)
		
		
		As
		Begin
			Declare @IdKhuVuc varchar(5)
			Declare @MaxIdKhuVuc varchar(5)
			Declare @Max float
			
			
			Select @MaxIdKhuVuc = MAX(IdKhuVuc) from KhuVuc
			
			if exists (select IdKhuVuc from KhuVuc)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdKhuVuc,3,3)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdKhuVuc='KV' + '00' + Convert(varchar(1),@Max)
			else
			if (@Max < 100)
						set @IdKhuVuc='KV' + '0' + Convert(varchar(2),@Max)
			else
						set @IdKhuVuc ='KV' +  Convert(varchar(3),@Max)
			Return @IdKhuVuc
	End
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	-- select IdBan=dbo.fcgetIdBan()
	
			/*----- BANG LOAITHUCDON ----------*/
			
		Create function [dbo].[fcgetIdLoaiThucDon]()
		returns varchar(5)
		
		
		As
		Begin
			Declare @IdLoaiThucDon		varchar(5)
			Declare @MaxIdLoaiThucDon	varchar(5)
			Declare @Max float
			
			
			Select @MaxIdLoaiThucDon = MAX(IdLoaiThucDon) from LoaiThucDon
			
			if exists (select IdLoaiThucDon from LoaiThucDon)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdLoaiThucDon,4,2)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdLoaiThucDon='LTD' + '0' + Convert(varchar(1),@Max)
			else
						set @IdLoaiThucDon ='LTD' +  Convert(varchar(3),@Max)
			Return @IdLoaiThucDon
	End
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		Create function [dbo].[fcgetIdNhanVien]()
		returns varchar(10)
		
		
		As
		Begin
			Declare @IdNhanVien varchar(10)
			Declare @MaxIdNhanVien varchar(10)
			Declare @Max float
			
			
			Select @MaxIdNhanVien = MAX(IdNhanVien) from NhanVien
			
			if exists (select IdNhanVien from NhanVien)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdNhanVien,3,8)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdNhanVien='NV' + '0000000' + Convert(varchar(1),@Max)
			else
			if (@Max < 100)
						set @IdNhanVien='NV' + '000000' + Convert(varchar(2),@Max)
			else
			if (@Max < 1000)
						set @IdNhanVien='NV' + '00000' + Convert(varchar(3),@Max)
			else
			if (@Max < 10000)
						set @IdNhanVien='NV' + '0000' + Convert(varchar(4),@Max)
			else
			if (@Max < 100000)
						set @IdNhanVien ='NV' + '000' + Convert(varchar(5),@Max)
			else
			if (@Max < 1000000)
						set @IdNhanVien  ='NV' + '00' + Convert(varchar(6),@Max)
			else	
			if (@Max < 10000000)
						set @IdNhanVien ='NV' + '0' + Convert(varchar(7),@Max)
			else
						set @IdNhanVien ='NV' +  Convert(varchar(8),@Max)
			Return @IdNhanVien
	End
GO
/****** Object:  UserDefinedFunction [dbo].[fcgetIdThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	-- select IdLoaiThucDon=dbo.fcgetIdLoaiThucDon()
	
	
			/*----- BANG THUCDON ----------*/
			
		Create function [dbo].[fcgetIdThucDon]()
		returns varchar(5)
		
		
		As
		Begin
			Declare @IdThucDon		varchar(5)
			Declare @MaxIdThucDon	varchar(5)
			Declare @Max float
			
			
			Select @MaxIdThucDon = MAX(IdThucDon) from ThucDon
			
			if exists (select IdThucDon from ThucDon)
						set @Max = CONVERT(float, SUBSTRING(@MaxIdThucDon,3,3)) + 1
			else
						set @Max=1	
			if (@Max < 10)
						set @IdThucDon='TD' + '00' + Convert(varchar(1),@Max)
			else
			if (@Max < 100)
						set @IdThucDon='TD' + '0' + Convert(varchar(2),@Max)
			else
						set @IdThucDon ='TD' +  Convert(varchar(3),@Max)
			Return @IdThucDon
	End
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IdDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [nvarchar](200) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[IdKhuVuc] [varchar](5) NOT NULL,
	[TenKhuVuc] [nvarchar](100) NULL,
	[DienGiai] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThucDon](
	[IdLoaiThucDon] [varchar](5) NOT NULL,
	[TenLoaiThucDon] [nvarchar](100) NULL,
	[DienGiai] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLoaiThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IdNhanVien] [varchar](10) NOT NULL,
	[HoLot] [nvarchar](100) NULL,
	[Ten] [nvarchar](100) NULL,
	[Ngaysinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DangNhap] ([IdDangNhap], [MatKhau], [TrangThai]) VALUES (N'admin', N'123456', 1)
GO
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV001', N'Ngoài Trời', N'Cạnh bàn 1', N'Hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV002', N'Trong Nhà', N'Bàn 4 người', N'Ngừng hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV003', N'Ban Công', N'Sân thượng', N'Hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV004', N'VIP', N'VIP ROOM', N'Hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV005', N'Sảnh', N'Tầng 1', N'Hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV006', N'Bên Trong', N'Phục vụ', N'Hoạt động')
INSERT [dbo].[KhuVuc] ([IdKhuVuc], [TenKhuVuc], [DienGiai], [TrangThai]) VALUES (N'KV007', N'Tầng 3', N'Hút thuốc', N'Ngừng hoạt động')
GO
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD01', N'Nước ngọt ', N'có gas', N'Còn hàng')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD02', N'Bia', N'nước có gas', N'Còn hàng')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD03', N'Rượu', N'rượu ngoại', N'Sắp hết')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD04', N'Món hầm', N'phương đông', N'Còn hàng')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD05', N'Gỏi', N'các loại gỏi sống ', N'Sắp hết')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD06', N'Món xào', N'ăn nhanh', N'Còn hàng')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD07', N'Món kho', N'các loại thịt', N'Đã hết')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD08', N'Món hấp', N'bánh ,thịt', N'Sắp hết')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD09', N'Cháo', N'cháo thịt', N'Đã hết')
INSERT [dbo].[LoaiThucDon] ([IdLoaiThucDon], [TenLoaiThucDon], [DienGiai], [TrangThai]) VALUES (N'LTD10', N'Lẩu', N'Lẩu Thái', N'Đã hết')
GO
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000001', N'Le', N'Thanh', CAST(N'2000-09-21T00:00:00.000' AS DateTime), N'Nam', N'0123456798', N'thanh@gmail.com', N'Go Vap')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000002', N'Ta', N'Luat', CAST(N'2000-01-03T00:00:00.000' AS DateTime), N'Nam', N'0987654321', N'luatngu@gmail.com', N'Binh Tan')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000003', N'Kieu', N'Oanh', CAST(N'2000-11-13T00:00:00.000' AS DateTime), N'Nữ', N'0123654987', N'oanh@gmail.com', N'Go Vap')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000004', N'Ta', N'Minh', CAST(N'2000-04-08T00:00:00.000' AS DateTime), N'Nam', N'0123456788', N'luatbibi@gmail.com', N'Binh Tan')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000005', N'Nguyen', N'A', CAST(N'2000-09-06T00:00:00.000' AS DateTime), N'Nam', N'0147258369', N'A@gmail.com', N'Tan Binh')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoLot], [Ten], [Ngaysinh], [GioiTinh], [DienThoai], [Email], [DiaChi]) VALUES (N'NV00000006', N'Tran', N'Van', CAST(N'2001-07-03T00:00:00.000' AS DateTime), N'Nam', N'0369258147', N'dan@gmaiil.com', N'Tan Binh')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_KhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] ADD  CONSTRAINT [Unique_KhuVuc] UNIQUE NONCLUSTERED 
(
	[TenKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB334C2817F]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] ADD UNIQUE NONCLUSTERED 
(
	[TenKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB375F7DF75]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] ADD UNIQUE NONCLUSTERED 
(
	[TenKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhuVuc__258A8CB3C24D7DA7]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[KhuVuc] ADD UNIQUE NONCLUSTERED 
(
	[TenKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5916206A6B]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5924D017B1]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiThuc__6FDE7A5953A65647]    Script Date: 10/2/2021 8:07:33 PM ******/
ALTER TABLE [dbo].[LoaiThucDon] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAllProcedures]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteAllProcedures]
As
 declare @procName varchar(500)
 declare cur cursor
 for select [name] from sys.objects where type = 'p'
 open cur
 
 fetch next from cur into @procName
 while @@fetch_status = 0
 begin
 if @procName <> 'DeleteAllProcedures'
 exec('drop procedure ' + @procName)
 fetch next from cur into @procName
 end
 close cur
 deallocate cur
GO
/****** Object:  StoredProcedure [dbo].[spCheckDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*------------------ Kiem tra DangNhap -----------------------*/
create procedure [dbo].[spCheckDangNhap]
(
		@IdDangNhap		varchar(100),
		@MatKhau		nvarchar(200)
)
	as
	Begin
				select	* from DangNhap dn
				where		dn.idDangNhap= @IdDangNhap
				and			dn.MatKhau=@MatKhau				
	End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteDangNhapByIdDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteDangNhapByIdDangNhap]
(
		 @IdDangNhap	varchar(100)							
)
as
Begin
		 delete from DangNhap 
		 where IdDangNhap =@IdDangNhap
End
/*----------- Tim kiem thong tin theo IdDangNhap ----------*/
GO
/****** Object:  StoredProcedure [dbo].[spDeleteKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop procedure spUpdateKhuVuc
/*-------------------- Delete KhuVuc -------------------*/
CREATE procedure [dbo].[spDeleteKhuVuc]
(
	@IdKhuVuc		varchar(5)
)
as
begin
	delete KhuVuc where IdKhuVuc = @IdKhuVuc
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop procedure spUpdateLoaiThucDon
/*-------------------- Delete LoaiThucDon -------------------*/
create procedure [dbo].[spDeleteLoaiThucDon]
(
	@IdLoaiThucDon			varchar (5)
)
as
begin
	delete LoaiThucDon where IdLoaiThucDon = @IdLoaiThucDon
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*--------------- Delete NhanVien ---------------------*/
create procedure [dbo].[spDeleteNhanVien]
(
	@idNhanVien varchar (10)
)
as
Begin
	delete from NhanVien where IdNhanVien=@idNhanVien
End
GO
/****** Object:  StoredProcedure [dbo].[spgetDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spgetDangNhap]
as
Begin
		 select IdDangNhap, MatKhau, TrangThai
		 from DangNhap		 
End
GO
/****** Object:  StoredProcedure [dbo].[spgetDangNhapByIdDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spgetDangNhapByIdDangNhap]
(
		 @IdDangNhap	varchar(100)							
)
as
Begin
		 select IdDangNhap, MatKhau, TrangThai
		 from DangNhap
		 where IdDangNhap =@IdDangNhap
End
GO
/****** Object:  StoredProcedure [dbo].[spgetKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
							
/*--------- Hien thi thong tin KhuVuc ----------------*/
CREATE procedure [dbo].[spgetKhuVuc]
as
Begin
	select * from KhuVuc
End
GO
/****** Object:  StoredProcedure [dbo].[spgetKhuVucByIdKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------- Hien thi thong tin KhuVuc bang IdKhuVuc --------------*/
create proc [dbo].[spgetKhuVucByIdKhuVuc]
(
	@IdKhuVuc		varchar (5)
)
as
begin
	select * from KhuVuc where IdKhuVuc = @IdKhuVuc
end
GO
/****** Object:  StoredProcedure [dbo].[spgetLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

						/*----------- BANG LOAITHUCDON --------------*/
						
/*--------- Hien thi thong tin LoaiThucDon ----------------*/
create procedure [dbo].[spgetLoaiThucDon]
as
Begin
	select * from LoaiThucDon
End
GO
/****** Object:  StoredProcedure [dbo].[spgetLoaiThucDonByIdLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------- Hien thi thong tin LoaiThucDon bang IdLoaiThucDon --------------*/
create procedure [dbo].[spgetLoaiThucDonByIdLoaiThucDon]
(
	@IdLoaiThucDon			varchar (5)
)
as
begin
	select * from LoaiThucDon where IdLoaiThucDon = @IdLoaiThucDon
end
GO
/****** Object:  StoredProcedure [dbo].[spgetNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
						/*-- BANG NHAN VIEN  -- */
						
/*------------- Hien thi thong tin NhanVien -------------------*/
create procedure [dbo].[spgetNhanVien]
as
Begin
	select *from NhanVien
	--IdNhanVien as 'Id Nhân Viên ',HoLot + + Ten as ' Họ Tên ',Ngaysinh as 'Ngày Sinh',GioiTinh as 'Giới Tính',DienThoai as 'Điện Thoại',Email,DiaChi as 'Địa chỉ' 
End
GO
/****** Object:  StoredProcedure [dbo].[spgetNhanVienByIdNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop procedure spgetNhanVien
/*----------- Hien thi thong tin NhanVien bang IdNhanVien --------------*/
create procedure [dbo].[spgetNhanVienByIdNhanVien]
(
	@IdNhanVien varchar(10)
)
as
Begin
	select * from NhanVien where IdNhanVien =@IdNhanVien
End

GO
/****** Object:  StoredProcedure [dbo].[spgetTenKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop procedure spDeleteBan
/* ----------------------- Get TenKhuVuc ------------------- */
create procedure [dbo].[spgetTenKhuVuc]
as
begin
	select TenKhuVuc from KhuVuc
end
GO
/****** Object:  StoredProcedure [dbo].[spgetTenLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* ----------------------- Get TenLoaiThucDon ----------------*/
create procedure [dbo].[spgetTenLoaiThucDon]
as
begin
	select TenLoaiThucDon from LoaiThucDon
end
GO
/****** Object:  StoredProcedure [dbo].[spgetTenThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-------------------- get TenThucDon -------------------*/
create procedure [dbo].[spgetTenThucDon]
as
begin
	select TenThucDon from ThucDon
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertDangNhap]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertDangNhap]
(
			@IdDangNhap			varchar(100),
			@MatKhau			varchar(200),
			@TrangThai			bit
)
as
Begin
		insert into DangNhap(IdDangNhap, MatKhau, TrangThai)
		values(@IdDangNhap, @MatKhau, @TrangThai)
End
-- Gọi lại thủ tục:
/*
execute spInsertDangNhap				@IdDangNhap='anh1' ,
										@MatKhau ='123',
										@TrangThai= 1

*/

/*------------- Doi mat khau DangNhap ----------------*/
GO
/****** Object:  StoredProcedure [dbo].[spInsertKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop proc spgetKhuVucByIdKhuVuc
/*---------------- Insert KhuVuc -------------------*/
create procedure [dbo].[spInsertKhuVuc]
( 
		@IdKhuVuc			varchar (5),
		@TenKhuVuc			nvarchar(100),
		@DienGiai			nvarchar(100),
		@TrangThai			nvarchar(30)
)
as
Begin
	insert into KhuVuc(IdKhuVuc, TenKhuVuc, DienGiai, TrangThai)
	values(@IdKhuVuc, @TenKhuVuc, @DienGiai, @TrangThai)
End
GO
/****** Object:  StoredProcedure [dbo].[spInsertLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop proc spgetLoaiThucDonByIdLoaiThucDon
/*---------------- Insert LoaiThucDon -------------------*/
create procedure [dbo].[spInsertLoaiThucDon]
( 
		@IdLoaiThucDon			varchar (5),
		@TenLoaiThucDon			nvarchar(100),
		@DienGiai				nvarchar(100),
		@TrangThai				nvarchar(30)
)
as
Begin
	insert into LoaiThucDon(IdLoaiThucDon,TenLoaiThucDon,DienGiai,TrangThai)
	values(@IdLoaiThucDon,@TenLoaiThucDon,@DienGiai,@TrangThai)
End
GO
/****** Object:  StoredProcedure [dbo].[spInsertNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*-------------- Insert NhanVien -----------------------------*/
create procedure [dbo].[spInsertNhanVien]
( 
		@IdNhanVien			varchar(10),
		@HoLot				nvarchar(100),
		@Ten				nvarchar(100),
		@Ngaysinh			datetime,
		@GioiTinh			nvarchar(10),
		@DienThoai			varchar(15),
		@Email				varchar(100),
		@DiaChi				nvarchar(100)  
)
as
Begin
	insert into NhanVien(IdNhanVien, HoLot, Ten, Ngaysinh, GioiTinh, DienThoai,Email,DiaChi)
	values(@IdNhanVien, @HoLot, @Ten, @Ngaysinh, @GioiTinh, @DienThoai,@Email,@DiaChi)
End
GO
/****** Object:  StoredProcedure [dbo].[spSearchNVByIdNV]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*--------------TIM KIEM NHAN VIEN THEO IDNHANVIEN -----------*/
create procedure [dbo].[spSearchNVByIdNV]
(
	@IdNhanVien varchar (10)
)
as
Begin
	select *from NhanVien where IdNhanVien like  '%'+@IdNhanVien+'%'
End 
GO
/****** Object:  StoredProcedure [dbo].[spSearchNVByTenNV]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--drop  procedure spSearchNVByIdNV

/*--------------TIM KIEM NHAN VIEN THEO TEN -----------*/
create procedure [dbo].[spSearchNVByTenNV]
(
	@Ten			nvarchar(100)
)
as
Begin
	select *from NhanVien where Ten like  N'%'+@Ten+'%'
End 
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDangNhap_MatKhau]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateDangNhap_MatKhau]
(
			@IdDangNhap	varchar(100),
			@MatKhau		    varchar(250)				
)
as
Begin
		   update DangNhap set MatKhau=@MatKhau
		   where IdDangNhap = @IdDangNhap
End

/*---------------- Xoa DangNhap -------------------------*/
GO
/****** Object:  StoredProcedure [dbo].[spUpdateKhuVuc]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- DROP PROCEDURE spInsertKhuVuc
/*---------------- Update KhuVuc -----------------*/
CREATE procedure [dbo].[spUpdateKhuVuc]
(
		@IdKhuVuc			varchar (5) ,
		@TenKhuVuc			nvarchar(100),
		@DienGiai			nvarchar(100),
		@TrangThai			nvarchar(30)
)
as
Begin
	update KhuVuc set 
						TenKhuVuc=@TenKhuVuc,
						DienGiai=@DienGiai,
						TrangThai=@TrangThai						 
		where IdKhuVuc =@IdKhuVuc
End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateLoaiThucDon]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- DROP PROCEDURE spInsertLoaiThucDon
/*---------------- Update LoaiThucDon -----------------*/
create procedure [dbo].[spUpdateLoaiThucDon]
(
		@IdLoaiThucDon			varchar (5),
		@TenLoaiThucDon			nvarchar(100),
		@DienGiai				nvarchar(100),
		@TrangThai				nvarchar(30)
)
as
Begin
	update LoaiThucDon set 
						TenLoaiThucDon=@TenLoaiThucDon,
						DienGiai=@DienGiai,
						TrangThai=@TrangThai						 
		where IdLoaiThucDon =@IdLoaiThucDon
End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateNhanVien]    Script Date: 10/2/2021 8:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*------------------- Update NhanVien -----------------------*/
create procedure [dbo].[spUpdateNhanVien]
(
		@IdNhanVien			varchar(10),
		@HoLot				nvarchar(100),
		@Ten				nvarchar(100),
		@Ngaysinh			datetime,
		@GioiTinh			nvarchar(10),
		@DienThoai			varchar(15),
		@Email				varchar(100),
		@DiaChi				nvarchar(100)  	 
)
as
Begin
	update NhanVien set 
						HoLot = @HoLot,
						Ten =@Ten,
						Ngaysinh =@Ngaysinh,
						GioiTinh =@GioiTinh,
						DienThoai =@DienThoai,
						Email	=@Email,
						DiaChi	=@DiaChi
											 
		where IdNhanVien =@IdNhanVien
End
GO
