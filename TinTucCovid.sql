USE [TinTucCovid]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 11/27/2021 6:17:37 AM ******/
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
/****** Object:  Table [dbo].[ChuDe]    Script Date: 11/27/2021 6:17:38 AM ******/
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

INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (5, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (6, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (7, N'Tình hình dịch cả nước', N'CHUYỂN TRẠNG THÁI CÓ CA NHIỄM MỚI', N'THỦ TƯỚNG ĐANG KHẨN CHƯƠNG CHỐNG DỊCH', 2, N'anh2.jpg', CAST(N'2022-06-05' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (9, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (10, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (11, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (12, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (13, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (14, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (15, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (16, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (17, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (18, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (19, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
INSERT [dbo].[BaiViet] ([BaiVietId], [TieuDe], [MoTa], [NoiDung], [ChuDeid], [Anh], [NgayTao]) VALUES (20, N'Bản Tin Covid 19', N'Ngày 2111 Có 9.889 ca mắc COVID-19 tại 57 tỉnh, thành; số tử vong giảm nhiều so với hôm qua
', N'SKĐS - Bản tin dịch COVID-19 ngày 21/11 của Bộ Y tế cho biết có 9.889 ca mắc mới tại 57 tỉnh, thành, trong đó TP HCM, Bà Rịa - Vũng Tàu và Cần Thơ tăng số mắc; trong ngày có 5.163 ca khỏi; 76 trường hợp tử vong - giảm 31 ca so với hôm qua.
Thông tin các ca mắc mới COVID-19 tại Việt Nam', 2, N'A1.jpg', CAST(N'2021-09-06' AS Date))
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([ChuDeid], [TenChuDe], [SoLuongBaiViet]) VALUES (2, N'Phòng chống dịch ', 14)
INSERT [dbo].[ChuDe] ([ChuDeid], [TenChuDe], [SoLuongBaiViet]) VALUES (3, N'1Chủ đạo chống dịch', 5)
INSERT [dbo].[ChuDe] ([ChuDeid], [TenChuDe], [SoLuongBaiViet]) VALUES (4, N'phòng chống cô vid', 6)
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ChuDe] FOREIGN KEY([ChuDeid])
REFERENCES [dbo].[ChuDe] ([ChuDeid])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ChuDe]
GO
