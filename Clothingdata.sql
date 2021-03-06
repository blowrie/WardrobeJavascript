USE [master]
GO
/****** Object:  Database [ClothingD]    Script Date: 3/25/2018 9:26:23 PM ******/
CREATE DATABASE [ClothingD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingD.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClothingD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClothingD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClothingD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClothingD] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClothingD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClothingD]
GO
/****** Object:  Table [dbo].[Clothing]    Script Date: 3/25/2018 9:26:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clothing](
	[ClothingID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clothing] PRIMARY KEY CLUSTERED 
(
	[ClothingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Style]    Script Date: 3/25/2018 9:26:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[StyleID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[StyleType] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](300) NOT NULL,
	[ClothingID] [int] NOT NULL,
	[Review] [nvarchar](200) NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[StyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Clothing] ON 

INSERT [dbo].[Clothing] ([ClothingID], [Type]) VALUES (2, N'Bottoms')
INSERT [dbo].[Clothing] ([ClothingID], [Type]) VALUES (3, N'Shoes')
INSERT [dbo].[Clothing] ([ClothingID], [Type]) VALUES (4, N'Accessories ')
INSERT [dbo].[Clothing] ([ClothingID], [Type]) VALUES (5, N'Tops')
SET IDENTITY_INSERT [dbo].[Clothing] OFF
SET IDENTITY_INSERT [dbo].[Style] ON 

INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (1, N'orange', N'Hat', N'/Images/Baseballhat.jpg', 4, N'Nice Hat')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (2, N'black', N'Basketball Shorts', N'/Images/blackbballshorts.jpg', 2, N'Nice Shorts')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (3, N'black', N'Hat', N'/Images/blackhat.jpg', 4, N'Nice Hat')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (4, N'black', N'Sweat Pants', N'/Images/blackpants.jpg', 2, N'Cool pants')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (5, N'black', N'Slip On', N'/Images/BlackShoes.jpg', 3, N'Sweet Shoes')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (6, N'black', N'Zip Up', N'/Images/BlackZipup.jpg', 5, N'Sweet Hoodie')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (7, N'blue', N'Basketball Shorts', N'/Images/Bluebballshorts.jpeg', 2, N'Sweet Shorts')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (8, N'blue', N'Basketball Shorts', N'/Images/bluebballshorts2.jpeg', 2, N'yay')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (9, N'blue', N'Top Hat', N'/Images/BlueHaT.jpg', 4, N'A Hat')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (10, N'blue', N'Jeans', N'/Images/BlueJeans.jpg', 2, N'Uncomfortable ')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (11, N'blue', N'Basketball Shoes', N'/Images/BlueLebronShoes.jpg', 3, N'Nice Shoes')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (12, N'blue', N'Long Sleeve', N'/Images/blueLS.jpg', 5, N'Cool')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (13, N'blue', N'PG13 Basketball Shoes', N'/Images/BluePGShoes.jpg', 3, N'Okay yeah sure')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (14, N'green', N'BaseBall Hat', N'/Images/greenHat.jpg', 4, N'Cool Hat')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (15, N'green', N'Vans', N'/Images/greenVans.JPG', 3, N'Feel Good on feet')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (16, N'red', N'Hoodie', N'/Images/MaroonHoodie.jpg', 5, N'Comfy')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (17, N'red', N'Long Sleeve', N'/Images/MaroonLS.jpg', 5, N'Good Color')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (18, N'red', N'Basketball Shoes', N'/Images/MaroonShoes.jpg', 3, N'Cool Shoes')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (19, N'orange', N'Basketball Shoes', N'/Images/OrangeShoes.jpg', 3, N'Nice Shoes')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (20, N'white', N'Basketball Shoes', N'/Images/whitebballshoes.jpg', 3, N'Basketball Shoes are cool')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (21, N'white', N'Long Sleeve', N'/Images/whitelongsleeve.jpg', 5, N'Stains easy')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (22, N'white', N'Under Shirt', N'/Images/whitetshirt.jpg', 5, N'White shirt ')
INSERT [dbo].[Style] ([StyleID], [Color], [StyleType], [Photo], [ClothingID], [Review]) VALUES (23, N'orange', N'Wool Hat', N'/Images/WoolHat.jpeg', 4, N'Its a hat')
SET IDENTITY_INSERT [dbo].[Style] OFF
ALTER TABLE [dbo].[Style]  WITH CHECK ADD  CONSTRAINT [FK_Style_Clothing] FOREIGN KEY([ClothingID])
REFERENCES [dbo].[Clothing] ([ClothingID])
GO
ALTER TABLE [dbo].[Style] CHECK CONSTRAINT [FK_Style_Clothing]
GO
USE [master]
GO
ALTER DATABASE [ClothingD] SET  READ_WRITE 
GO
