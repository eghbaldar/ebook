USE [master]
GO
/****** Object:  Database [shaahr_ebook]    Script Date: 03/03/2014 14:18:59 ******/
CREATE DATABASE [shaahr_ebook] ON  PRIMARY 
( NAME = N'shaahr_ebook', FILENAME = N'E:\shaahr_ebook.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shaahr_ebook_log', FILENAME = N'E:\shaahr_ebook_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shaahr_ebook] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shaahr_ebook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shaahr_ebook] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [shaahr_ebook] SET ANSI_NULLS OFF
GO
ALTER DATABASE [shaahr_ebook] SET ANSI_PADDING OFF
GO
ALTER DATABASE [shaahr_ebook] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [shaahr_ebook] SET ARITHABORT OFF
GO
ALTER DATABASE [shaahr_ebook] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [shaahr_ebook] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [shaahr_ebook] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [shaahr_ebook] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [shaahr_ebook] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [shaahr_ebook] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [shaahr_ebook] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [shaahr_ebook] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [shaahr_ebook] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [shaahr_ebook] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [shaahr_ebook] SET  DISABLE_BROKER
GO
ALTER DATABASE [shaahr_ebook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [shaahr_ebook] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [shaahr_ebook] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [shaahr_ebook] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [shaahr_ebook] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [shaahr_ebook] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [shaahr_ebook] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [shaahr_ebook] SET  READ_WRITE
GO
ALTER DATABASE [shaahr_ebook] SET RECOVERY FULL
GO
ALTER DATABASE [shaahr_ebook] SET  MULTI_USER
GO
ALTER DATABASE [shaahr_ebook] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [shaahr_ebook] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'shaahr_ebook', N'ON'
GO
USE [shaahr_ebook]
GO
/****** Object:  Table [dbo].[tbl_shaahr_UsersBooks]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shaahr_UsersBooks](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NULL,
	[IdBookOrginal] [bigint] NULL,
	[IsPrice] [bit] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_shaahr_users]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_shaahr_users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [varbinary](100) NULL,
	[Tell] [varchar](12) NULL,
	[Degree] [char](1) NULL,
	[Field] [smallint] NULL,
	[Account] [varchar](50) NULL,
	[Flag] [bit] NULL,
	[Date] [datetime] NULL,
	[Password] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Shaahr_Statistical]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Shaahr_Statistical](
	[Visited] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_shaahr_Contact]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_shaahr_Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FnLn] [nvarchar](50) NULL,
	[email] [varchar](100) NULL,
	[tell] [varchar](15) NULL,
	[group] [nvarchar](50) NULL,
	[cuase] [ntext] NULL,
	[flag] [bit] NULL,
	[IP] [varchar](20) NULL,
	[DateTime] [varchar](18) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_shaahr_category]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shaahr_category](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_shaahr_BookOrginal]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_shaahr_BookOrginal](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectFa] [nvarchar](300) NULL,
	[SubjectEn] [varchar](300) NULL,
	[Authors] [varchar](500) NULL,
	[Size_bytes] [varchar](20) NULL,
	[File_type] [varchar](10) NULL,
	[DescriptionFa] [nvarchar](max) NOT NULL,
	[DescriptionEn] [varchar](max) NULL,
	[FirstPageBook] [varchar](100) NULL,
	[Price] [varchar](50) NULL,
	[PublicationYear] [char](4) NULL,
	[Show] [bit] NULL,
	[Filename] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_shaahr_Book]    Script Date: 03/03/2014 14:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shaahr_Book](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Count_Visit] [bigint] NULL,
	[Count_Download] [bigint] NULL,
	[FileLink] [nvarchar](250) NULL,
	[PicturePath] [nvarchar](200) NULL,
	[Details] [ntext] NULL,
	[Date] [datetime] NULL,
	[Show] [bit] NULL,
	[Code_Category] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
