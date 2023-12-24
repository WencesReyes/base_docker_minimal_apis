USE [master]
GO
/****** Object:  Database [GroceryStore]    Script Date: 12/20/2023 4:15:22 PM ******/
CREATE DATABASE [GroceryStore]
GO
USE [GroceryStore]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/20/2023 4:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Description]) VALUES (1, N'Coca')
INSERT [dbo].[Products] ([Id], [Description]) VALUES (2, N'Donuts')
SET IDENTITY_INSERT [dbo].[Products] OFF
