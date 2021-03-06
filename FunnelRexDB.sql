USE [master]
GO
/****** Object:  Database [EcommPBuild]    Script Date: 3/31/2021 5:12:30 PM ******/
CREATE DATABASE [EcommPBuild]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EcommPBuild', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EcommPBuild.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EcommPBuild_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EcommPBuild_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EcommPBuild] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EcommPBuild].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EcommPBuild] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EcommPBuild] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EcommPBuild] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EcommPBuild] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EcommPBuild] SET ARITHABORT OFF 
GO
ALTER DATABASE [EcommPBuild] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EcommPBuild] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EcommPBuild] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EcommPBuild] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EcommPBuild] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EcommPBuild] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EcommPBuild] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EcommPBuild] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EcommPBuild] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EcommPBuild] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EcommPBuild] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EcommPBuild] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EcommPBuild] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EcommPBuild] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EcommPBuild] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EcommPBuild] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EcommPBuild] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EcommPBuild] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EcommPBuild] SET  MULTI_USER 
GO
ALTER DATABASE [EcommPBuild] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EcommPBuild] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EcommPBuild] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EcommPBuild] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EcommPBuild] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EcommPBuild]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[UserId] [nvarchar](450) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_funnelContacts]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_funnelContacts](
	[ContactId] [nvarchar](450) NOT NULL,
	[FunnelId] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[TemplateId] [nvarchar](max) NULL,
	[UserData] [nvarchar](max) NULL,
	[Sale_Done] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_funnelContacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Funnels]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Funnels](
	[FunnelId] [nvarchar](450) NOT NULL,
	[FunnelName] [nvarchar](max) NULL,
	[ClientId] [nvarchar](max) NULL,
	[FunnelTypeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_tbl_Funnels] PRIMARY KEY CLUSTERED 
(
	[FunnelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_FunnelType]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FunnelType](
	[FunnelTypeId] [nvarchar](450) NOT NULL,
	[FunnelTypeName] [nvarchar](max) NULL,
	[FunnelSteps] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_FunnelType] PRIMARY KEY CLUSTERED 
(
	[FunnelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_packagemasters]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_packagemasters](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[TrailDays] [int] NOT NULL,
	[PackageName] [nvarchar](max) NULL,
	[PackagePrice] [int] NOT NULL,
	[PackageText] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[PackageValidity] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_tbl_packagemasters] PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_registered_users]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_registered_users](
	[UserId] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[PackageId] [int] NOT NULL DEFAULT ((0)),
	[State] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[ExpireOn] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.000'),
 CONSTRAINT [PK_tbl_registered_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Template_PageVariables]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Template_PageVariables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nvarchar](max) NULL,
	[FunnelID] [nvarchar](max) NULL,
	[TemplateID] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Template_PageVariables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_templateAssiginig]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_templateAssiginig](
	[TempAssigningId] [nvarchar](450) NOT NULL,
	[FunnelId] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[TemplateId] [nvarchar](max) NULL,
	[TemplateTypeId] [nvarchar](max) NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_tbl_templateAssiginig] PRIMARY KEY CLUSTERED 
(
	[TempAssigningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_templatemaster]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_templatemaster](
	[TemplateId] [nvarchar](450) NOT NULL,
	[TemplateName] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_templatemaster] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_templatepages]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_templatepages](
	[Page_Id] [nvarchar](450) NOT NULL,
	[ImgPath] [nvarchar](max) NULL,
	[ControllerURL] [nvarchar](max) NULL,
	[TemplateId] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_templatepages] PRIMARY KEY CLUSTERED 
(
	[Page_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_tokens]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tokens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment_Token] [nvarchar](max) NULL,
	[RegisteredUsersUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_tbl_tokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_transactionDetails]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_transactionDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageId] [int] NOT NULL,
	[Payment] [int] NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[TransactionStatus] [nvarchar](max) NULL,
	[TransationId] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_transactionDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200917092251_Intital', N'3.1.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200917101726_M2', N'3.1.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200928112754_Funnels', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200930080059_addedForeignKey', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200930080211_addedForeignKey1', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201020110315_Funnels Type', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201022102844_TemplatePages', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201022104848_Templates', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201022105432_Templates3', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110101412_Assiging', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110103254_Assiging2', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110104733_Assiging3', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201124101838_Order', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201125121804_FunnelContacts', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201222102024_FContact', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209060810_Paypal', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210212080003_SignUp', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210212080330_SignUp1', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210216103446_Admin', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210217111008_IsActiveColumn', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210218093516_Package', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210219132132_tbl_Template_PageVariables', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210225065920_AddColumn', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210225074610_pack', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210225121848_Tempvariable', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210301083810_TransactionDetails', N'2.0.3-rtm-10026')
INSERT [dbo].[tbl_Admin] ([UserId], [CreatedOn], [Email], [FirstName], [LastName], [Password]) VALUES (N'1', CAST(N'2021-02-12 13:56:38.9270967' AS DateTime2), N'himu@gmail.com', N'Himanshu', N'Thapliyal', N'pass@123')
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'1', N'5484c268-2492-41a3-a46d-6776520cd950', N'f0be9338-12a3-41a8-9be5-6b8a56515563', NULL, N'Himanshu;Thapliyal;King', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'2', N'5484c268-2492-41a3-a46d-6776520cd950', N'f0be9338-12a3-41a8-9be5-6b8a56515563', NULL, N'Pankaj:Thapliyal:Servant', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'2cfec726-ee91-4c7b-bb9f-21251c3a8763', N'f672b20b-111a-45c7-8f10-12f05d9be770', N'8d7cef2a-5777-45c1-bef8-87cb3e7b5c39', NULL, N'Himanshu Thapliyal,himanshuthapliyal94@gmail.com,9711024802', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'3', N'5484c268-2492-41a3-a46d-6776520cd950', N'f0be9338-12a3-41a8-9be5-6b8a56515563', NULL, N'Milind:Raj:joker', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'34555972-7c9e-4916-9c0b-b96d785d80ad', N'd219065d-2743-43ed-9fd4-d8079d14b33b', N'715c610e-0ec0-4c1c-9c40-c90728effb56', NULL, N'Satyam Mehra,milind@gmail.com,3443444', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'7832e9b7-79d8-48c9-a700-26b183d60867', N'ee7ab4d7-6e38-4125-85a2-839da3975095', N'50b88735-01d6-47d2-910d-3055df2b549b', NULL, N'Himanshu Thapliyal,himanshuthapliyal94@gmail.com,9711024802', NULL)
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'c94027cd-9133-4219-a5a1-24b1d42f11e6', N'd219065d-2743-43ed-9fd4-d8079d14b33b', N'715c610e-0ec0-4c1c-9c40-c90728effb56', NULL, N'Himanshu Thapliyal,himanshuthapaliyal@virtualemployee.com,9711024802', N'1')
INSERT [dbo].[tbl_funnelContacts] ([ContactId], [FunnelId], [UserId], [TemplateId], [UserData], [Sale_Done]) VALUES (N'd3e8d385-d0f6-490f-8015-9b80bf051c96', N'6511b53a-219e-4bc9-a6ed-4a9f890a7619', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'138c7a41-a634-4d9e-81a7-10a60fc96505', N'MyTestProduct', N'715c610e-0ec0-4c1c-9c40-c90728effb56', N'3')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'15ac6b9b-06c7-477d-afc7-bba9edde2997', N'TestSalesFunnel', N'715c610e-0ec0-4c1c-9c40-c90728effb56', N'2')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'21f2d4ad-0ea1-4954-a5b5-f1a88a7a137f', N'SaleFUnnel', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'2')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'5484c268-2492-41a3-a46d-6776520cd950', N'DemoProduct', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'2')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'57215065-5957-42d5-b904-9310f67d7442', N'MyLaunchProduct', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'3')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'6511b53a-219e-4bc9-a6ed-4a9f890a7619', N'TestEmail', N'aba196f6-fc17-4034-93b4-0b3127fccfda', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'7bff68b9-bba3-4bc2-8c1d-8d4052dd58db', N'fghf', N'null', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'7c509b79-4d3a-4ff1-9e9b-28498d615468', N'DemoEmail', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'9737e82b-329c-4e1b-89f1-451fd1e2470b', N'LaunchFunnel', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'3')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'9b2673ff-49fc-4843-8759-39af1cec80a6', N'fvdfgfdgdfgdfgdfg', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'a929c44f-f694-4331-8a0e-f15ae4e516de', N'sdfsf', N'50b88735-01d6-47d2-910d-3055df2b549b', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'b8a67c44-fac0-4c37-aba8-9f7bae1bd3e9', N'TestEmail', N'6da68810-ca1d-43e8-b928-411b8dc37a08', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'd219065d-2743-43ed-9fd4-d8079d14b33b', N'TestFunnel', N'715c610e-0ec0-4c1c-9c40-c90728effb56', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'd4bd89aa-ae4b-4c55-b804-bda6edfa5a9e', N'MyEmailFunnel', N'f0be9338-12a3-41a8-9be5-6b8a56515563', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'ee7ab4d7-6e38-4125-85a2-839da3975095', N'MyLaunchProduct', N'50b88735-01d6-47d2-910d-3055df2b549b', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'f2a2051b-af3b-40fe-a49d-fad3a20086ae', N'TestFunnel', N'42711051-f129-4b55-9739-aea2d41172f5', N'1')
INSERT [dbo].[tbl_Funnels] ([FunnelId], [FunnelName], [ClientId], [FunnelTypeId]) VALUES (N'f672b20b-111a-45c7-8f10-12f05d9be770', N'TestEmail', N'8d7cef2a-5777-45c1-bef8-87cb3e7b5c39', N'1')
INSERT [dbo].[tbl_FunnelType] ([FunnelTypeId], [FunnelTypeName], [FunnelSteps]) VALUES (N'1', N'EMAIL', N'2')
INSERT [dbo].[tbl_FunnelType] ([FunnelTypeId], [FunnelTypeName], [FunnelSteps]) VALUES (N'2', N'SALES', N'4')
INSERT [dbo].[tbl_FunnelType] ([FunnelTypeId], [FunnelTypeName], [FunnelSteps]) VALUES (N'3', N'LAUNCH', N'7')
SET IDENTITY_INSERT [dbo].[tbl_packagemasters] ON 

INSERT [dbo].[tbl_packagemasters] ([PackageId], [TrailDays], [PackageName], [PackagePrice], [PackageText], [IsActive], [PackageValidity]) VALUES (2, 14, N'Platinum Plan', 297, N'Test drive the FULL FunnelRex Platinum today and get access to FunnelRex', 0, 14)
INSERT [dbo].[tbl_packagemasters] ([PackageId], [TrailDays], [PackageName], [PackagePrice], [PackageText], [IsActive], [PackageValidity]) VALUES (1003, 14, N'Basic Plan', 23, N'Testing Demo', 1, 14)
INSERT [dbo].[tbl_packagemasters] ([PackageId], [TrailDays], [PackageName], [PackagePrice], [PackageText], [IsActive], [PackageValidity]) VALUES (1004, 12, N'Test', 105, N'Testing', 1, 5)
SET IDENTITY_INSERT [dbo].[tbl_packagemasters] OFF
INSERT [dbo].[tbl_registered_users] ([UserId], [FirstName], [LastName], [Email], [Password], [CreatedOn], [ModifiedBy], [ModifiedOn], [Address], [City], [Country], [PackageId], [State], [Zip], [IsActive], [ExpireOn]) VALUES (N'6da68810-ca1d-43e8-b928-411b8dc37a08', N'Nikhil', N'Thapliyal', N'milind@gmail.com', N'lcg29bsb', CAST(N'2021-02-25 17:05:57.8650030' AS DateTime2), 2, CAST(N'2021-02-25 17:05:57.8650525' AS DateTime2), N'C 235 Nayay khand', N'indirapuram', N'IN', 1004, N'Gzb', N'201010', 1, CAST(N'2021-02-26 17:05:57.8966435' AS DateTime2))
INSERT [dbo].[tbl_registered_users] ([UserId], [FirstName], [LastName], [Email], [Password], [CreatedOn], [ModifiedBy], [ModifiedOn], [Address], [City], [Country], [PackageId], [State], [Zip], [IsActive], [ExpireOn]) VALUES (N'aba196f6-fc17-4034-93b4-0b3127fccfda', N'Himanshu', N'Thapliyal', N'himanshuthapaliyal@virtualemployee.com', N'ni9n4u6a', CAST(N'2021-02-25 13:53:01.4724845' AS DateTime2), 2, CAST(N'2021-02-25 13:53:01.4725257' AS DateTime2), N'C 235 Nayay khand', N'indirapuram', N'IN', 1003, N'Gzb', N'201010', 1, CAST(N'2021-03-15 20:44:28.7302201' AS DateTime2))
INSERT [dbo].[tbl_templateAssiginig] ([TempAssigningId], [FunnelId], [UserId], [TemplateId], [TemplateTypeId], [OrderNumber]) VALUES (N'5ac1fafa-4232-49ca-a5c0-2ba015f624fe', N'6511b53a-219e-4bc9-a6ed-4a9f890a7619', N'aba196f6-fc17-4034-93b4-0b3127fccfda', N'10', N'1', 1)
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'1', N'Optin')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'2', N'ThankYou')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'3', N'Sales')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'4', N'Launch')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'5', N'Order ')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'6', N'OneClickUpsell')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'7', N'OneClickDownsell')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'8', N'OrderConfirmation')
INSERT [dbo].[tbl_templatemaster] ([TemplateId], [TemplateName]) VALUES (N'9', N'ClickPop')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'1', N'../../assets/img/Optin_images/Squeeze1.JPG', N'Optin/Squeeze1', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'10', N'../../assets/img/Optin_images/Optin3.JPG', N'Optin/Optin3', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'102', N'../../assets/img/OCU_images/OCU6.JPG', N'OneClickUpsell/OCU6', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'103', N'../../assets/img/OCU_images/OCU7.JPG', N'OneClickUpsell/OCU7', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'104', N'../../assets/img/OCU_images/OCU8.JPG', N'OneClickUpsell/OCU8', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'105', N'../../assets/img/OCU_images/OCU9.JPG', N'OneClickUpsell/OCU9', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'106', N'../../assets/img/OCU_images/OCU10.JPG', N'OneClickUpsell/OCU10', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'11', N'../../assets/img/Optin_images/Optin4.JPG', N'Optin/Optin4', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'12', N'../../assets/img/Optin_images/Optin5.JPG', N'Optin/Optin5', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'13', N'../../assets/img/Thankyou_images/ThankYou1.JPG', N'ThankYou/ThankYou1', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'131', N'../../assets/img/OrderConfirmation_images/orderCon1.JPG', N'OrderConfirmation/orderCon1', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'132', N'../../assets/img/OrderConfirmation_images/orderCon2.JPG', N'OrderConfirmation/orderCon2', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'133', N'../../assets/img/OrderConfirmation_images/orderCon3.JPG', N'OrderConfirmation/orderCon3', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'134', N'../../assets/img/OrderConfirmation_images/orderCon4.JPG', N'OrderConfirmation/orderCon4', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'135', N'../../assets/img/OrderConfirmation_images/orderCon5.JPG', N'OrderConfirmation/orderCon5', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'136', N'../../assets/img/OrderConfirmation_images/orderCon6.JPG', N'OrderConfirmation/orderCon6', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'137', N'../../assets/img/OrderConfirmation_images/orderCon7.JPG', N'OrderConfirmation/orderCon7', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'138', N'../../assets/img/OrderConfirmation_images/orderCon8.JPG', N'OrderConfirmation/orderCon8', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'139', N'../../assets/img/OrderConfirmation_images/orderCon9.JPG', N'OrderConfirmation/orderCon9', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'14', N'../../assets/img/Thankyou_images/ThankYou2.JPG', N'ThankYou/ThankYou2', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'140', N'../../assets/img/OrderConfirmation_images/orderCon10.JPG', N'OrderConfirmation/orderCon10', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'141', N'../../assets/img/OrderConfirmation_images/orderCon11.JPG', N'OrderConfirmation/orderCon11', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'142', N'../../assets/img/OrderConfirmation_images/orderCon12.JPG', N'OrderConfirmation/orderCon12', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'143', N'../../assets/img/OrderConfirmation_images/orderCon13.JPG', N'OrderConfirmation/orderCon13', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'144', N'../../assets/img/OrderConfirmation_images/orderCon14.JPG', N'OrderConfirmation/orderCon14', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'145', N'../../assets/img/OrderConfirmation_images/orderCon15.JPG', N'OrderConfirmation/orderCon15', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'146', N'../../assets/img/OrderConfirmation_images/orderCon16.JPG', N'OrderConfirmation/orderCon16', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'147', N'../../assets/img/OrderConfirmation_images/orderCon17.JPG', N'OrderConfirmation/orderCon17', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'148', N'../../assets/img/OrderConfirmation_images/orderCon18.JPG', N'OrderConfirmation/orderCon18', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'149', N'../../assets/img/OrderConfirmation_images/orderCon19.JPG', N'OrderConfirmation/orderCon19', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'15', N'../../assets/img/Thankyou_images/ThankYou3.JPG', N'ThankYou/ThankYou3', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'150', N'../../assets/img/OrderConfirmation_images/orderCon20.JPG', N'OrderConfirmation/orderCon20', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'151', N'../../assets/img/OrderConfirmation_images/orderCon21.JPG', N'OrderConfirmation/orderCon21', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'152', N'../../assets/img/OrderConfirmation_images/orderCon22.JPG', N'OrderConfirmation/orderCon22', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'153', N'../../assets/img/OrderConfirmation_images/orderCon23.JPG', N'OrderConfirmation/orderCon23', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'154', N'../../assets/img/OrderConfirmation_images/orderCon24.JPG', N'OrderConfirmation/orderCon24', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'155', N'../../assets/img/OrderConfirmation_images/orderCon25.JPG', N'OrderConfirmation/orderCon25', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'156', N'../../assets/img/OrderConfirmation_images/orderCon26.JPG', N'OrderConfirmation/orderCon26', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'157', N'../../assets/img/OrderConfirmation_images/orderCon27.JPG', N'OrderConfirmation/orderCon27', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'158', N'../../assets/img/OrderConfirmation_images/orderCon28.JPG', N'OrderConfirmation/orderCon28', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'159', N'../../assets/img/OrderConfirmation_images/orderCon29.JPG', N'OrderConfirmation/orderCon29', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'16', N'../../assets/img/Thankyou_images/ThankYou4.JPG', N'ThankYou/ThankYou4', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'160', N'../../assets/img/OrderConfirmation_images/orderCon30.JPG', N'OrderConfirmation/orderCon30', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'161', N'../../assets/img/OrderConfirmation_images/orderCon31.JPG', N'OrderConfirmation/orderCon31', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'162', N'../../assets/img/OrderConfirmation_images/orderCon32.JPG', N'OrderConfirmation/orderCon32', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'163', N'../../assets/img/OrderConfirmation_images/orderCon33.JPG', N'OrderConfirmation/orderCon33', N'8', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'164', N'../../assets/img/Optin_images/Optin6.JPG', N'Optin/Optin6', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'165', N'../../assets/img/Optin_images/Optin7.JPG', N'Optin/Optin7', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'166', N'../../assets/img/Optin_images/Optin8.JPG', N'Optin/Optin8', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'167', N'../../assets/img/Optin_images/Optin9.JPG', N'Optin/Optin9', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'168', N'../../assets/img/Optin_images/Optin10.JPG', N'Optin/Optin10', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'169', N'../../assets/img/Optin_images/Optin11.JPG', N'Optin/Optin11', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'17', N'../../assets/img/Thankyou_images/ThankYou5.JPG', N'ThankYou/ThankYou5', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'170', N'../../assets/img/Optin_images/Optin12.JPG', N'Optin/Optin12', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'171', N'../../assets/img/Optin_images/Optin13.JPG', N'Optin/Optin13', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'172', N'../../assets/img/Optin_images/Optin14.JPG', N'Optin/Optin14', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'173', N'../../assets/img/Optin_images/Optin15.JPG', N'Optin/Optin15', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'174', N'../../assets/img/Optin_images/Optin16.JPG', N'Optin/Optin16', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'175', N'../../assets/img/Optin_images/Optin17.JPG', N'Optin/Optin17', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'176', N'../../assets/img/Optin_images/Optin18.JPG', N'Optin/Optin18', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'177', N'../../assets/img/Optin_images/Optin19.JPG', N'Optin/Optin19', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'178', N'../../assets/img/Optin_images/Optin20.JPG', N'Optin/Optin20', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'179', N'../../assets/img/Clickpop_images/clickpop1.JPG', N'clickpop/clickpop1', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'18', N'../../assets/img/Sales_images/Sales1.JPG', N'Sales/Sales1', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'180', N'../../assets/img/Clickpop_images/clickpop2.JPG', N'clickpop/clickpop2', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'181', N'../../assets/img/Clickpop_images/clickpop3.JPG', N'clickpop/clickpop3', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'182', N'../../assets/img/Clickpop_images/clickpop4.JPG', N'clickpop/clickpop4', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'183', N'../../assets/img/Clickpop_images/clickpop5.JPG', N'clickpop/clickpop5', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'184', N'../../assets/img/Clickpop_images/clickpop6.JPG', N'clickpop/clickpop6', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'185', N'../../assets/img/Clickpop_images/clickpop7.JPG', N'clickpop/clickpop7', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'186', N'../../assets/img/Clickpop_images/clickpop8.JPG', N'clickpop/clickpop8', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'187', N'../../assets/img/Clickpop_images/clickpop9.JPG', N'clickpop/clickpop9', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'188', N'../../assets/img/Clickpop_images/clickpop10.JPG', N'clickpop/clickpop10', N'9', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'19', N'../../assets/img/Sales_images/Sales2.JPG', N'Sales/Sales2', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'2', N'../../assets/img/Optin_images/Squueze2.JPG', N'Optin/Squeeze2', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'20', N'../../assets/img/Sales_images/Sales3.JPG', N'Sales/Sales3', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'21', N'../../assets/img/Sales_images/Sales4.JPG', N'Sales/Sales4', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'211', N'../../assets/img/Thankyou_images/ThankYou6.JPG', N'ThankYou/ThankYou6', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'212', N'../../assets/img/Thankyou_images/ThankYou7.JPG', N'ThankYou/ThankYou7', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'213', N'../../assets/img/Thankyou_images/ThankYou8.JPG', N'ThankYou/ThankYou8', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'214', N'../../assets/img/Thankyou_images/ThankYou9.JPG', N'ThankYou/ThankYou9', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'215', N'../../assets/img/Thankyou_images/ThankYou10.JPG', N'ThankYou/ThankYou10', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'216', N'../../assets/img/Thankyou_images/ThankYou11.JPG', N'ThankYou/ThankYou11', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'217', N'../../assets/img/Thankyou_images/ThankYou12.JPG', N'ThankYou/ThankYou12', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'218', N'../../assets/img/Thankyou_images/ThankYou13.JPG', N'ThankYou/ThankYou13', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'219', N'../../assets/img/Thankyou_images/ThankYou14.JPG', N'ThankYou/ThankYou14', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'22', N'../../assets/img/Sales_images/Sales5.JPG', N'Sales/Sales5', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'220', N'../../assets/img/Thankyou_images/ThankYou15.JPG', N'ThankYou/ThankYou15', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'221', N'../../assets/img/Thankyou_images/ThankYou16.JPG', N'ThankYou/ThankYou16', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'222', N'../../assets/img/Thankyou_images/ThankYou17.JPG', N'ThankYou/ThankYou17', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'223', N'../../assets/img/Thankyou_images/ThankYou18.JPG', N'ThankYou/ThankYou18', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'224', N'../../assets/img/Thankyou_images/ThankYou19.JPG', N'ThankYou/ThankYou19', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'225', N'../../assets/img/Thankyou_images/ThankYou20.JPG', N'ThankYou/ThankYou20', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'226', N'../../assets/img/Thankyou_images/ThankYou21.JPG', N'ThankYou/ThankYou21', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'227', N'../../assets/img/Thankyou_images/ThankYou22.JPG', N'ThankYou/ThankYou22', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'228', N'../../assets/img/Thankyou_images/ThankYou23.JPG', N'ThankYou/ThankYou23', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'229', N'../../assets/img/Thankyou_images/ThankYou24.JPG', N'ThankYou/ThankYou24', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'23', N'../../assets/img/Sales_images/Sales6.JPG', N'Sales/Sales6', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'230', N'../../assets/img/Thankyou_images/ThankYou25.JPG', N'ThankYou/ThankYou25', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'231', N'../../assets/img/Thankyou_images/ThankYou26.JPG', N'ThankYou/ThankYou26', N'2', N'')
GO
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'232', N'../../assets/img/Thankyou_images/ThankYou27.JPG', N'ThankYou/ThankYou27', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'233', N'../../assets/img/Thankyou_images/ThankYou28.JPG', N'ThankYou/ThankYou28', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'234', N'../../assets/img/Thankyou_images/ThankYou29.JPG', N'ThankYou/ThankYou29', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'235', N'../../assets/img/Thankyou_images/ThankYou30.JPG', N'ThankYou/ThankYou30', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'236', N'../../assets/img/Thankyou_images/ThankYou31.JPG', N'ThankYou/ThankYou31', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'237', N'../../assets/img/Thankyou_images/ThankYou32.JPG', N'ThankYou/ThankYou32', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'238', N'../../assets/img/Thankyou_images/ThankYou33.JPG', N'ThankYou/ThankYou33', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'239', N'../../assets/img/Thankyou_images/ThankYou34.JPG', N'ThankYou/ThankYou34', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'24', N'../../assets/img/Sales_images/Sales7.JPG', N'Sales/Sales7', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'240', N'../../assets/img/Thankyou_images/ThankYou35.JPG', N'ThankYou/ThankYou35', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'241', N'../../assets/img/Thankyou_images/ThankYou36.JPG', N'ThankYou/ThankYou36', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'242', N'../../assets/img/Thankyou_images/ThankYou37.JPG', N'ThankYou/ThankYou37', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'243', N'../../assets/img/Thankyou_images/ThankYou38.JPG', N'ThankYou/ThankYou38', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'244', N'../../assets/img/Thankyou_images/ThankYou39.JPG', N'ThankYou/ThankYou39', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'245', N'../../assets/img/Thankyou_images/ThankYou40.JPG', N'ThankYou/ThankYou40', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'246', N'../../assets/img/Thankyou_images/ThankYou41.JPG', N'ThankYou/ThankYou41', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'247', N'../../assets/img/Thankyou_images/ThankYou42.JPG', N'ThankYou/ThankYou42', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'248', N'../../assets/img/Thankyou_images/ThankYou43.JPG', N'ThankYou/ThankYou43', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'249', N'../../assets/img/Thankyou_images/ThankYou44.JPG', N'ThankYou/ThankYou44', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'25', N'../../assets/img/Sales_images/Sales8.JPG', N'Sales/Sales8', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'250', N'../../assets/img/Thankyou_images/ThankYou45.JPG', N'ThankYou/ThankYou45', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'251', N'../../assets/img/Thankyou_images/ThankYou46.JPG', N'ThankYou/ThankYou46', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'252', N'../../assets/img/Thankyou_images/ThankYou47.JPG', N'ThankYou/ThankYou47', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'253', N'../../assets/img/Thankyou_images/ThankYou48.JPG', N'ThankYou/ThankYou48', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'254', N'../../assets/img/Thankyou_images/ThankYou49.JPG', N'ThankYou/ThankYou49', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'255', N'../../assets/img/Thankyou_images/ThankYou50.JPG', N'ThankYou/ThankYou50', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'256', N'../../assets/img/Thankyou_images/ThankYou51.JPG', N'ThankYou/ThankYou51', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'257', N'../../assets/img/Thankyou_images/ThankYou52.JPG', N'ThankYou/ThankYou52', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'258', N'../../assets/img/Thankyou_images/ThankYou53.JPG', N'ThankYou/ThankYou53', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'259', N'../../assets/img/Thankyou_images/ThankYou54.JPG', N'ThankYou/ThankYou54', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'26', N'../../assets/img/Sales_images/Sales9.JPG', N'Sales/Sales9', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'260', N'../../assets/img/Thankyou_images/ThankYou55.JPG', N'ThankYou/ThankYou55', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'261', N'../../assets/img/Thankyou_images/ThankYou56.JPG', N'ThankYou/ThankYou56', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'262', N'../../assets/img/Thankyou_images/ThankYou57.JPG', N'ThankYou/ThankYou57', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'263', N'../../assets/img/Thankyou_images/ThankYou58.JPG', N'ThankYou/ThankYou58', N'2', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'264', N'../../assets/img/Optin_images/Optin6.JPG', N'Optin/Optin6', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'265', N'../../assets/img/Optin_images/Optin7.JPG', N'Optin/Optin7', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'266', N'../../assets/img/Optin_images/Optin8.JPG', N'Optin/Optin8', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'267', N'../../assets/img/Optin_images/Optin9.JPG', N'Optin/Optin9', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'268', N'../../assets/img/Optin_images/Optin10.JPG', N'Optin/Optin10', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'269', N'../../assets/img/Optin_images/Optin11.JPG', N'Optin/Optin11', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'27', N'../../assets/img/Sales_images/Sales10.JPG', N'Sales/Sales10', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'270', N'../../assets/img/Optin_images/Optin12.JPG', N'Optin/Optin12', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'271', N'../../assets/img/Optin_images/Optin13.JPG', N'Optin/Optin13', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'272', N'../../assets/img/Optin_images/Optin14.JPG', N'Optin/Optin14', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'273', N'../../assets/img/Optin_images/Optin15.JPG', N'Optin/Optin15', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'274', N'../../assets/img/Optin_images/Optin16.JPG', N'Optin/Optin16', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'275', N'../../assets/img/Optin_images/Optin17.JPG', N'Optin/Optin17', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'276', N'../../assets/img/Optin_images/Optin18.JPG', N'Optin/Optin18', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'277', N'../../assets/img/Optin_images/Optin19.JPG', N'Optin/Optin19', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'278', N'../../assets/img/Optin_images/Optin20.JPG', N'Optin/Optin20', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'279', N'../../assets/img/Optin_images/Optin21.JPG', N'Optin/Optin21', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'28', N'../../assets/img/Sales_images/Sales11.JPG', N'Sales/Sales11', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'280', N'../../assets/img/Optin_images/Optin22.JPG', N'Optin/Optin22', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'281', N'../../assets/img/Optin_images/Optin23.JPG', N'Optin/Optin23', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'282', N'../../assets/img/Optin_images/Optin24.JPG', N'Optin/Optin24', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'283', N'../../assets/img/Optin_images/Optin25.JPG', N'Optin/Optin25', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'284', N'../../assets/img/Optin_images/Optin26.JPG', N'Optin/Optin26', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'285', N'../../assets/img/Optin_images/Optin27.JPG', N'Optin/Optin27', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'286', N'../../assets/img/Optin_images/Optin28.JPG', N'Optin/Optin28', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'287', N'../../assets/img/Optin_images/Optin29.JPG', N'Optin/Optin29', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'288', N'../../assets/img/Optin_images/Optin30.JPG', N'Optin/Optin30', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'29', N'../../assets/img/Sales_images/Sales12.JPG', N'Sales/Sales12', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'290', N'../../assets/img/Optin_images/Optin31.JPG', N'Optin/Optin31', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'291', N'../../assets/img/Optin_images/Optin32.JPG', N'Optin/Optin32', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'292', N'../../assets/img/Optin_images/Optin33.JPG', N'Optin/Optin33', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'293', N'../../assets/img/Optin_images/Optin34.JPG', N'Optin/Optin34', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'294', N'../../assets/img/Optin_images/Optin35.JPG', N'Optin/Optin35', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'295', N'../../assets/img/Optin_images/Optin36.JPG', N'Optin/Optin36', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'296', N'../../assets/img/Optin_images/Optin37.JPG', N'Optin/Optin37', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'297', N'../../assets/img/Optin_images/Optin38.JPG', N'Optin/Optin38', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'298', N'../../assets/img/Optin_images/Optin39.JPG', N'Optin/Optin39', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'299', N'../../assets/img/Optin_images/Optin40.JPG', N'Optin/Optin40', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'3', N'../../assets/img/Optin_images/Squueze3.JPG', N'Optin/Squeeze3', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'30', N'../../assets/img/Sales_images/Sales13.JPG', N'Sales/Sales13', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'300', N'../../assets/img/Optin_images/Optin41.JPG', N'Optin/Optin41', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'301', N'../../assets/img/Optin_images/Optin42.JPG', N'Optin/Optin42', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'302', N'../../assets/img/Optin_images/Optin43.JPG', N'Optin/Optin43', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'303', N'../../assets/img/Optin_images/Optin44.JPG', N'Optin/Optin44', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'304', N'../../assets/img/Optin_images/Optin45.JPG', N'Optin/Optin45', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'305', N'../../assets/img/Optin_images/Optin46.JPG', N'Optin/Optin46', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'306', N'../../assets/img/Optin_images/Optin47.JPG', N'Optin/Optin47', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'307', N'../../assets/img/Optin_images/Optin48.JPG', N'Optin/Optin48', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'308', N'../../assets/img/Optin_images/Optin49.JPG', N'Optin/Optin49', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'309', N'../../assets/img/Optin_images/Optin50.JPG', N'Optin/Optin50', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'31', N'../../assets/img/Sales_images/Sales14.JPG', N'Sales/Sales14', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'310', N'../../assets/img/Optin_images/Optin51.JPG', N'Optin/Optin51', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'311', N'../../assets/img/Optin_images/Optin52.JPG', N'Optin/Optin52', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'312', N'../../assets/img/Optin_images/Optin53.JPG', N'Optin/Optin53', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'313', N'../../assets/img/Optin_images/Optin54.JPG', N'Optin/Optin54', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'314', N'../../assets/img/Optin_images/Optin55.JPG', N'Optin/Optin55', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'315', N'../../assets/img/Optin_images/Optin56.JPG', N'Optin/Optin56', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'316', N'../../assets/img/Optin_images/Optin57.JPG', N'Optin/Optin57', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'317', N'../../assets/img/Optin_images/Optin58.JPG', N'Optin/Optin58', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'318', N'../../assets/img/Optin_images/Optin59.JPG', N'Optin/Optin59', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'319', N'../../assets/img/Optin_images/Optin60.JPG', N'Optin/Optin60', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'32', N'../../assets/img/Sales_images/Sales15.JPG', N'Sales/Sales15', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'320', N'../../assets/img/Optin_images/Optin61.JPG', N'Optin/Optin61', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'321', N'../../assets/img/Optin_images/Optin62.JPG', N'Optin/Optin62', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'322', N'../../assets/img/Optin_images/Optin63.JPG', N'Optin/Optin63', N'1', N'')
GO
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'323', N'../../assets/img/Optin_images/Optin64.JPG', N'Optin/Optin64', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'324', N'../../assets/img/Optin_images/Optin65.JPG', N'Optin/Optin65', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'325', N'../../assets/img/Optin_images/Optin66.JPG', N'Optin/Optin66', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'326', N'../../assets/img/Optin_images/Optin67.JPG', N'Optin/Optin67', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'327', N'../../assets/img/Optin_images/Optin68.JPG', N'Optin/Optin68', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'328', N'../../assets/img/Optin_images/Optin69.JPG', N'Optin/Optin69', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'329', N'../../assets/img/Optin_images/Optin70.JPG', N'Optin/Optin70', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'33', N'../../assets/img/Sales_images/Sales16.JPG', N'Sales/Sales16', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'330', N'../../assets/img/Optin_images/Optin71.JPG', N'Optin/Optin71', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'331', N'../../assets/img/Optin_images/Optin72.JPG', N'Optin/Optin72', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'332', N'../../assets/img/Optin_images/Optin73.JPG', N'Optin/Optin73', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'333', N'../../assets/img/Optin_images/Optin74.JPG', N'Optin/Optin74', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'334', N'../../assets/img/Optin_images/Optin75.JPG', N'Optin/Optin75', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'335', N'../../assets/img/Optin_images/Optin76.JPG', N'Optin/Optin76', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'336', N'../../assets/img/Optin_images/Optin77.JPG', N'Optin/Optin77', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'337', N'../../assets/img/Optin_images/Optin78.JPG', N'Optin/Optin78', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'338', N'../../assets/img/Optin_images/Optin79.JPG', N'Optin/Optin79', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'339', N'../../assets/img/Optin_images/Optin80.JPG', N'Optin/Optin80', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'34', N'../../assets/img/Sales_images/Sales17.JPG', N'Sales/Sales17', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'340', N'../../assets/img/Optin_images/Optin81.JPG', N'Optin/Optin81', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'341', N'../../assets/img/Optin_images/Optin82.JPG', N'Optin/Optin82', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'342', N'../../assets/img/Optin_images/Optin83.JPG', N'Optin/Optin83', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'343', N'../../assets/img/Optin_images/Optin84.JPG', N'Optin/Optin84', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'344', N'../../assets/img/Optin_images/Optin85.JPG', N'Optin/Optin85', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'345', N'../../assets/img/Optin_images/Optin86.JPG', N'Optin/Optin86', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'346', N'../../assets/img/Optin_images/Optin87.JPG', N'Optin/Optin87', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'347', N'../../assets/img/Optin_images/Optin88.JPG', N'Optin/Optin88', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'348', N'../../assets/img/Optin_images/Optin89.JPG', N'Optin/Optin89', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'349', N'../../assets/img/Optin_images/Optin90.JPG', N'Optin/Optin90', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'35', N'../../assets/img/Sales_images/Sales18.JPG', N'Sales/Sales18', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'36', N'../../assets/img/Sales_images/Sales19.JPG', N'Sales/Sales19', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'37', N'../../assets/img/Sales_images/Sales20.JPG', N'Sales/Sales20', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'38', N'../../assets/img/Sales_images/Sales21.JPG', N'Sales/Sales21', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'39', N'../../assets/img/Sales_images/Sales22.JPG', N'Sales/Sales22', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'4', N'../../assets/img/Optin_images/Squeeze4.JPG', N'Optin/Squeeze4', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'40', N'../../assets/img/Sales_images/Sales23.JPG', N'Sales/Sales23', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'41', N'../../assets/img/Sales_images/Sales24.JPG', N'Sales/Sales24', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'42', N'../../assets/img/Sales_images/Sales25.JPG', N'Sales/Sales25', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'43', N'../../assets/img/Sales_images/Sales26.JPG', N'Sales/Sales26', N'3', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'44', N'../../assets/img/Launch_images/Video1.JPG', N'LaunchPage/Launch1', N'4', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'45', N'../../assets/img/Launch_images/Video2.JPG', N'LaunchPage/Launch2', N'4', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'46', N'../../assets/img/Launch_images/Video3.JPG', N'LaunchPage/Launch3', N'4', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'47', N'../../assets/img/Launch_images/Video4.JPG', N'LaunchPage/Launch4', N'4', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'48', N'../../assets/img/Launch_images/Video5.JPG', N'LaunchPage/Launch5', N'4', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'49', N'../../assets/img/Order_images/Order1.JPG', N'Order/Order1', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'5', N'../../assets/img/Optin_images/Squeeze5.JPG', N'Optin/Squeeze5', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'50', N'../../assets/img/Order_images/Order2.JPG', N'Order/Order2', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'51', N'../../assets/img/Order_images/Order3.JPG', N'Order/Order3', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'52', N'../../assets/img/Order_images/Order4.JPG', N'Order/Order4', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'53', N'../../assets/img/Order_images/Order5.JPG', N'Order/Order5', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'54', N'../../assets/img/Order_images/Order6.JPG', N'Order/Order6', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'55', N'../../assets/img/Order_images/Order7.JPG', N'Order/Order7', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'56', N'../../assets/img/Order_images/Order8.JPG', N'Order/Order8', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'57', N'../../assets/img/Order_images/Order9.JPG', N'Order/Order9', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'58', N'../../assets/img/Order_images/Order10.JPG', N'Order/Order10', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'59', N'../../assets/img/Order_images/Order11.JPG', N'Order/Order11', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'6', N'../../assets/img/Optin_images/Squueze6.JPG', N'Optin/Squeeze6', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'60', N'../../assets/img/Order_images/Order12.JPG', N'Order/Order12', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'61', N'../../assets/img/Order_images/Order13.JPG', N'Order/Order13', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'62', N'../../assets/img/Order_images/Order14.JPG', N'Order/Order14', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'63', N'../../assets/img/Order_images/Order15.JPG', N'Order/Order15', N'5', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'7', N'../../assets/img/Optin_images/Squeeze7.JPG', N'Optin/Squeeze7', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'74', N'../../assets/img/OCU_images/OCU1.JPG', N'OneClickUpsell/OCU1', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'75', N'../../assets/img/OCU_images/OCU2.JPG', N'OneClickUpsell/OCU2', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'76', N'../../assets/img/OCU_images/OCU3.JPG', N'OneClickUpsell/OCU3', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'77', N'../../assets/img/OCU_images/OCU4.JPG', N'OneClickUpsell/OCU4', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'78', N'../../assets/img/OCU_images/OCU5.JPG', N'OneClickUpsell/OCU5', N'6', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'8', N'../../assets/img/Optin_images/Optin1.JPG', N'Optin/Optin1', N'1', N'')
INSERT [dbo].[tbl_templatepages] ([Page_Id], [ImgPath], [ControllerURL], [TemplateId], [Description]) VALUES (N'9', N'../../assets/img/Optin_images/Optin2.JPG', N'Optin/Optin2', N'1', N'')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_Funnels_FunnelTypeId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbl_Funnels_FunnelTypeId] ON [dbo].[tbl_Funnels]
(
	[FunnelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_tokens_RegisteredUsersUserId]    Script Date: 3/31/2021 5:12:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_tbl_tokens_RegisteredUsersUserId] ON [dbo].[tbl_tokens]
(
	[RegisteredUsersUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tbl_Funnels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Funnels_tbl_FunnelType_FunnelTypeId] FOREIGN KEY([FunnelTypeId])
REFERENCES [dbo].[tbl_FunnelType] ([FunnelTypeId])
GO
ALTER TABLE [dbo].[tbl_Funnels] CHECK CONSTRAINT [FK_tbl_Funnels_tbl_FunnelType_FunnelTypeId]
GO
ALTER TABLE [dbo].[tbl_tokens]  WITH CHECK ADD  CONSTRAINT [FK_tbl_tokens_tbl_registered_users_RegisteredUsersUserId] FOREIGN KEY([RegisteredUsersUserId])
REFERENCES [dbo].[tbl_registered_users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_tokens] CHECK CONSTRAINT [FK_tbl_tokens_tbl_registered_users_RegisteredUsersUserId]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAdmin_FavFunnel]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetAdmin_FavFunnel]
As
Begin        
 select FunnelName,FunnelTypeName,count(tbl_funnelContacts.FunnelId) as MyCount from tbl_Funnels
inner join tbl_FunnelType on tbl_FunnelType.FunnelTypeId=tbl_Funnels.FunnelTypeId
inner join tbl_funnelContacts on tbl_Funnels.FunnelId=tbl_funnelContacts.FunnelId
group by tbl_funnelContacts.FunnelId,tbl_Funnels.FunnelName,tbl_FunnelType.FunnelTypeName
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMonthly_Subscriber]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_GetMonthly_Subscriber]
As
Begin  
SELECT count(UserId)
FROM tbl_registered_users
WHERE MONTH(CreatedOn) = MONTH(GetDate())
AND YEAR(CreatedOn) = YEAR(GetDate())
End

GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserList]    Script Date: 3/31/2021 5:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetUserList]    
AS BEGIN    


   
Select UserId,FirstName,LastName,Email,CreatedOn, tbl_registered_users.IsActive,PackageName,ExpireOn from tbl_registered_users    
  INNER JOIN tbl_packagemasters on tbl_packagemasters.PackageId = tbl_registered_users.PackageId    

   
END






GO
USE [master]
GO
ALTER DATABASE [EcommPBuild] SET  READ_WRITE 
GO
