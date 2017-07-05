USE [master]
GO
/****** Object:  Database [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF]    Script Date: 05.07.2017 23:40:04 ******/
CREATE DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyProjectDB', FILENAME = N'C:\Users\Рамирос\Documents\Visual Studio 2015\Projects\Project4\MyProjectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyProjectDB_log', FILENAME = N'C:\Users\Рамирос\Documents\Visual Studio 2015\Projects\Project4\MyProjectDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
USE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05.07.2017 23:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[City] [nchar](50) NOT NULL,
	[Addess] [nchar](50) NOT NULL,
	[NumberOfEmployees] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 05.07.2017 23:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[SecondName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Telephone] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requests]    Script Date: 05.07.2017 23:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TypeOfRequest] [int] NOT NULL,
	[FromWhoID] [int] NOT NULL,
	[WhomId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[EmployeesId] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypesOfRequest]    Script Date: 05.07.2017 23:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [DepartmentFK] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [DepartmentFK]
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\РАМИРОС\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\PROJECT4\MYPROJECTDB.MDF] SET  READ_WRITE 
GO
