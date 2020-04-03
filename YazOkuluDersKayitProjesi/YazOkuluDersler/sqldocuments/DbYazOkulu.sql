USE [master]
GO
/****** Object:  Database [DbYazOkulu]    Script Date: 02.04.2020 20:12:28 ******/
CREATE DATABASE [DbYazOkulu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbYazOkulu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DbYazOkulu.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DbYazOkulu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DbYazOkulu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DbYazOkulu] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbYazOkulu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbYazOkulu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbYazOkulu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbYazOkulu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbYazOkulu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbYazOkulu] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbYazOkulu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbYazOkulu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbYazOkulu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbYazOkulu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbYazOkulu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbYazOkulu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbYazOkulu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbYazOkulu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbYazOkulu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbYazOkulu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbYazOkulu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbYazOkulu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbYazOkulu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbYazOkulu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbYazOkulu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbYazOkulu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbYazOkulu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbYazOkulu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbYazOkulu] SET  MULTI_USER 
GO
ALTER DATABASE [DbYazOkulu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbYazOkulu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbYazOkulu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbYazOkulu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DbYazOkulu] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DbYazOkulu]
GO
/****** Object:  Table [dbo].[TBLBASVURUFORM]    Script Date: 02.04.2020 20:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLBASVURUFORM](
	[BASVURUID] [int] IDENTITY(1,1) NOT NULL,
	[OGRENCIID] [int] NULL,
	[DERSID] [int] NULL,
 CONSTRAINT [PK_TBLBASVURUFORM] PRIMARY KEY CLUSTERED 
(
	[BASVURUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLDERSLER]    Script Date: 02.04.2020 20:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLDERSLER](
	[DERSID] [int] IDENTITY(1,1) NOT NULL,
	[DERSAD] [varchar](50) NULL,
	[DERSMINKONT] [tinyint] NULL,
	[DERSMAKSKONT] [tinyint] NULL,
 CONSTRAINT [PK_TBLDERSLER] PRIMARY KEY CLUSTERED 
(
	[DERSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLOGRENCI]    Script Date: 02.04.2020 20:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLOGRENCI](
	[OGRID] [int] IDENTITY(1,1) NOT NULL,
	[OGRAD] [varchar](50) NULL,
	[OGRSOYAD] [varchar](50) NULL,
	[OGRNUMARA] [varchar](5) NULL,
	[OGRFOTO] [varchar](500) NULL,
	[OGRSIFRE] [varchar](10) NULL,
	[OGRBAKIYE] [decimal](18, 2) NULL CONSTRAINT [DF_TBLOGRENCI_OGRBAKIYE]  DEFAULT ((0)),
 CONSTRAINT [PK_TBLOGRENCI] PRIMARY KEY CLUSTERED 
(
	[OGRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLOGRETMEN]    Script Date: 02.04.2020 20:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLOGRETMEN](
	[OGRTID] [int] IDENTITY(1,1) NOT NULL,
	[OGRTADSOYAD] [varchar](50) NULL,
	[OGRTBRANS] [int] NULL,
 CONSTRAINT [PK_TBLOGRETMEN] PRIMARY KEY CLUSTERED 
(
	[OGRTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBLBASVURUFORM] ON 

INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (1, 1, 4)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (2, 1, 8)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (3, 1, 10)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (4, 2, 4)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (5, 3, 7)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (6, 3, 8)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (7, 4, 10)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (8, 4, 1)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (9, 5, 1)
INSERT [dbo].[TBLBASVURUFORM] ([BASVURUID], [OGRENCIID], [DERSID]) VALUES (10, 7, 1)
SET IDENTITY_INSERT [dbo].[TBLBASVURUFORM] OFF
SET IDENTITY_INSERT [dbo].[TBLDERSLER] ON 

INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (1, N'Mühendislik Matematiği', 3, 10)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (2, N'Fizik I', 5, 15)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (3, N'Mesleki İngilizce', 5, 10)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (4, N'Edebiyat', 5, 5)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (5, N'Algoritma ve Programlamaya Giriş', 10, 20)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (6, N'Yazılım Mühendisliği Temelleri', 3, 6)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (7, N'Görüntü İşleme', 5, 10)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (8, N'Yapay Sinir Ağları', 5, 10)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (9, N'Nesne Tabanlı Programlama', 6, 12)
INSERT [dbo].[TBLDERSLER] ([DERSID], [DERSAD], [DERSMINKONT], [DERSMAKSKONT]) VALUES (10, N'Veri Madenciliği ve Veri Analizi', 4, 10)
SET IDENTITY_INSERT [dbo].[TBLDERSLER] OFF
SET IDENTITY_INSERT [dbo].[TBLOGRENCI] ON 

INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (1, N'Ali', N'Yıldız', N'1245', N'deneme', N'1', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (2, N'Mehmet', N'Çınar', N'2236', N'deneme', N'a', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (3, N'Esra', N'Bulut', N'5411', N'deneme', N'a', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (4, N'Ayşe', N'Kara', N'7748', N'7748', N'abc1', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (5, N'Mesut', N'Öztürk', N'3365', N'deneme', N'a', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (6, N'Derya', N'Yıldız', N'1166', N'testyolu', N'123', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[TBLOGRENCI] ([OGRID], [OGRAD], [OGRSOYAD], [OGRNUMARA], [OGRFOTO], [OGRSIFRE], [OGRBAKIYE]) VALUES (7, N'Ali', N'Yılmaz', N'12345', N'12345', N'abcdeft', CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TBLOGRENCI] OFF
SET IDENTITY_INSERT [dbo].[TBLOGRETMEN] ON 

INSERT [dbo].[TBLOGRETMEN] ([OGRTID], [OGRTADSOYAD], [OGRTBRANS]) VALUES (1, N'Ayşe Tunalı ', 2)
INSERT [dbo].[TBLOGRETMEN] ([OGRTID], [OGRTADSOYAD], [OGRTBRANS]) VALUES (2, N'Atakan Yılmaz ', 5)
INSERT [dbo].[TBLOGRETMEN] ([OGRTID], [OGRTADSOYAD], [OGRTBRANS]) VALUES (3, N'Selim Çınar ', 1)
INSERT [dbo].[TBLOGRETMEN] ([OGRTID], [OGRTADSOYAD], [OGRTBRANS]) VALUES (4, N'Berna Meşe', 6)
SET IDENTITY_INSERT [dbo].[TBLOGRETMEN] OFF
ALTER TABLE [dbo].[TBLBASVURUFORM]  WITH CHECK ADD  CONSTRAINT [FK_TBLBASVURUFORM_TBLDERSLER] FOREIGN KEY([DERSID])
REFERENCES [dbo].[TBLDERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBLBASVURUFORM] CHECK CONSTRAINT [FK_TBLBASVURUFORM_TBLDERSLER]
GO
ALTER TABLE [dbo].[TBLBASVURUFORM]  WITH CHECK ADD  CONSTRAINT [FK_TBLBASVURUFORM_TBLOGRENCI] FOREIGN KEY([OGRENCIID])
REFERENCES [dbo].[TBLOGRENCI] ([OGRID])
GO
ALTER TABLE [dbo].[TBLBASVURUFORM] CHECK CONSTRAINT [FK_TBLBASVURUFORM_TBLOGRENCI]
GO
ALTER TABLE [dbo].[TBLOGRETMEN]  WITH CHECK ADD  CONSTRAINT [FK_TBLOGRETMEN_TBLDERSLER] FOREIGN KEY([OGRTBRANS])
REFERENCES [dbo].[TBLDERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBLOGRETMEN] CHECK CONSTRAINT [FK_TBLOGRETMEN_TBLDERSLER]
GO
USE [master]
GO
ALTER DATABASE [DbYazOkulu] SET  READ_WRITE 
GO
