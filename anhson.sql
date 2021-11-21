USE [TinTucCovid]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 11/22/2021 12:22:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiViet](
	[BaiVietId] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[MoTa] [nvarchar](200) NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[ChuDeid] [int] NULL,
	[Anh] [varchar](100) NULL,
	[NgayTao] [date] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[BaiVietId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 11/22/2021 12:22:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[ChuDeid] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NULL,
	[SoLuongBaiViet] [int] NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[ChuDeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (1, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 1, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (2, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 1, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (3, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 1, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (4, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 1, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (5, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (6, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (7, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (8, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 1, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([ChuDeid], [TenChuDe], [SoLuongBaiViet]) VALUES (1, N'Chủ đạo chống dịch', 4)
INSERT [dbo].[ChuDe] ([ChuDeid], [TenChuDe], [SoLuongBaiViet]) VALUES (2, N'Phòng chống dịch ', 2)
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ChuDe] FOREIGN KEY([ChuDeid])
REFERENCES [dbo].[ChuDe] ([ChuDeid])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ChuDe]
GO
