USE [master]
GO
/****** Object:  Database [ReignScores]    Script Date: 1/15/2015 2:55:08 PM ******/
CREATE DATABASE [ReignScores]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReignScores', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReignScores.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ReignScores_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReignScores_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ReignScores] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReignScores].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReignScores] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReignScores] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReignScores] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReignScores] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReignScores] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReignScores] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReignScores] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReignScores] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReignScores] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReignScores] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReignScores] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReignScores] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReignScores] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReignScores] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReignScores] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReignScores] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReignScores] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReignScores] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReignScores] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReignScores] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReignScores] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReignScores] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReignScores] SET RECOVERY FULL 
GO
ALTER DATABASE [ReignScores] SET  MULTI_USER 
GO
ALTER DATABASE [ReignScores] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReignScores] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReignScores] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReignScores] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ReignScores] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ReignScores]
GO
/****** Object:  Table [dbo].[Achievements]    Script Date: 1/15/2015 2:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievements](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[AchievementID] [uniqueidentifier] NOT NULL,
	[PercentComplete] [float] NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/15/2015 2:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nchar](64) NOT NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Games]    Script Date: 1/15/2015 2:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[ID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Scores]    Script Date: 1/15/2015 2:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[LeaderboardID] [uniqueidentifier] NOT NULL,
	[Score] [int] NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/15/2015 2:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [uniqueidentifier] NOT NULL,
	[GameID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nchar](64) NOT NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ReignScores] SET  READ_WRITE 
GO
