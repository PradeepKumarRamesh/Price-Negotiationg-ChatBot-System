USE [master]
GO
/****** Object:  Database [priceNegotiate]    Script Date: 3/7/2018 6:22:25 PM ******/
CREATE DATABASE [priceNegotiate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'priceNegotiate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\priceNegotiate.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'priceNegotiate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\priceNegotiate_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [priceNegotiate] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [priceNegotiate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [priceNegotiate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [priceNegotiate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [priceNegotiate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [priceNegotiate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [priceNegotiate] SET ARITHABORT OFF 
GO
ALTER DATABASE [priceNegotiate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [priceNegotiate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [priceNegotiate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [priceNegotiate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [priceNegotiate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [priceNegotiate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [priceNegotiate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [priceNegotiate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [priceNegotiate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [priceNegotiate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [priceNegotiate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [priceNegotiate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [priceNegotiate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [priceNegotiate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [priceNegotiate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [priceNegotiate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [priceNegotiate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [priceNegotiate] SET RECOVERY FULL 
GO
ALTER DATABASE [priceNegotiate] SET  MULTI_USER 
GO
ALTER DATABASE [priceNegotiate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [priceNegotiate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [priceNegotiate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [priceNegotiate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [priceNegotiate] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'priceNegotiate', N'ON'
GO
USE [priceNegotiate]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 3/7/2018 6:22:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart](
	[uid] [varchar](50) NULL,
	[pid] [varchar](50) NULL,
	[pname] [varchar](1000) NULL,
	[tprice] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/7/2018 6:22:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[oid] [varchar](50) NULL,
	[uid] [varchar](50) NULL,
	[uname] [varchar](100) NULL,
	[pnames] [varchar](500) NULL,
	[tprice] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 3/7/2018 6:22:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[pid] [varchar](50) NULL,
	[image] [varchar](100) NULL,
	[name] [varchar](200) NULL,
	[features] [varchar](1000) NULL,
	[warranty] [varchar](50) NULL,
	[delivery] [varchar](50) NULL,
	[discount] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[lastPrice] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg]    Script Date: 3/7/2018 6:22:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg](
	[uid] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[pwd] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orders] ([oid], [uid], [uname], [pnames], [tprice]) VALUES (N'101', N'101', N'John', N'BELLA TOES,CHIKKU LOAFERS,', N'2700')
INSERT [dbo].[orders] ([oid], [uid], [uname], [pnames], [tprice]) VALUES (N'102', N'101', N'John', N'BELLA TOES,SHUBERRY HEELS,', N'2400')
INSERT [dbo].[orders] ([oid], [uid], [uname], [pnames], [tprice]) VALUES (N'103', N'101', N'John', N'BELLA TOES,SHUBERRY HEELS,', N'2400')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'101', N'images/s1.jpg', N'BELLA TOES', N'Designed to offer comfort at its best, without compromising on style. Packed with features that offer luxurious comfort, this pair of women casual shoes from Bella Toes makes you look best when paired with casual and classy accessories.The TPR sole ensures ease,longevity and comfort. Bella Toes products are crafted with high quality craftsmanship to provide latest designs with extra comfort.', N'1 year', N'Free delivery', N'No Discount yet', N'1200', N'900')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'102', N'images/s2.jpg', N'CHIKKU LOAFERS', N'A stylish pair of square toed loafers in brown for men by Famozi, constructed from high quality suede leather. Styled with dark brown tongue with tie-up tassel detailing, highlighted stitchlines and a soft cushioned footbed. Features superior quality TPR sole for extra grip.', N'1 year', N'Rs. 50 extra charges', N'No Discount', N'1300', N'1100')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'103', N'images/s3.jpg', N'SHUBERRY HEELS', N'Shuberry introduces a wide range of footwear, which are mainly targeted towards women and consists of products like sandals, pumps, ballerinas and stilettos. The product in display is made from synthetic material on the outside and is finished in an attractive champagne color. ', N'2 year', N'Rs. 20 extra charges', N'No Discount', N'1400', N'900')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'104', N'images/s5.jpg', N'RED BELLIES', N'The red-bellied black snake''s head is barely distinguishable from the body as there is no obvious constricted neck area. This snake is dangerously venomous but bites are rare because it is usually a placid and fairly docile snake, preferring to enact a lengthy bluff display with flattened neck and deep hisses rather than bite.', N'1 year', N'Free delivery', N'No Discount', N'1500', N'900')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'105', N'images/s6.jpg', N'CATWALK FLATS', N'Buy Catwalk Flats for Women Online - Stay in Vogue. Are you also under the impression that flats can not be fashionable or dressy? Well, the trendy range of flats from Catwalk will surely make you change your opinion about the same. Featuring contemporary and stylish designs, Catwalk flats boast of superior quality', N'2 year', N'Rs. 80 extra charges', N'No Discount', N'1600', N'900')
INSERT [dbo].[products] ([pid], [image], [name], [features], [warranty], [delivery], [discount], [price], [lastPrice]) VALUES (N'106', N'images/s7.jpg', N'RUNNING SHOES', N'Here are some of the advantages of running shoes: Superior Cushioning. Flexibility in the right places. Stability or Motion control. Traction on road or trails. Tortional stability – stiff where needed. Night-time reflectivity. Breathability.', N'1 year', N'Free delivery', N'No Discount', N'1700', N'900')
INSERT [dbo].[reg] ([uid], [name], [email], [contact], [address], [pwd]) VALUES (N'101', N'John', N'eamil', N'7458963211', N'Pune', N'101')
INSERT [dbo].[reg] ([uid], [name], [email], [contact], [address], [pwd]) VALUES (N'102', N'George', N'g@gmail.com', N'7894561236', N'Mumbai', N'102')
USE [master]
GO
ALTER DATABASE [priceNegotiate] SET  READ_WRITE 
GO
