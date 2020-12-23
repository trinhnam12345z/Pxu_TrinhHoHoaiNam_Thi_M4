USE [KTBook]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/23/2020 10:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](500) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[ShortContent] [nvarchar](500) NOT NULL,
	[PublishYear] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/23/2020 10:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](500) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([BookID], [BookName], [Author], [ShortContent], [PublishYear], [Amount], [CategoryID], [IsDeleted]) VALUES (1, N'Tru tiên', N'Tiêu Đỉnh', N'Tru Tiên là một bộ tiểu thuyết giả tưởng thần tiên kiếm hiệp do Tiêu Đỉnh sáng tác. ', 2000, 30, 1, 0)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [Author], [ShortContent], [PublishYear], [Amount], [CategoryID], [IsDeleted]) VALUES (2, N'Conan', N'Aoyama Gosho', N'Thám tử lừng danh Conan là một bộ manga Nhật Bản dành cho lứa tuổi thiếu niên thuộc thể loại trinh thám được vẽ và minh họa bởi Aoyama Gosho.', 2001, 20, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDeleted]) VALUES (1, N'Tiên Hiệp', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDeleted]) VALUES (2, N'Hình Sự', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDeleted]) VALUES (3, N'Ngôn Tình', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDeleted]) VALUES (4, N'Tiểu Thuyết', 0)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBook]    Script Date: 12/23/2020 10:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Trinh Nam
-- Create date: 23/12/2020
-- Description:	GetBook
-- =============================================
CREATE PROCEDURE[dbo].[sp_GetBook] 
AS
BEGIN
SELECT [BookID]
      ,[BookName]
      ,[Author]
      ,[ShortContent]
      ,[PublishYear]
      ,[Amount]
      ,[CategoryID]
  FROM [dbo].[Book]
	  WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCategory]    Script Date: 12/23/2020 10:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Trinh Nam
-- Create date: 23/12/2020
-- Description:	GetCategory
-- =============================================
CREATE PROCEDURE[dbo].[sp_GetCategory] 
AS
BEGIN
	SELECT [CategoryId]
		  ,[CategoryName]
	  FROM [dbo].[Category]
	  WHERE IsDeleted = 0
END
GO
