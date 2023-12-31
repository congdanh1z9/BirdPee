USE [BirdPee]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancelation]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reason] [nvarchar](max) NOT NULL,
	[canceldate] [datetime] NOT NULL,
	[orderid] [int] NOT NULL,
 CONSTRAINT [PK_Cancelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Details]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Details](
	[cartid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[cid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Cart_Details] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[DoB] [datetime] NULL,
	[isDobSetup] [int] NOT NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Address]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NOT NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[receiver] [nvarchar](50) NULL,
	[districtid] [int] NULL,
	[isChosen] [int] NULL,
 CONSTRAINT [PK_Customer_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_Details]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_Details](
	[productid] [int] NOT NULL,
	[discountChoice] [float] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[enddate] [datetime] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isFreeShip] [int] NOT NULL,
 CONSTRAINT [PK_Discount_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[provinceid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](max) NULL,
	[rating] [float] NULL,
	[date] [datetime] NOT NULL,
	[customerid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[orderid] [int] NULL,
	[isReported] [int] NOT NULL,
	[reply] [nvarchar](max) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[createdate] [nvarchar](max) NOT NULL,
	[shopid] [int] NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[productname] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[initprice] [int] NOT NULL,
	[shipprice] [int] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Ship]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Ship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](max) NOT NULL,
	[initPrice] [float] NOT NULL,
	[shipDelay] [int] NOT NULL,
 CONSTRAINT [PK_Order_Ship] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Order_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shipdate] [nvarchar](max) NOT NULL,
	[shipaddress] [nvarchar](max) NOT NULL,
	[createdate] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[paymenttypeid] [int] NOT NULL,
	[paymentmethodid] [int] NOT NULL,
	[customerid] [int] NOT NULL,
	[shipid] [int] NOT NULL,
	[shipdistanceid] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Method]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Method](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[method] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payment_Method] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Type]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payment_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[soldQuantity] [int] NOT NULL,
	[availableQuantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[cateid] [int] NOT NULL,
	[isDiscount] [int] NOT NULL,
	[shopid] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_img]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_img](
	[productid] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship_Distance]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship_Distance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departure] [nvarchar](50) NOT NULL,
	[destination] [nvarchar](50) NOT NULL,
	[distance] [float] NOT NULL,
	[duration] [int] NOT NULL,
 CONSTRAINT [PK_Ship_Distance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[districtid] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[ownerid] [int] NOT NULL,
	[createdate] [datetime] NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop_Follower]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_Follower](
	[shopid] [int] NOT NULL,
	[customerid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop_OrderMail]    Script Date: 7/25/2023 6:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_OrderMail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NOT NULL,
	[customerid] [int] NOT NULL,
	[orderid] [int] NOT NULL,
 CONSTRAINT [PK_Shop_OrderMail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (1, N'SO1', N'1', N'SO', 1, N'images/kh2.jpg')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (2, N'SO2', N'2', N'SO', 1, N'images/kh2.jpg')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (4, N'ADWhale', N'admin@whale', N'AD', 1, N'111')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (7, N'SO3', N'3', N'SO', 1, N'images/kh2.jpg')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (8, N'SO4', N'4', N'SO', 1, N'images/kh2.jpg')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (12, N'ken kami', N'102937729905558541059', N'CS', 1, N'https://lh3.googleusercontent.com/a/AAcHTtd1gonNdZq1rNaImzyTRtGDc0K9QWUb0EK-g6Jd9g=s96-c')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (15, N'Báo Thủ Cá', N'102937729905558541064', N'CS', 1, N'https://lh3.googleusercontent.com/a/AAcHTtddbpYDLi94fjFSaxoV6bHj00-IcgbQ_QJ_BYN6fQ=s96-c')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (16, N'Vo Dang Kien Quoc (K16_HCM)', N'100391064033165687147', N'CS', 1, N'https://lh3.googleusercontent.com/a/AAcHTtcPDVO5sDHUdw_cNjkDWa7UGVw-2a-7fVaQX5WenHzShzE=s96-c')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (18, N'Vo Ken', N'112950077138264694604', N'CS', 1, N'https://lh3.googleusercontent.com/a/AAcHTtd4mZAlFDpwJIOWychQZ7ujq-TCVXRTVgqtJ4FF1X-c=s96-c')
INSERT [dbo].[Account] ([id], [username], [password], [role], [status], [img]) VALUES (19, N'Quoc Vo', N'116432197861104293977', N'CS', 1, N'https://lh3.googleusercontent.com/a/AAcHTtcpx_Mf-pDhGlvVfzBX5KIe9vWJTwlYkoZAoX4bDIbXUA=s96-c')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Cancelation] ON 

INSERT [dbo].[Cancelation] ([id], [reason], [canceldate], [orderid]) VALUES (1, N'bad', CAST(N'2023-07-13T00:00:00.000' AS DateTime), 75)
SET IDENTITY_INSERT [dbo].[Cancelation] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [customerid]) VALUES (1, 15)
INSERT [dbo].[Cart] ([id], [customerid]) VALUES (26, 12)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart_Details] ON 

INSERT [dbo].[Cart_Details] ([cartid], [productid], [quantity], [cid]) VALUES (1, 1, 1, 68)
SET IDENTITY_INSERT [dbo].[Cart_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (1, N'Birds', N'images/bird1.jpg
', N'bird')
INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (2, N'Birds'' house', N'images/BirdHouse1-2.jpg', N'house')
INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (4, N'Birds'' food', N'images/bird-food.jpg', N'food')
INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (5, N'Birds'' accessories', N'images/accessory.jpg', N'accessory')
INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (6, N'Birds'' medicine', N'images/accessory.jpg', N'medicine')
INSERT [dbo].[Category] ([id], [name], [img], [code]) VALUES (7, N'Bird'' bath', N'https://m.media-amazon.com/images/I/91NmCH7jsdL.jpg', N'bath')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (1, N'Test', N'test@gmail.com', N'Male', N'0985475632', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (12, N'ken kami', N'kenkami296@gmail.com', N'Male', N'0985475632', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (15, N'Báo Thủ Cá', N'kienquoc2802@gmail.com', N'Not set', N'Not set', CAST(N'2023-05-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (16, N'Vo Dang Kien Quoc (K16_HCM)', N'quocvdkse160940@fpt.edu.vn', N'Not set', N'Not set', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (18, N'Vo Ken', N'kienquoc11026789@gmail.com', N'Male', N'Not set', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([id], [name], [email], [gender], [tel], [DoB], [isDobSetup]) VALUES (19, N'Quoc Vo', N'kamiken269@gmail.com', N'Not set', N'Not set', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Customer_Address] ON 

INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (3, 12, N'Hem Hang Tre', N'0985746325', N'Vo Dang Kien Quoc', 1389, 0)
INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (4, 15, N'61/245 Hoang Huu Nam Street Alley', N'0985746325', N'Dang Cong Danh', 1109, 0)
INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (16, 12, N'Nguyen Huu Trai, Le Van Viet', N'0985746325', N'Vo Dang Kien Quoc', 1389, 1)
INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (18, 15, N'168 Le Van Viet', N'0213456987', N'Kien Quoc', 1389, 1)
INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (20, 18, N'13DF, GGG, HCM', N'0989575268', N'Kamiken', 1629, 1)
INSERT [dbo].[Customer_Address] ([id], [customerid], [address], [phone], [receiver], [districtid], [isChosen]) VALUES (22, 19, N'13DF, GGG, HCM', N'0989575268', N'Quox', 1424, 1)
SET IDENTITY_INSERT [dbo].[Customer_Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount_Details] ON 

INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (1, 20, CAST(N'2023-07-23T23:28:46.347' AS DateTime), CAST(N'2024-07-23T23:28:46.347' AS DateTime), 1, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (2, 20, CAST(N'2023-07-23T23:28:56.063' AS DateTime), CAST(N'2024-07-23T23:28:56.063' AS DateTime), 2, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (4, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (5, 20, CAST(N'2023-07-12T17:10:46.517' AS DateTime), CAST(N'2024-07-12T17:10:46.517' AS DateTime), 4, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (6, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (7, 15, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (10, 20, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (12, 15, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (13, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 9, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (14, 20, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (15, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 11, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (16, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 12, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (17, 5, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 13, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (19, 5, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 14, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (20, 5, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 15, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (21, 10, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 16, 1)
INSERT [dbo].[Discount_Details] ([productid], [discountChoice], [startdate], [enddate], [id], [isFreeShip]) VALUES (24, 20, CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-17T00:00:00.000' AS DateTime), 17, 1)
SET IDENTITY_INSERT [dbo].[Discount_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1109, N'Vinh', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1110, N'Cua Lo', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1111, N'Thai Hoa', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1112, N'Que Phong', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1113, N'Quy Chau', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1114, N'Ky Son', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1115, N'Tuong Duong', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1116, N'Nghia Dan', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1117, N'Quy Hop', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1118, N'Quynh Luu', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1119, N'Con Cuong', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1120, N'Tan Ky', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1121, N'Anh Son', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1122, N'Dien Chau', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1123, N'Yen Thanh', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1124, N'Do Luong', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1125, N'Thanh Chuong', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1126, N'Nghi Loc', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1127, N'Nam Dan', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1128, N'Hung Nguyen', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1129, N'Hoang Mai', N'40')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1130, N'Ninh Binh', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1131, N'Tam Diep', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1132, N'Nho Quan', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1133, N'Gia Vien', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1134, N'Hoa Lu', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1135, N'Yen Khanh', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1136, N'Kim Son', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1137, N'Yen Mo', N'37')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1138, N'Soc Trang', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1139, N'Chau Thanh', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1140, N'Ke Sach', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1141, N'My Tu', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1142, N'Cu Lao Dung', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1143, N'Long Phu', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1144, N'My Xuyen', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1145, N'Nga Nam', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1146, N'Thanh Tri', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1147, N'Vinh Chau', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1148, N'Tran De', N'94')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1149, N'Tra Vinh', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1150, N'Cang Long', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1151, N'Cau Ke', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1152, N'Tieu Can', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1153, N'Chau Thanh', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1154, N'Cau Ngang', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1155, N'Tra Cu', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1156, N'Duyen Hai', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1157, N'Duyen Hai', N'84')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1158, N'Tuyen Quang', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1159, N'Lam Binh', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1160, N'Na Hang', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1161, N'Chiem Hoa', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1162, N'Ham Yen', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1163, N'Yen Son', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1164, N'Son Duong', N'08')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1165, N'Vinh Long', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1166, N'Long Ho', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1167, N'Mang Thit', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1168, N'Vung Liem', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1169, N'Tam Binh', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1170, N'Binh Minh', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1171, N'Tra On', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1172, N'Binh Tan', N'86')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1173, N'Yen Bai', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1174, N'Nghia Lo', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1175, N'Luc Yen', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1176, N'Van Yen', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1177, N'Mu Cang Chai', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1178, N'Tran Yen', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1179, N'Tram Tau', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1180, N'Van Chan', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1181, N'Yen Binh', N'15')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1182, N'Lao Cai', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1183, N'Bat Xat', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1184, N'Muong Khuong', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1185, N'Si Ma Cai', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1186, N'Bac Ha', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1187, N'Bao Thang', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1188, N'Bao Yen', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1189, N'Sa Pa', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1190, N'Van Ban', N'10')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1191, N'My Tho', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1192, N'Go Cong', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1193, N'Cai Lay', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1194, N'Tan Phuoc', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1195, N'Cai Be', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1196, N'Cai Lay', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1197, N'Chau Thanh', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1198, N'Cho Gao', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1199, N'Go Cong Tay', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1200, N'Go Cong Dong', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1201, N'Tan Phu Dong', N'82')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1202, N'Hue', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1203, N'Phong Dien', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1204, N'Quang Dien', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1205, N'Phu Vang', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1206, N'Huong Thuy', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1207, N'Huong Tra', N'46')
GO
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1208, N'A Luoi', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1209, N'Phu Loc', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1210, N'Nam Dong', N'46')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1211, N'Kon Tum', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1212, N'Dak Glei', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1213, N'Ngoc Hoi', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1214, N'Dak To', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1215, N'Kon Plong', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1216, N'Kon Ray', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1217, N'Dak Ha', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1218, N'Sa Thay', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1219, N'Tu Mo Rong', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1220, N'Ia H'' Drai', N'62')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1221, N'Thanh Hoa', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1222, N'Bim Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1223, N'Sam Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1224, N'Muong Lat', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1225, N'Quan Hoa', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1226, N'Ba Thuoc', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1227, N'Quan Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1228, N'Lang Chanh', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1229, N'Ngoc Lac', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1230, N'Cam Thuy', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1231, N'Thach Thanh', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1232, N'Ha Trung', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1233, N'Vinh Loc', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1234, N'Yen Dinh', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1235, N'Tho Xuan', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1236, N'Thuong Xuan', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1237, N'Trieu Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1238, N'Thieu Hoa', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1239, N'Hoang Hoa', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1240, N'Hau Loc', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1241, N'Nga Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1242, N'Nhu Xuan', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1243, N'Nhu Thanh', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1244, N'Nong Cong', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1245, N'Dong Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1246, N'Quang Xuong', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1247, N'Nghi Son', N'38')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1248, N'Thai Binh', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1249, N'Quynh Phu', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1250, N'Hung Ha', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1251, N'Dong Hung', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1252, N'Thai Thuy', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1253, N'Tien Hai', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1254, N'Kien Xuong', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1255, N'Vu Thu', N'34')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1256, N'Tay Ninh', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1257, N'Tan Bien', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1258, N'Tan Chau', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1259, N'Duong Minh Chau', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1260, N'Chau Thanh', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1261, N'Hoa Thanh', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1262, N'Go Dau', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1263, N'Ben Cau', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1264, N'Trang Bang', N'72')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1265, N'Son La', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1266, N'Quynh Nhai', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1267, N'Thuan Chau', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1268, N'Muong La', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1269, N'Bac Yen', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1270, N'Phu Yen', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1271, N'Moc Chau', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1272, N'Yen Chau', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1273, N'Mai Son', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1274, N'Song Ma', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1275, N'Sop Cop', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1276, N'Van Ho', N'14')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1277, N'Dong Ha', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1278, N'Quang Tri', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1279, N'Vinh Linh', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1280, N'Huong Hoa', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1281, N'Gio Linh', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1282, N'Da Krong', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1283, N'Cam Lo', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1284, N'Trieu Phong', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1285, N'Hai Lang', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1286, N'Con Co', N'45')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1287, N'Quang Ngai', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1288, N'Binh Son', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1289, N'Tra Bong', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1290, N'Son Tinh', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1291, N'Tu Nghia', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1292, N'Son Ha', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1293, N'Son Tay', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1294, N'Minh Long', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1295, N'Nghia Hanh', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1296, N'Mo Duc', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1297, N'Duc Pho', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1298, N'Ba To', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1299, N'Ly Son', N'51')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1300, N'Dong Hoi', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1301, N'Minh Hoa', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1302, N'Tuyen Hoa', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1303, N'Quang Trach', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1304, N'Bo Trach', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1305, N'Quang Ninh', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1306, N'Le Thuy', N'44')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1307, N'Ba Don', N'44')
GO
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1308, N'Tuy Hoa', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1309, N'Song Cau', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1310, N'Dong Xuan', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1311, N'Tuy An', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1312, N'Son Hoa', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1313, N'Song Hinh', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1314, N'Tay Hoa', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1315, N'Phu Hoa', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1316, N'Dong Hoa', N'54')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1317, N'Hoa Binh', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1318, N'Da Bac', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1319, N'Luong Son', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1320, N'Kim Boi', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1321, N'Cao Phong', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1322, N'Tan Lac', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1323, N'Mai Chau', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1324, N'Lac Son', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1325, N'Yen Thuy', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1326, N'Lac Thuy', N'17')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1327, N'Lang Son', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1328, N'Trang Dinh', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1329, N'Binh Gia', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1330, N'Van Lang', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1331, N'Cao Loc', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1332, N'Van Quan', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1333, N'Bac Son', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1334, N'Huu Lung', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1335, N'Chi Lang', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1336, N'Loc Binh', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1337, N'Dinh Lap', N'20')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1338, N'Da Lat', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1339, N'Bao Loc', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1340, N'Dam Rong', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1341, N'Lac Duong', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1342, N'Lam Ha', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1343, N'Don Duong', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1344, N'Duc Trong', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1345, N'Di Linh', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1346, N'Bao Lam', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1347, N'Da Huoai', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1348, N'Da Teh', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1349, N'Cat Tien', N'68')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1350, N'Lai Chau', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1351, N'Tam Duong', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1352, N'Muong Te', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1353, N'Sin Ho', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1354, N'Phong Tho', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1355, N'Than Uyen', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1356, N'Tan Uyen', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1357, N'Nam Nhun', N'12')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1358, N'Rach Gia', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1359, N'Ha Tien', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1360, N'Kien Luong', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1361, N'Hon Dat', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1362, N'Tan Hiep', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1363, N'Chau Thanh', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1364, N'Giong Rieng', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1365, N'Go Quao', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1366, N'An Bien', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1367, N'An Minh', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1368, N'Vinh Thuan', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1369, N'Phu Quoc', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1370, N'Kien Hai', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1371, N'U Minh Thuong', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1372, N'Giang Thanh', N'91')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1373, N'Nha Trang', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1374, N'Cam Ranh', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1375, N'Cam Lam', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1376, N'Van Ninh', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1377, N'Ninh Hoa', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1378, N'Khanh Vinh', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1379, N'Dien Khanh', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1380, N'Khanh Son', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1381, N'Truong Sa', N'56')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1382, N'Quan 1', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1383, N'Quan 12', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1384, N'Go Vap', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1385, N'Binh Thanh', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1386, N'Tan Binh', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1387, N'Tan Phu', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1388, N'Phu Nhuan', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1389, N'Thu Duc', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1390, N'Quan 3', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1391, N'Quan 10', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1392, N'Quan 11', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1393, N'Quan 4', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1394, N'Quan 5', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1395, N'Quan 6', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1396, N'Quan 8', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1397, N'Binh Tan', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1398, N'Quan 7', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1399, N'Cu Chi', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1400, N'Hoc Mon', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1401, N'Binh Chanh', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1402, N'Nha Be', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1403, N'Can Gio', N'79')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1404, N'Ha Tinh', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1405, N'Hong Linh', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1406, N'Huong Son', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1407, N'Duc Tho', N'42')
GO
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1408, N'Vu Quang', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1409, N'Nghi Xuan', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1410, N'Can Loc', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1411, N'Huong Khe', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1412, N'Thach Ha', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1413, N'Cam Xuyen', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1414, N'Ky Anh', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1415, N'Loc Ha', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1416, N'Ky Anh', N'42')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1417, N'Ha Giang', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1418, N'Dong Van', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1419, N'Meo Vac', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1420, N'Yen Minh', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1421, N'Quan Ba', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1422, N'Vi Xuyen', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1423, N'Bac Me', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1424, N'Hoang Su Phi', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1425, N'Xin Man', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1426, N'Bac Quang', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1427, N'Quang Binh', N'02')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1428, N'Pleiku', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1429, N'An Khe', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1430, N'Ayun Pa', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1431, N'KBang', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1432, N'Dak Doa', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1433, N'Chu Pah', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1434, N'Ia Grai', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1435, N'Mang Yang', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1436, N'Kong Chro', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1437, N'Duc Co', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1438, N'Chu Prong', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1439, N'Chu Se', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1440, N'Dak Po', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1441, N'Ia Pa', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1442, N'Krong Pa', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1443, N'Phu Thien', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1444, N'Chu Puh', N'64')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1445, N'Ninh Kieu', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1446, N'O Mon', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1447, N'Binh Thuy', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1448, N'Cai Rang', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1449, N'Thot Not', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1450, N'Vinh Thanh', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1451, N'Co Do', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1452, N'Phong Dien', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1453, N'Thoi Lai', N'92')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1454, N'Hong Bang', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1455, N'Ngo Quyen', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1456, N'Le Chan', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1457, N'Hai An', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1458, N'Kien An', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1459, N'Do Son', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1460, N'Duong Kinh', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1461, N'Thuy Nguyen', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1462, N'An Duong', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1463, N'An Lao', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1464, N'Kien Thuy', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1465, N'Tien Lang', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1466, N'Vinh Bao', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1467, N'Cat Hai', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1468, N'Bach Long Vi', N'31')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1469, N'Phan Thiet', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1470, N'La Gi', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1471, N'Tuy Phong', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1472, N'Bac Binh', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1473, N'Ham Thuan Bac', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1474, N'Ham Thuan Nam', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1475, N'Tanh Linh', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1476, N'Duc Linh', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1477, N'Ham Tan', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1478, N'Phu Qui', N'60')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1479, N'Cao Lanh', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1480, N'Sa Dec', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1481, N'Hong Ngu', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1482, N'Tan Hong', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1483, N'Hong Ngu', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1484, N'Tam Nong', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1485, N'Thap Muoi', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1486, N'Cao Lanh', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1487, N'Thanh Binh', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1488, N'Lap Vo', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1489, N'Lai Vung', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1490, N'Chau Thanh', N'87')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1491, N'Bien Hoa', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1492, N'Long Khanh', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1493, N'Tan Phu', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1494, N'Vinh Cuu', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1495, N'Dinh Quan', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1496, N'Trang Bom', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1497, N'Thong Nhat', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1498, N'Cam My', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1499, N'Long Thanh', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1500, N'Xuan Loc', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1501, N'Nhon Trach', N'75')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1502, N'Vung Tau', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1503, N'Ba Ria', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1504, N'Chau Duc', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1505, N'Xuyen Moc', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1506, N'Long Dien', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1507, N'Dat Do', N'77')
GO
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1508, N'Phu My', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1509, N'Con Dao', N'77')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1510, N'Cao Bang', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1511, N'Bao Lam', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1512, N'Bao Lac', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1513, N'Ha Quang', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1514, N'Trung Khanh', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1515, N'Ha Lang', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1516, N'Quang Hoa', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1517, N'Hoa An', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1518, N'Nguyen Binh', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1519, N'Thach An', N'04')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1520, N'Quy Nhon', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1521, N'An Lao', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1522, N'Hoai Nhon', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1523, N'Hoai An', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1524, N'Phu My', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1525, N'Vinh Thanh', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1526, N'Tay Son', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1527, N'Phu Cat', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1528, N'An Nhon', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1529, N'Tuy Phuoc', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1530, N'Van Canh', N'52')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1531, N'Ben Tre', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1532, N'Chau Thanh', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1533, N'Cho Lach', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1534, N'Mo Cay Nam', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1535, N'Giong Trom', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1536, N'Binh Dai', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1537, N'Ba Tri', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1538, N'Thanh Phu', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1539, N'Mo Cay Bac', N'83')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1540, N'Long Xuyen', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1541, N'Chau Doc', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1542, N'An Phu', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1543, N'Tan Chau', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1544, N'Phu Tan', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1545, N'Chau Phu', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1546, N'Tinh Bien', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1547, N'Tri Ton', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1548, N'Chau Thanh', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1549, N'Cho Moi', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1550, N'Thoai Son', N'89')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1551, N'Bac Giang', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1552, N'Yen The', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1553, N'Tan Yen', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1554, N'Lang Giang', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1555, N'Luc Nam', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1556, N'Luc Ngan', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1557, N'Son Dong', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1558, N'Yen Dung', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1559, N'Viet Yen', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1560, N'Hiep Hoa', N'24')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1561, N'Lien Chieu', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1562, N'Thanh Khe', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1563, N'Hai Chau', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1564, N'Son Tra', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1565, N'Ngu Hanh Son', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1566, N'Cam Le', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1567, N'Hoa Vang', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1568, N'Hoang Sa', N'48')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1569, N'Thu Dau Mot', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1570, N'Bau Bang', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1571, N'Dau Tieng', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1572, N'Ben Cat', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1573, N'Phu Giao', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1574, N'Tan Uyen', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1575, N'Di An', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1576, N'Thuan An', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1577, N'Bac Tan Uyen', N'74')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1578, N'Thai Nguyen', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1579, N'Song Cong', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1580, N'Dinh Hoa', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1581, N'Phu Luong', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1582, N'Dong Hy', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1583, N'Vo Nhai', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1584, N'Dai Tu', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1585, N'Pho Yen', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1586, N'Phu Binh', N'19')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1587, N'Tam Ky', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1588, N'Hoi An', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1589, N'Tay Giang', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1590, N'Dong Giang', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1591, N'Dai Loc', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1592, N'Dien Ban', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1593, N'Duy Xuyen', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1594, N'Que Son', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1595, N'Nam Giang', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1596, N'Phuoc Son', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1597, N'Hiep Duc', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1598, N'Thang Binh', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1599, N'Tien Phuoc', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1600, N'Bac Tra My', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1601, N'Nam Tra My', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1602, N'Nui Thanh', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1603, N'Phu Ninh', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1604, N'Nong Son', N'49')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1605, N'Viet Tri', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1606, N'Phu Tho', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1607, N'Doan Hung', N'25')
GO
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1608, N'Ha Hoa', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1609, N'Thanh Ba', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1610, N'Phu Ninh', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1611, N'Yen Lap', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1612, N'Cam Khe', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1613, N'Tam Nong', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1614, N'Lam Thao', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1615, N'Thanh Son', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1616, N'Thanh Thuy', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1617, N'Tan Son', N'25')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1618, N'Nam Dinh', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1619, N'My Loc', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1620, N'Vu Ban', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1621, N'Y Yen', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1622, N'Nghia Hung', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1623, N'Nam Truc', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1624, N'Truc Ninh', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1625, N'Xuan Truong', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1626, N'Giao Thuy', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1627, N'Hai Hau', N'36')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1628, N'Bac Kan', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1629, N'Pac Nam', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1630, N'Ba Be', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1631, N'Ngan Son', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1632, N'Bach Thong', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1633, N'Cho Don', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1634, N'Cho Moi', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1635, N'Na Ri', N'06')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1636, N'Bac Lieu', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1637, N'Hong Dan', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1638, N'Phuoc Long', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1639, N'Vinh Loi', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1640, N'Gia Rai', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1641, N'Dong Hai', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1642, N'Hoa Binh', N'95')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1643, N'Ca Mau', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1644, N'U Minh', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1645, N'Thoi Binh', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1646, N'Tran Van Thoi', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1647, N'Cai Nuoc', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1648, N'Dam Doi', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1649, N'Nam Can', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1650, N'Phu Tan', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1651, N'Ngoc Hien', N'96')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1652, N'Vinh Yen', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1653, N'Phuc Yen', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1654, N'Lap Thach', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1655, N'Tam Duong', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1656, N'Tam Dao', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1657, N'Binh Xuyen', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1658, N'Yen Lac', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1659, N'Vinh Tuong', N'26')
INSERT [dbo].[District] ([id], [name], [provinceid]) VALUES (1660, N'Song Lo', N'26')
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([id], [comment], [rating], [date], [customerid], [productid], [orderid], [isReported], [reply], [status]) VALUES (2, N'is very good', 4, CAST(N'2023-05-07T00:00:00.000' AS DateTime), 12, 8, 70, 0, N'Thank you for buy product of us.', 1)
INSERT [dbo].[Feedback] ([id], [comment], [rating], [date], [customerid], [productid], [orderid], [isReported], [reply], [status]) VALUES (3, N'i like it , it is pretty', 4, CAST(N'2023-01-07T00:00:00.000' AS DateTime), 15, 5, 70, 0, N'', 0)
INSERT [dbo].[Feedback] ([id], [comment], [rating], [date], [customerid], [productid], [orderid], [isReported], [reply], [status]) VALUES (7, N'it not good , im not like this because im gay', 1, CAST(N'2023-01-07T00:00:00.000' AS DateTime), 12, 1, 71, 0, N'sorry for this. talk with us by muphone we will support you', 1)
INSERT [dbo].[Feedback] ([id], [comment], [rating], [date], [customerid], [productid], [orderid], [isReported], [reply], [status]) VALUES (8, N'Good bird', 5, CAST(N'2023-07-25T04:04:41.900' AS DateTime), 12, 6, 74, 0, N'', 0)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (5, 70, 5, N'Specialized Cage Size XS Type B (Dome)', 1, 495000, 510)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (6, 70, 8, N'Alexandri Parrot', 1, 6500000, 510)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (7, 71, 1, N'Cockatiel Lutino', 1, 1840000, 25)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (8, 73, 22, N'Nutribird powder a19 NutriBird A19 Powdered Baby Food 100g', 1, 65000, 1243)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (9, 74, 6, N'Monk Parakeet (Quaker)', 1, 8100000, 510)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (10, 74, 19, N'Parrotlet Special', 1, 3325000, 510)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (11, 75, 2, N'Specialized Cage Size XS Type B (Dome)', 1, 440000, 5)
INSERT [dbo].[Order_Details] ([id], [orderid], [productid], [productname], [quantity], [initprice], [shipprice]) VALUES (12, 76, 8, N'Alexandri Parrot', 1, 6500000, 18168)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Ship] ON 

INSERT [dbo].[Order_Ship] ([id], [type], [initPrice], [shipDelay]) VALUES (1, N'Economy', 1, 5)
INSERT [dbo].[Order_Ship] ([id], [type], [initPrice], [shipDelay]) VALUES (2, N'Standard', 5, 3)
INSERT [dbo].[Order_Ship] ([id], [type], [initPrice], [shipDelay]) VALUES (3, N'Fast', 10, 1)
SET IDENTITY_INSERT [dbo].[Order_Ship] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Status] ON 

INSERT [dbo].[Order_Status] ([id], [status]) VALUES (1, N'Cancel')
INSERT [dbo].[Order_Status] ([id], [status]) VALUES (2, N'Processing')
INSERT [dbo].[Order_Status] ([id], [status]) VALUES (3, N'Packed')
INSERT [dbo].[Order_Status] ([id], [status]) VALUES (4, N'In delivery')
INSERT [dbo].[Order_Status] ([id], [status]) VALUES (5, N'Successful')
SET IDENTITY_INSERT [dbo].[Order_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (70, N'2023-07-19', N'Ho Chi Minh', CAST(N'2023-06-12T00:00:00.000' AS DateTime), 2, 1, 1, 12, 1, 766)
INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (71, N'2023-07-15', N'Ho Chi Minh', CAST(N'2023-06-12T00:00:00.000' AS DateTime), 3, 1, 1, 12, 2, 1226)
INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (73, N'2023-07-20', N'Ho Chi Minh', CAST(N'2023-07-12T00:00:00.000' AS DateTime), 3, 1, 1, 12, 1, 25)
INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (74, N'2023-07-19', N'Ho Chi Minh', CAST(N'2023-07-12T00:00:00.000' AS DateTime), 5, 1, 1, 12, 1, 766)
INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (75, N'2023-07-18', N'Ho Chi Minh', CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1, 1, 1, 12, 1, 1226)
INSERT [dbo].[Orders] ([id], [shipdate], [shipaddress], [createdate], [status], [paymenttypeid], [paymentmethodid], [customerid], [shipid], [shipdistanceid]) VALUES (76, N'2023-07-18', N'Ho Chi Minh', CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2, 1, 1, 12, 3, 935)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment_Method] ON 

INSERT [dbo].[Payment_Method] ([id], [method]) VALUES (1, N'Cash on delivery')
INSERT [dbo].[Payment_Method] ([id], [method]) VALUES (2, N'VNPay')
SET IDENTITY_INSERT [dbo].[Payment_Method] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment_Type] ON 

INSERT [dbo].[Payment_Type] ([id], [type]) VALUES (1, N'COD')
INSERT [dbo].[Payment_Type] ([id], [type]) VALUES (2, N'Online')
SET IDENTITY_INSERT [dbo].[Payment_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (1, N'Cockatiel Lutino', N'This is the bird from the magic universe@In the wild Cockatiels often work in pairs or small groups to forage, their food usually seeds and grains and some local agricultural pests. Usually Cockatiels live on dead branches, next to rivers, streamsÃÂÃÂÃÂÃÂ¢ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¦ They seem to like to work near water sources. Most cockatiels love to take a bath. They are also active on the ground foraging for food such as seeds, grasses, leaves and bark (from all trees, shrubs and other vegetation). They also feed on a number of other insects and larvae.

Cockatiels are quite healthy and resistant to diseases, however, they should not be subjective to their diets. They like to climb, bite and gnaw on wooden branches, so don''t keep them in one place. When raising metal cages, the cage size for each pair of Cockatiel is 60 cm in length, 45 cm in width, 40 cm in height. Standing bridges should use hardwoods. The wooden nesting box is about 35 cm long, 20 cm wide, 16 cm high, the hole is about 7-8 cm in diameter, inside for sawdust. Clean and change water daily. Change the sand once a week, food boxes, jars and utensils must be disinfected once a month. Spring and autumn, the temperature changes greatly, pay attention to adjust the room temperature to prevent the occurrence of diseases. Keep warm in winter, the indoor temperature is not lower than 16ÃÂÃÂÃÂÃÂ¢ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ. Summer temperature is higher, usually above 30ÃÂÃÂÃÂÃÂ¢ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ need to strengthen ventilation.

In Northern Australia the breeding season of the Cockatiel is from April to July, in the south it is from August to December. Each nest of 1-7 eggs averages about 4. After hatching the young are fed by their parents in the morning. morning and evening. In captivity, the success rate of Cockatiel breeding is quite low, usually around 12 months of age they begin to reproduce, but the age to start breeding is from 15-18 months of age. Even at this age, many Cockatiels are still in the development stage, the reproductive system is not fully developed, so it leads to some erratic and erratic laying traits. Their nest should be 35 x 20 x 18cm in size, hole diameter 6-7cm, each nest usually lays 4-6 eggs, incubation time is about 19-21 days, after hatching should feed the young. soft form.

Cockatiel has up to 18 different color variations, and the cause of their color change is due to
1. The lack of pigment. For example: yellow, white face, albino;
2. Pigment changes. For example: Cinnamon, Waller, Perth and more surface silver;
3. Change the color. Example: Pat and pearl.
There are basically the following types: Pat Cockatiel, Cinnamon cockatiel, Waller cockatiel, Albino cockatiel, Whiteface cockatiel, Pass Multi cockatiel, Platinum cockatiel, Emerald chukar tail parrot.

Nutrition: The main diet of parrots in captivity is still the same as in the wild, but with additional green vegetables. Commercial parrot food is also a good choice.', 44, 999, 2300000, 1, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (2, N'Specialized Cage Size XS Type B (Dome)', N'No description for this product@Bird Pee Shop specializes in the sale and supply of parrot accessories, parrot toys, color matching games and other imported games for training parrots and other animals (see also: Handbook parrot rearing).', 26, 991, 550000, 2, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (3, N'Specialized Cage With Stand Size S', N'Dedicated parrot cage with convenient space-saving standing legs.

Size: 90x55x18"

Features of parrot cage
With long standing legs, we can take advantage of the space below.
Can mutate when the parrot spawns.
The locking pin is firm and easy to operate the lock.
The sturdy cage can easily withstand the impact of the parrot''s beak.
Cage cleaning is easy.
Meticulously machined so the welds are smooth and safe.
Withstands harsh environments such as rain, wind, etc.
Give your parrot the best feeling.
 Bird Pee Shop specializes in selling and supplying specialized imported cages with stand size S for parrots. Specialized design, durable material, suitable for small parrots.', 2, 1000, 1850000, 2, 0, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (4, N'Cage (Backpack) Transport Fabric Size S', N'Bird Pee specializes in the sale and supply of specialized imported cloth bags for parrots. Specialized design, durable material, suitable for small parrots. Help you go anywhere you can bring your pet with you in the most comfortable, most convenient way, Solid design, modern fashion style.

Size:

Size S (44x32x27)

Origin: Taiwan

Material: Fabric', 5, 998, 700000, 2, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (5, N'Specialized Cage Size XS Type B (Dome)', N'No description for this product@Bird Pee Shop specializes in the sale and supply of parrot accessories, parrot toys, color matching games and other imported games for training parrots and other animals (see also: Handbook parrot rearing).', 28, 1000, 550000, 2, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (6, N'Monk Parakeet (Quaker)', N'Color: green, blue, white
Length: 13 – 15 cm
Weight: 60 – 80g
Lifespan: 20-30 years
Maturity: 2 years old', 9, 997, 9000000, 1, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (7, N'High Quality Fabric Cage Shipping Size S', N'Bird Pee Shop specializes in selling and providing a variety of cloth cages for parrots with diverse designs, durable materials suitable for both cages and standing trees.

– Size: 20x15x15
– Origin: Taiwan
– Material: Fabric', 14, 987, 350000, 2, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (8, N'Alexandri Parrot', N'From a biological perspective, Chich Thai (Yellow-cheeked parrot) belongs to the group of parakeets - Ringneck/Long-tail Parakeets, with 2 characteristics of the species: the adult male has a dark border on the back of the neck. (ring) and birds all have very long tails, accounting for about half of the total body length. From a pet perspective - Alexandrine Parakeet is considered a friendly parrot, easy to tame, quite resistant, with a lifespan that can reach 30-40 years.

Considered a parrot with good parody ability, in fact, the voice parody quality of the Yellow-cheeked Parrot is far inferior to the Barracuda or the African Gray Parrot. Birds are not very good at imitating human voices, especially difficult to imitate words with many vowels o, a. Recorded in the world, only a few individuals can remember and learn up to about 20 words.

On the contrary, birds are easy to imitate the sounds of car horns, whistles, and clanking sounds of metal objects. Birds are especially fond of communication, so it is important to cuddle and talk to them often. In the cage, colorful toys (usually wooden and dangling by small chains) should be left for the birds to play and observe. less sad. When little cared for: birds often suffer from stress – becoming aggressive, biting their owners, screaming loudly, or staying silent and plucking themselves until they are naked. The only solution is to pay more attention to the birds, to feed a variety of foods, to have a comfortable cage space, to be as close to natural trees as possible, to relieve the stress of the birds.

The main nutrition of the Yellow-cheeked Parrot is grains, tree shoots, and fruits. In the breeding season: birds often provide themselves with minerals from the soil along streams and a little protein with some small insects. In home farming conditions: raw corn, peanuts, sunflower seeds, barley seeds, large millet, chestnuts... in the form of raw seeds can all be mixed into a mixture as the main food for animals. bird. In addition, it is possible to put in this mixture a few vegetables - dried fruits, such as carrots, sweet potatoes, papaya ... for birds to eat strangely. Fresh, low-sour fruits, such as apples, pears, guava, mangoes, dragon fruit, grapes, papayas, cucumbers, tubers, fresh beans (peas, peas)... can be given. Birds eat according to their preferences, no dosage limit. Occasionally, the bird can "dessert" with light biscuits with a bit of butter, some jam, or yogurt that is not too cold.', 24, 993, 6500000, 1, 0, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (9, N'Sun Conure', N'Sun Conure parrots mainly live in arid forest areas, deciduous forests and forest savannas, their operating altitude can be up to 1200 meters. They also live near the Amazon River around Várzea seasonally flooded forest.

In the wild Sun Conure usually works in pairs or small groups, they are easy to spot in the wild because of their brilliant coat, when flying they like to chirp, are very noisy, their calls can be heard quite far. . When foraging they are quite quiet.
Their breeding season begins in February, their nests are located in the hollows of palm trees. Each nest has 3-5 eggs, incubation time is about 23 days, the young will stay in the nest for 8 weeks. It takes about 2 years to reach maturity. Their lifespan is 25-30 years.

Nutrition: Sun Conure mainly eats seeds, berries, fruits (especially the fruit of the dragon plant), flowers, seeds, insects and larvae, the main diet of parrots in captivity is still similar yes, but with green vegetables included. Commercial parrot food is also a good choice.

In addition to the main diet, parrots can be supplemented with apples, grapes, green vegetables, corn, beans, sweet potatoes, peanuts (of course, do not feed the parrot avocado). In addition, minerals such as oyster shells, protein in boiled eggs, cheese, etc. can be added. Vitamins can be added through drinking water or added to food.', 10, 999, 5500000, 1, 0, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (10, N'Large Imported Cage 2 Floors Size L', N'Bird Pee specializes in selling and supplying large imported 2-storey specialized cages for parrots. Specialized design, durable material, suitable for medium and large parrots. Powder coated steel bird cage is very safe for birds. The cage is very sturdy and the space is large for the bird to be more comfortable. The Birdhouse is manufactured to durable industry standards, welded from high quality steel wire, through the standard powder coating process.

Size L: 93x69x160

Origin: Taiwan

Material: Powder coated steel', 18, 983, 9500000, 2, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (11, N'Stainless Steel Cage Shipping Size XL', N'Bird Pee Shop specializes in selling and supplying specialized imported imported stainless steel cages for parrots. Specialized design, durable material, suitable for large macaws.

Made in Viet Nam

Material: stainless steel', 3, 1000, 1800000, 2, 0, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (12, N'Nutritional Powder For Small Birds NutriBird A21 100g', N'NutriBird A21 Parrot nutritious food for parrots is the most trusted product by customers in terms of quality and safety when used. Just one simple step of mixing the dough, your pet parrot will have a delicious and nutritious meal right away.

Features of nutritional food for birds
NutriBird A21 powder is a highly nutritionally balanced and highly nutritious formula that helps newborn birds grow faster, has a quicker shedding time and gives a brighter plumage.
NutriBird A21 powder contains microorganisms beneficial to the health and digestive tract of birds.
NutriBird A21 powder contains digestive enzymes suitable for birds, helping birds digest carbohydrates and proteins well, these enzymes are extremely good for newly hatched birds or birds with digestive problems.
Powder containing DHA, Omega-3 is suitable for the development of brain, cardiovascular and visual functions.
Bird Pee Shop specializes in selling nutritional formula NutriBird A21 Parrot Powder from Belgium (Versele Laga Company) for feeding babies and small birds. NutriBird A21 instant nutrition formula is the most trusted and most researched product by professional birders, veterinarians, animal welfare programs worldwide.', 3, 1000, 60000, 4, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (13, N'Nutritional Powder For Small Birds NutriBird A19 100g', N'NutriBird A19 is the most trusted product by customers in terms of quality and safety when used. Just one simple step of mixing the dough, your pet parrot will have a delicious and nutritious meal right away.

Feature:

NutriBird A19 Powder is a highly nutritious and balanced formula that helps newborn birds grow faster, has a quicker shedding time and gives a brighter plumage.
NutriBird A19 powder contains beneficial microorganisms for the health and digestive tract of birds.
NutriBird A19 powder contains digestive enzymes suitable for birds, which help birds digest carbohydrates and proteins well, these enzymes are extremely good for newly hatched birds or birds with digestive difficulties.
Powder containing DHA, Omega-3 is suitable for the development of brain, cardiovascular and visual functions.
Bird Pee Shop specializes in selling nutritional formula NutriBird A19 Powder from Belgium (Versele Laga Company) for feeding babies and small birds. NutriBird A19 instant nutrition formula is the most trusted and most researched product by professional birders, veterinarians, animal welfare programs worldwide.', 1, 1000, 60000, 4, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (14, N'NutriBird A19 Powder 100g', N'Nutribird powder A19

 NutriBird A19 Powdered Baby Food 100g
 60,000 VND 

NutriBird A19 powdered infant and young bird food from Belgium.', 6, 995, 11000, 4, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (15, N'Nutritional Powder NutriBird Big Size A21 3KG', N'Bird Pee Shop specializes in selling nutritional formula NutriBird A21 Parrot Powder from Belgium (Versele Laga Company) for feeding babies and small birds. NutriBird A21 instant nutrition formula is the most respected and most researched product by professional birders, veterinarians, animal welfare programs worldwide. At the same time and dose of baby bird powder, Bird Pee Shop found that the weight and health of birds when cared for with NutriBird A21 powder were markedly different from other nutritional foods. Retail price: 60,000 VND/ 100g

Feature:

NutriBird A21 powder is a highly nutritionally balanced and highly nutritious formula that helps newborn birds grow faster, has a quicker shedding time and gives a brighter plumage.
NutriBird A21 powder contains beneficial microorganisms for the health and digestive tract of birds
NutriBird A21 powder contains digestive enzymes suitable for birds, helping birds to digest carbohydrates and proteins well, these enzymes are extremely good for newly hatched birds or birds with digestive difficulties.
Powder containing DHA, Omega-3 is suitable for the development of brain, cardiovascular and visual functions.
Bird Pee Shop specializes in buying and selling parrots nationwide. Make sure the parrot is beautiful, has a health quarantine certificate, and is cheap.', 1, 1000, 60000, 4, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (16, N'Nutritional food for birds NutriBird A19 High Energy Powder 3KG', N'Bird Pee Shop specializes in selling nutritional formula NutriBird A19 High Energy Powder from Belgium (Versele Laga) for feeding babies and small birds. NutriBird A19 High Energy instant nutrition formula is the most respected and most researched product by professional birders, veterinarians, animal welfare programs worldwide. With the same time and dosage of baby bird powder, Bird Pee Shop found that the weight and health of birds when cared for with NutriBird A19 High Energy powder were markedly different from other nutritional foods.', 1, 1000, 1650000, 4, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (17, N'Stainless Steel Table Standing Tree Size S Type A', N'Bird Pee Shop specializes in the sale and supply of parrot accessories, parrot toys, color matching games and other imported games for training parrots and other animals (see also: Handbook parrot rearing).

– Size: 27x29x14 (horizontal x depth x height)
- Material: stainless steel', 5, 1000, 350000, 2, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (18, N'Cockatiel White Face', N'In the wild Cockatiels often work in pairs or small groups to forage, their food usually seeds and grains and some local agricultural pests. Usually Cockatiels live on dead branches, next to rivers, streams… They seem to like to work near water sources. Most cockatiels love to take a bath. They are also active on the ground foraging for food such as seeds, grasses, leaves and bark (from all trees, shrubs and other vegetation). They also feed on a number of other insects and larvae.

Cockatiels are quite healthy and resistant to diseases, however, they should not be subjective to their diets. They like to climb, bite and gnaw on wooden branches, so don''t keep them in one place. When raising metal cages, the cage size for each pair of Cockatiel is 60 cm in length, 45 cm in width, 40 cm in height. Standing bridges should use hardwoods. The wooden nesting box is about 35 cm long, 20 cm wide, 16 cm high, the hole is about 7-8 cm in diameter, inside for sawdust. Clean and change water daily. Change the sand once a week, food boxes, jars and utensils must be disinfected once a month. Spring and autumn, the temperature changes greatly, pay attention to adjust the room temperature to prevent the occurrence of diseases. Keep warm in winter, the indoor temperature is not lower than 16℃. Summer temperature is higher, usually above 30℃ need to strengthen ventilation.

In Northern Australia the breeding season of the Cockatiel is from April to July, in the south it is from August to December. Each nest of 1-7 eggs averages about 4. After hatching the young are fed by their parents in the morning. morning and evening. In captivity, the success rate of Cockatiel breeding is quite low, usually around 12 months of age they begin to reproduce, but the age to start breeding is from 15-18 months of age. Even at this age, many Cockatiels are still in the development stage, the reproductive system is not fully developed, so it leads to some erratic and erratic laying traits. Their nest should be 35 x 20 x 18cm in size, hole diameter 6-7cm, each nest usually lays 4-6 eggs, incubation time is about 19-21 days, after hatching should feed the young. soft form.

Cockatiel has up to 18 different color variations, and the cause of their color change is due to
1. The lack of pigment. For example: yellow, white face, albino;
2. Pigment changes. For example: Cinnamon, Waller, Perth and more surface silver;
3. Change the color. Example: Pat and pearl.
There are basically the following types: Pat Cockatiel, Cinnamon cockatiel, Waller cockatiel, Albino cockatiel, Whiteface cockatiel, Pass Multi cockatiel, Platinum cockatiel, Emerald chukar tail parrot.

Nutrition: The main diet of parrots in captivity is still the same as in the wild, but with additional green vegetables. Commercial parrot food is also a good choice.', 7, 1000, 3500000, 1, 0, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (19, N'Parrotlet Special', N'Parrolets are quite intelligent, open, very curious, courageous, affectionate, playful, funny. They love to live and play with people and are quite fond of bathing. Especially Parrolet is quite courageous parrot, they dare to be aggressive with other birds regardless of the size of the opponent. This is also something to keep in mind when keeping a Parrolet with other parrots. Parrolets have the ability to speak, mainly males, they have the ability to learn about 100 words, and at the same time are suitable species to teach to do simple tricks.

When kept in a cage they can play with toys, hang upside down or eat, especially small but they eat more than cockatiels.

Breeding: In the wild Parrolet nests in tree hollows or in old nests of other birds. Parrolet after 1 year of age will begin to breed, laying each litter 4-6 eggs, male birds feed the female and young. The eggs are incubated after 18 days of hatching and after 42 days the chicks leave the nest. In the condition of nodal rearing, the cage should be set with a wooden nest outside, the opening in and out is inward, the bottom of the nest should be sprinkled with dry grass, shavings (don''t use coconut silk because it is easy to get caught in their feet).

Nutrition: They like to eat small seeds such as millet, sunflower… at the same time they also like to eat other fresh vegetables. When kept in captivity, it is still the same, but with more green vegetables. Commercial parrot food is also a good choice.', 8, 998, 3500000, 1, 1, 5, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (20, N'Green Cheeked Conure', N'Green Cheeked Parakeet aka Green Cheeked Conure measures 26 cm (10 in) in length and weighs about 60-80g. Body mostly green, with gray-black crown, white eye-rings, green cheeks, blue primary wing feathers, gray bill, pointed and long tail, and streaks on the chest short horizontal and red belly.

Green Cheeked Parakeet is always playful, affectionate and intelligent, known to have a "big in a small body" personality. They can learn to talk, even with a limited vocabulary and a creaky voice. In captivity, it is possible to live up to 30 years with proper care, although the average lifespan is usually 10 years. It is known that they can create color mutations in the barn.

Nutrition: They like to eat small seeds such as millet, sunflower… at the same time they also like to eat other fresh vegetables. When kept in captivity, it is still the same, but with more green vegetables. Commercial parrot food is also a good choice.', 9, 1000, 3500000, 1, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (21, N'Nutribird Powder A19 Nutritional Food', N'NutriBird A19 in powder form from Belgium. The product helps birds gain weight quickly as well as health compared to other foods.', 1, 1000, 22222, 4, 1, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (22, N'Nutribird powder a19 NutriBird A19 Powdered Baby Food 100g', N'NutriBird A19 powdered infant and young bird food from Belgium. The product helps birds gain weight quickly as well as health compared to other foods.', 3, 998, 65000, 4, 0, 8, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (23, N'NutriBird A19 Powder 100g', N'NutriBird A19 Powder is a highly nutritious and balanced formula that helps newborn birds grow faster, has a quicker shedding time and gives a brighter plumage.
NutriBird A19 powder contains beneficial microorganisms for the health and digestive tract of birds.
NutriBird A19 powder contains digestive enzymes suitable for birds, which help birds digest carbohydrates and proteins well, these enzymes are extremely good for newly hatched birds or birds with digestive difficulties.
Powder containing DHA, Omega-3 is suitable for the development of brain, cardiovascular and visual functions.
Bird Pee Shop specializes in selling nutritional formula NutriBird A19 Powder from Belgium (Versele Laga Company) for feeding babies and small birds. NutriBird A19 instant nutrition formula is the most trusted and most researched product by professional birders, veterinarians, animal welfare programs worldwide.', 1, 1000, 300000, 4, 0, 1, N'Available')
INSERT [dbo].[Product] ([id], [name], [description], [soldQuantity], [availableQuantity], [price], [cateid], [isDiscount], [shopid], [status]) VALUES (24, N'Love Bird', N'The Lovebird or Fischer''s Lovebird is the smallest parrot native to Africa. The bird is quite friendly, the call is a bit loud and harsh. However, when choosing Lovebird as a pet - pet owners should spend a lot of time taking care of them every day.

In terms of appearance, males and females are quite similar, so it is necessary to determine DNA to distinguish: the chest and wing surface are bright green; darker green color. The neck has a bright yellow ring, which gradually spreads to the top of the head and darkens to orange. The first pavilion has a patch of olive green (moss green/gray green), bright red beak; There is a white ring around the eyes. Wing feathers have dark gray inner blades, outside of green Lovebird has a short, dark green tail, the tail tip has a bright blue border. Juveniles are as colorful as adults but not as colorful.

Nutrition: They like to eat small seeds such as millet, sunflower… at the same time they also like to eat other fresh vegetables. When kept in captivity, it is still the same, but with more green vegetables. Commercial parrot food is also a good choice.', 0, 1000, 2000000, 1, 1, 5, N'Available')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (1, N'https://petmeshop.com/wp-content/uploads/2020/09/Cockatiel-1.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (2, N'https://petmeshop.com/wp-content/uploads/2023/05/long-nhua-cao-cap-van-chuyen-size-s-48x32x32.png')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (3, N'https://petmeshop.com/wp-content/uploads/2020/09/Long-chuyen-dung-co-chan-dung-size-M-loai-B-1.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (4, N'https://petmeshop.com/wp-content/uploads/2020/09/Long-Cap-vai-van-chuyen-size-S.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (5, N'https://petmeshop.com/wp-content/uploads/2023/05/long-chuyen-dung-size-xs-loai-b-mai-vom.png')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (6, N'https://petmeshop.com/wp-content/uploads/2020/09/Monk-Parakeet-Parrot-4.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (7, N'https://petmeshop.com/wp-content/uploads/2023/05/long-vai-cao-cap-van-chuyen-size-s-20x15x15.png')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (8, N'https://petmeshop.com/wp-content/uploads/2020/09/alexandrine-parakeet-1.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (9, N'https://petmeshop.com/wp-content/uploads/2020/09/sun-conure.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (10, N'https://petmeshop.com/wp-content/uploads/2020/09/long-ngoai-nhap-lon-2-tang-size-l.png')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (11, N'https://petmeshop.com/wp-content/uploads/2020/09/Long-van-chuyen-vet-4.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (12, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a21.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (13, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (14, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (15, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a21.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (16, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (17, N'https://petmeshop.com/wp-content/uploads/2023/05/cay-dung-de-ban-inox-size-s-loai-a-27x29x14.png')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (18, N'https://petmeshop.com/wp-content/uploads/2023/05/cockatiel-special-1.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (19, N'https://petmeshop.com/wp-content/uploads/2020/09/parrotlet-2.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (20, N'https://petmeshop.com/wp-content/uploads/2020/09/green-cheeked-conure.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (21, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (22, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (23, N'https://petmeshop.com/wp-content/uploads/2020/09/Bot-nutribird-a19.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (24, N'https://petmeshop.com/wp-content/uploads/2020/09/vet-lovebird.jpg')
INSERT [dbo].[Product_img] ([productid], [img]) VALUES (1, N'https://petmeshop.com/wp-content/uploads/2023/05/long-nhua-cao-cap-van-chuyen-size-s-48x32x32.png')
GO
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'02', N'Ha Giang', N'HGG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'04', N'Cao Bang', N'CBG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'06', N'Bac Kan', N'BKN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'08', N'Tuyen Quang', N'TQG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'10', N'Lao Cai', N'LCI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'12', N'Lai Chau', N'LCU')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'14', N'Son La', N'SLA')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'15', N'Yen Bai', N'YBI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'17', N'Hoa Binh', N'HBH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'19', N'Thai Nguyen', N'TNN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'20', N'Lang Son', N'LSN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'24', N'Bac Giang', N'BGG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'25', N'Phu Tho', N'PTO')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'26', N'Vinh Phuc', N'VPC')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'31', N'Hai Phong', N'HPG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'34', N'Thai Binh', N'TBH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'36', N'Nam Dinh', N'NDH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'37', N'Ninh Binh', N'NBH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'38', N'Thanh Hoa', N'THA')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'40', N'Nghe An', N'NAN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'42', N'Ha Tinh', N'HTH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'44', N'Quang Binh', N'QBH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'45', N'Quang Tri', N'QTI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'46', N'Thua Thien Hue', N'TTHE')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'48', N'Da Nang', N'DNG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'49', N'Quang Nam', N'QNM')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'51', N'Quang Ngai', N'QNI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'52', N'Binh Dinh', N'BDH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'54', N'Phu Yen', N'PYN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'56', N'Khanh Hoa', N'KHA')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'60', N'Binh Thuan', N'BTN')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'62', N'Kon Tum', N'KTM')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'64', N'Gia Lai', N'GLI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'68', N'Lam Dong', N'LDG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'72', N'Tay Ninh', N'TNH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'74', N'Binh Duong', N'BDG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'75', N'Dong Nai', N'DNI')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'77', N'Ba Ria - Vung Tau', N'BRVTU')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'79', N'Ho Chi Minh', N'HCMH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'82', N'Tien Giang', N'TGG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'83', N'Ben Tre', N'BTE')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'84', N'Tra Vinh', N'TVH')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'86', N'Vinh Long', N'VLG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'87', N'Dong Thap', N'DTP')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'89', N'An Giang', N'AGG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'91', N'Kien Giang', N'KGG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'92', N'Can Tho', N'CTO')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'94', N'Soc Trang', N'STG')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'95', N'Bac Lieu', N'BLU')
INSERT [dbo].[Province] ([id], [name], [code]) VALUES (N'96', N'Ca Mau', N'CMU')
GO
SET IDENTITY_INSERT [dbo].[Ship_Distance] ON 

INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1, N'Nghe An', N'Ninh Binh', 199.99000549316406, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (2, N'Nghe An', N'Soc Trang', 1454.8800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (3, N'Nghe An', N'Tra Vinh', 1366.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (4, N'Nghe An', N'Tuyen Quang', 433.01998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (5, N'Nghe An', N'Vinh Long', 1375.4000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (6, N'Nghe An', N'Yen Bai', 444.82998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (7, N'Nghe An', N'Lao Cai', 578.030029296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (8, N'Nghe An', N'Tien Giang', 1318.449951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (9, N'Nghe An', N'Thua Thien Hue', 392.510009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (10, N'Nghe An', N'Kon Tum', 757.29998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (11, N'Nghe An', N'Thanh Hoa', 139.44000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (12, N'Nghe An', N'Thai Binh', 253.55000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (13, N'Nghe An', N'Tay Ninh', 1192.4000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (14, N'Nghe An', N'Son La', 457.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (15, N'Nghe An', N'Quang Tri', 308.75, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (16, N'Nghe An', N'Quang Ngai', 615.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (17, N'Nghe An', N'Quang Binh', 203.08000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (18, N'Nghe An', N'Phu Yen', 896.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (19, N'Nghe An', N'Hoa Binh', 312.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (20, N'Nghe An', N'Lang Son', 438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (21, N'Nghe An', N'Lam Dong', 1125.6199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (22, N'Nghe An', N'Lai Chau', 672.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (23, N'Nghe An', N'Kien Giang', 1452.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (24, N'Nghe An', N'Khanh Hoa', 994.760009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (25, N'Nghe An', N'Ho Chi Minh', 1243.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (26, N'Nghe An', N'Ha Tinh', 52.830001831054688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (27, N'Nghe An', N'Ha Giang', 590.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (28, N'Nghe An', N'Gia Lai', 805.41998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (29, N'Nghe An', N'Can Tho', 1405.9300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (30, N'Nghe An', N'Hai Phong', 323.32998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (31, N'Nghe An', N'Binh Thuan', 1235.02001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (32, N'Nghe An', N'Dong Thap', 1391, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (33, N'Nghe An', N'Dong Nai', 1230.5699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (34, N'Nghe An', N'Ba Ria - Vung Tau', 1326.18994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (35, N'Nghe An', N'Cao Bang', 561.69000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (36, N'Nghe An', N'Binh Dinh', 789.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (37, N'Nghe An', N'Ben Tre', 1320.0799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (38, N'Nghe An', N'An Giang', 1401.699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (39, N'Nghe An', N'Bac Giang', 341.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (40, N'Lai Chau', N'Bac Kan', 442.489990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (41, N'Lai Chau', N'Bac Lieu', 2191.610107421875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (42, N'Lai Chau', N'Ca Mau', 2218.659912109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (43, N'Lai Chau', N'Vinh Phuc', 332.97000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (44, N'Kien Giang', N'Khanh Hoa', 635, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (45, N'Kien Giang', N'Ho Chi Minh', 236.36000061035156, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (46, N'Kien Giang', N'Ha Tinh', 1416.1300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (47, N'Kien Giang', N'Ha Giang', 2060.860107421875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (48, N'Kien Giang', N'Gia Lai', 812.6400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (49, N'Kien Giang', N'Can Tho', 100.73999786376953, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (50, N'Kien Giang', N'Hai Phong', 1788.5799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (51, N'Kien Giang', N'Binh Thuan', 400.26998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (52, N'Kien Giang', N'Dong Thap', 96.889999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (53, N'Kien Giang', N'Dong Nai', 258.14999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (54, N'Kien Giang', N'Ba Ria - Vung Tau', 322.67999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (55, N'Kien Giang', N'Cao Bang', 2026.93994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (56, N'Kien Giang', N'Binh Dinh', 840.6500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (57, N'Kien Giang', N'Ben Tre', 195.58999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (58, N'Kien Giang', N'An Giang', 75.760002136230469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (59, N'Kien Giang', N'Bac Giang', 1807.1500244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (60, N'Kien Giang', N'Da Nang', 1159.77001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (61, N'Kien Giang', N'Binh Duong', 240.58000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (62, N'Kien Giang', N'Thai Nguyen', 1834.8599853515625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (63, N'Kien Giang', N'Quang Nam', 1087.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (64, N'Kien Giang', N'Phu Tho', 1836.5899658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (65, N'Kien Giang', N'Nam Dinh', 1696.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (66, N'Kien Giang', N'Bac Kan', 1914.8399658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (67, N'Kien Giang', N'Bac Lieu', 135.19999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (68, N'Kien Giang', N'Ca Mau', 118.73000335693359, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (69, N'Kien Giang', N'Vinh Phuc', 1834.4000244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (70, N'Nghe An', N'Da Nang', 479.97000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (71, N'Nghe An', N'Binh Duong', 1212.1600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (72, N'Nghe An', N'Thai Nguyen', 369.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (73, N'Nghe An', N'Quang Nam', 550.3599853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (74, N'Nghe An', N'Phu Tho', 366.29000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (75, N'Nghe An', N'Nam Dinh', 230.89999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (76, N'Nghe An', N'Bac Kan', 449.60000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (77, N'Nghe An', N'Bac Lieu', 1502.3199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (78, N'Nghe An', N'Ca Mau', 1529.3699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (79, N'Nghe An', N'Vinh Phuc', 364.10000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (80, N'Ninh Binh', N'Soc Trang', 1667.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (81, N'Ninh Binh', N'Tra Vinh', 1579.31005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (82, N'Ninh Binh', N'Tuyen Quang', 220.44000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (83, N'Ninh Binh', N'Vinh Long', 1588.18994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (84, N'Ninh Binh', N'Yen Bai', 246.35000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (85, N'Ninh Binh', N'Lao Cai', 379.54998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (86, N'Ninh Binh', N'Tien Giang', 1531.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (87, N'Ninh Binh', N'Thua Thien Hue', 597.21002197265625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (88, N'Ninh Binh', N'Kon Tum', 962, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (89, N'Ninh Binh', N'Thanh Hoa', 60.930000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (90, N'Ninh Binh', N'Thai Binh', 52.2599983215332, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (91, N'Ninh Binh', N'Tay Ninh', 1405.18994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (92, N'Ninh Binh', N'Son La', 297.8699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (93, N'Ninh Binh', N'Quang Tri', 513.45001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (94, N'Ninh Binh', N'Quang Ngai', 819.80999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (95, N'Ninh Binh', N'Quang Binh', 407.77999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (96, N'Ninh Binh', N'Phu Yen', 1101.43994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (97, N'Ninh Binh', N'Hoa Binh', 125.77999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (98, N'Ninh Binh', N'Lang Son', 238.21000671386719, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (99, N'Ninh Binh', N'Lam Dong', 1330.3199462890625, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (100, N'Ninh Binh', N'Lai Chau', 474.25, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (101, N'Ninh Binh', N'Kien Giang', 1665.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (102, N'Ninh Binh', N'Khanh Hoa', 1199.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (103, N'Ninh Binh', N'Ho Chi Minh', 1455.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (104, N'Ninh Binh', N'Ha Tinh', 257.52999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (105, N'Ninh Binh', N'Ha Giang', 376.92999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (106, N'Ninh Binh', N'Gia Lai', 1010.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (107, N'Ninh Binh', N'Can Tho', 1618.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (108, N'Ninh Binh', N'Hai Phong', 122.05000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (109, N'Ninh Binh', N'Binh Thuan', 1439.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (110, N'Ninh Binh', N'Dong Thap', 1603.780029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (111, N'Ninh Binh', N'Dong Nai', 1443.3599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (112, N'Ninh Binh', N'Ba Ria - Vung Tau', 1538.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (113, N'Ninh Binh', N'Cao Bang', 361.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (114, N'Ninh Binh', N'Binh Dinh', 994.42999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (115, N'Ninh Binh', N'Ben Tre', 1532.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (116, N'Ninh Binh', N'An Giang', 1614.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (117, N'Ninh Binh', N'Bac Giang', 142.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (118, N'Ninh Binh', N'Da Nang', 684.66998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (119, N'Ninh Binh', N'Binh Duong', 1424.949951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (120, N'Ninh Binh', N'Thai Nguyen', 169.83000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (121, N'Ninh Binh', N'Quang Nam', 755.05999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (122, N'Ninh Binh', N'Phu Tho', 153.72000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (123, N'Ninh Binh', N'Nam Dinh', 29.6200008392334, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (124, N'Ninh Binh', N'Bac Kan', 249.80999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (125, N'Ninh Binh', N'Bac Lieu', 1715.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (126, N'Ninh Binh', N'Ca Mau', 1742.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (127, N'Ninh Binh', N'Vinh Phuc', 139.47000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (128, N'Soc Trang', N'Tra Vinh', 56.889999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (129, N'Soc Trang', N'Tuyen Quang', 1903.43994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (130, N'Soc Trang', N'Vinh Long', 96.930000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (131, N'Soc Trang', N'Yen Bai', 1915.260009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (132, N'Soc Trang', N'Lao Cai', 2048.4599609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (133, N'Soc Trang', N'Tien Giang', 165.3800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (134, N'Soc Trang', N'Thua Thien Hue', 1224.9100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (135, N'Soc Trang', N'Kon Tum', 852.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (136, N'Soc Trang', N'Thanh Hoa', 1604.8199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (137, N'Soc Trang', N'Thai Binh', 1718.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (138, N'Soc Trang', N'Tay Ninh', 282.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (139, N'Soc Trang', N'Son La', 1928.050048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (140, N'Soc Trang', N'Quang Tri', 1300.81005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (141, N'Soc Trang', N'Quang Ngai', 1002.5399780273438, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (142, N'Soc Trang', N'Quang Binh', 1403.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (143, N'Soc Trang', N'Phu Yen', 724.8599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (144, N'Soc Trang', N'Hoa Binh', 1782.8299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (145, N'Soc Trang', N'Lang Son', 1903.3699951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (146, N'Soc Trang', N'Lam Dong', 517.280029296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (147, N'Soc Trang', N'Lai Chau', 2143.169921875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (148, N'Soc Trang', N'Kien Giang', 148.14999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (149, N'Soc Trang', N'Khanh Hoa', 618.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (150, N'Soc Trang', N'Ho Chi Minh', 219.61000061035156, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (151, N'Soc Trang', N'Ha Tinh', 1416.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (152, N'Soc Trang', N'Ha Giang', 2060.989990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (153, N'Soc Trang', N'Gia Lai', 853.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (154, N'Soc Trang', N'Can Tho', 75.05999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (155, N'Soc Trang', N'Hai Phong', 1788.7099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (156, N'Soc Trang', N'Binh Thuan', 383.52999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (157, N'Soc Trang', N'Dong Thap', 140.85000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (158, N'Soc Trang', N'Dong Nai', 246.67999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (159, N'Soc Trang', N'Ba Ria - Vung Tau', 305.94000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (160, N'Soc Trang', N'Cao Bang', 2027.0699462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (161, N'Soc Trang', N'Binh Dinh', 823.90997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (162, N'Soc Trang', N'Ben Tre', 102.16999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (163, N'Soc Trang', N'An Giang', 128.10000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (164, N'Soc Trang', N'Bac Giang', 1807.280029296875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (165, N'Soc Trang', N'Da Nang', 1143.02001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (166, N'Soc Trang', N'Binh Duong', 237.66999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (167, N'Soc Trang', N'Thai Nguyen', 1834.989990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (168, N'Soc Trang', N'Quang Nam', 1070.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (169, N'Soc Trang', N'Phu Tho', 1836.719970703125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (170, N'Soc Trang', N'Nam Dinh', 1696.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (171, N'Soc Trang', N'Bac Kan', 1914.969970703125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (172, N'Soc Trang', N'Bac Lieu', 49.349998474121094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (173, N'Soc Trang', N'Ca Mau', 114.12999725341797, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (174, N'Soc Trang', N'Vinh Phuc', 1834.530029296875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (175, N'Tra Vinh', N'Tuyen Quang', 1818.1500244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (176, N'Tra Vinh', N'Vinh Long', 60.479999542236328, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (177, N'Tra Vinh', N'Yen Bai', 1829.969970703125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (178, N'Tra Vinh', N'Lao Cai', 1963.1700439453125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (179, N'Tra Vinh', N'Tien Giang', 67.489997863769531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (180, N'Tra Vinh', N'Thua Thien Hue', 1136.3699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (181, N'Tra Vinh', N'Kon Tum', 767.69000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (182, N'Tra Vinh', N'Thanh Hoa', 1519.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (183, N'Tra Vinh', N'Thai Binh', 1633.6300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (184, N'Tra Vinh', N'Tay Ninh', 197.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (185, N'Tra Vinh', N'Son La', 1842.760009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (186, N'Tra Vinh', N'Quang Tri', 1212.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (187, N'Tra Vinh', N'Quang Ngai', 914.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (188, N'Tra Vinh', N'Quang Binh', 1314.8599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (189, N'Tra Vinh', N'Phu Yen', 636.32000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (190, N'Tra Vinh', N'Hoa Binh', 1697.5400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (191, N'Tra Vinh', N'Lang Son', 1818.0799560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (192, N'Tra Vinh', N'Lam Dong', 428.739990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (193, N'Tra Vinh', N'Lai Chau', 2057.8701171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (194, N'Tra Vinh', N'Kien Giang', 179.39999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (195, N'Tra Vinh', N'Khanh Hoa', 529.719970703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (196, N'Tra Vinh', N'Ho Chi Minh', 131.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (197, N'Tra Vinh', N'Ha Tinh', 1330.9599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (198, N'Tra Vinh', N'Ha Giang', 1975.68994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (199, N'Tra Vinh', N'Gia Lai', 764.5999755859375, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (200, N'Tra Vinh', N'Can Tho', 83.339996337890625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (201, N'Tra Vinh', N'Hai Phong', 1703.4100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (202, N'Tra Vinh', N'Binh Thuan', 295, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (203, N'Tra Vinh', N'Dong Thap', 110.83999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (204, N'Tra Vinh', N'Dong Nai', 161.3800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (205, N'Tra Vinh', N'Ba Ria - Vung Tau', 217.39999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (206, N'Tra Vinh', N'Cao Bang', 1941.77001953125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (207, N'Tra Vinh', N'Binh Dinh', 735.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (208, N'Tra Vinh', N'Ben Tre', 51.7400016784668, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (209, N'Tra Vinh', N'An Giang', 141.38999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (210, N'Tra Vinh', N'Bac Giang', 1721.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (211, N'Tra Vinh', N'Da Nang', 1054.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (212, N'Tra Vinh', N'Binh Duong', 152.3800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (213, N'Tra Vinh', N'Thai Nguyen', 1749.68994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (214, N'Tra Vinh', N'Quang Nam', 982.21002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (215, N'Tra Vinh', N'Phu Tho', 1751.4300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (216, N'Tra Vinh', N'Nam Dinh', 1610.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (217, N'Tra Vinh', N'Bac Kan', 1829.6700439453125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (218, N'Tra Vinh', N'Bac Lieu', 109.56999969482422, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (219, N'Tra Vinh', N'Ca Mau', 206.77000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (220, N'Tra Vinh', N'Vinh Phuc', 1749.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (221, N'Tuyen Quang', N'Vinh Long', 1824.2099609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (222, N'Tuyen Quang', N'Yen Bai', 62.380001068115234, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (223, N'Tuyen Quang', N'Lao Cai', 211.22000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (224, N'Tuyen Quang', N'Tien Giang', 1767.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (225, N'Tuyen Quang', N'Thua Thien Hue', 826.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (226, N'Tuyen Quang', N'Kon Tum', 1191.780029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (227, N'Tuyen Quang', N'Thanh Hoa', 293.51998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (228, N'Tuyen Quang', N'Thai Binh', 243.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (229, N'Tuyen Quang', N'Tay Ninh', 1641.2099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (230, N'Tuyen Quang', N'Son La', 271.20999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (231, N'Tuyen Quang', N'Quang Tri', 743.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (232, N'Tuyen Quang', N'Quang Ngai', 1049.5899658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (233, N'Tuyen Quang', N'Quang Binh', 637.55999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (234, N'Tuyen Quang', N'Phu Yen', 1331.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (235, N'Tuyen Quang', N'Hoa Binh', 123.08000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (236, N'Tuyen Quang', N'Lang Son', 235.63999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (237, N'Tuyen Quang', N'Lam Dong', 1560.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (238, N'Tuyen Quang', N'Lai Chau', 305.92999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (239, N'Tuyen Quang', N'Kien Giang', 1901.030029296875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (240, N'Tuyen Quang', N'Khanh Hoa', 1429.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (241, N'Tuyen Quang', N'Ho Chi Minh', 1691.8199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (242, N'Tuyen Quang', N'Ha Tinh', 487.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (243, N'Tuyen Quang', N'Ha Giang', 157.53999328613281, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (244, N'Tuyen Quang', N'Gia Lai', 1239.9000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (245, N'Tuyen Quang', N'Can Tho', 1854.739990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (246, N'Tuyen Quang', N'Hai Phong', 247.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (247, N'Tuyen Quang', N'Binh Thuan', 1669.5, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (248, N'Tuyen Quang', N'Dong Thap', 1839.800048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (249, N'Tuyen Quang', N'Dong Nai', 1679.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (250, N'Tuyen Quang', N'Ba Ria - Vung Tau', 1775, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (251, N'Tuyen Quang', N'Cao Bang', 263.29998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (252, N'Tuyen Quang', N'Binh Dinh', 1224.2099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (253, N'Tuyen Quang', N'Ben Tre', 1768.8900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (254, N'Tuyen Quang', N'An Giang', 1850.510009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (255, N'Tuyen Quang', N'Bac Giang', 148.10000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (256, N'Tuyen Quang', N'Da Nang', 914.45001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (257, N'Tuyen Quang', N'Binh Duong', 1660.9599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (258, N'Tuyen Quang', N'Thai Nguyen', 84.550003051757812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (259, N'Tuyen Quang', N'Quang Nam', 984.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (260, N'Tuyen Quang', N'Phu Tho', 67.540000915527344, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (261, N'Tuyen Quang', N'Nam Dinh', 225.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (262, N'Tuyen Quang', N'Bac Kan', 149.75999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (263, N'Tuyen Quang', N'Bac Lieu', 1951.1199951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (264, N'Tuyen Quang', N'Ca Mau', 1978.1700439453125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (265, N'Tuyen Quang', N'Vinh Phuc', 83.5999984741211, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (266, N'Vinh Long', N'Yen Bai', 1825.4599609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (267, N'Vinh Long', N'Lao Cai', 1958.6600341796875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (268, N'Vinh Long', N'Tien Giang', 74.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (269, N'Vinh Long', N'Thua Thien Hue', 1135.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (270, N'Vinh Long', N'Kon Tum', 763.17999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (271, N'Vinh Long', N'Thanh Hoa', 1515.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (272, N'Vinh Long', N'Thai Binh', 1629.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (273, N'Vinh Long', N'Tay Ninh', 184.57000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (274, N'Vinh Long', N'Son La', 1838.25, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (275, N'Vinh Long', N'Quang Tri', 1211, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (276, N'Vinh Long', N'Quang Ngai', 912.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (277, N'Vinh Long', N'Quang Binh', 1313.5899658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (278, N'Vinh Long', N'Phu Yen', 635.04998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (279, N'Vinh Long', N'Hoa Binh', 1693.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (280, N'Vinh Long', N'Lang Son', 1813.5699462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (281, N'Vinh Long', N'Lam Dong', 427.47000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (282, N'Vinh Long', N'Lai Chau', 2053.360107421875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (283, N'Vinh Long', N'Kien Giang', 131.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (284, N'Vinh Long', N'Khanh Hoa', 528.45001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (285, N'Vinh Long', N'Ho Chi Minh', 129.80999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (286, N'Vinh Long', N'Ha Tinh', 1326.449951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (287, N'Vinh Long', N'Ha Giang', 1971.18994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (288, N'Vinh Long', N'Gia Lai', 763.33001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (289, N'Vinh Long', N'Can Tho', 47.9900016784668, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (290, N'Vinh Long', N'Hai Phong', 1698.9000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (291, N'Vinh Long', N'Binh Thuan', 293.72000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (292, N'Vinh Long', N'Dong Thap', 50.040000915527344, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (293, N'Vinh Long', N'Dong Nai', 156.8699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (294, N'Vinh Long', N'Ba Ria - Vung Tau', 216.1300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (295, N'Vinh Long', N'Cao Bang', 1937.260009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (296, N'Vinh Long', N'Binh Dinh', 734.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (297, N'Vinh Long', N'Ben Tre', 61.950000762939453, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (298, N'Vinh Long', N'An Giang', 80.589996337890625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (299, N'Vinh Long', N'Bac Giang', 1717.47998046875, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (300, N'Vinh Long', N'Da Nang', 1053.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (301, N'Vinh Long', N'Binh Duong', 147.8699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (302, N'Vinh Long', N'Thai Nguyen', 1745.1800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (303, N'Vinh Long', N'Quang Nam', 980.94000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (304, N'Vinh Long', N'Phu Tho', 1746.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (305, N'Vinh Long', N'Nam Dinh', 1606.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (306, N'Vinh Long', N'Bac Kan', 1825.1600341796875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (307, N'Vinh Long', N'Bac Lieu', 144.3699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (308, N'Vinh Long', N'Ca Mau', 171.41999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (309, N'Vinh Long', N'Vinh Phuc', 1744.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (310, N'Yen Bai', N'Lao Cai', 152.97000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (311, N'Yen Bai', N'Tien Giang', 1782.4100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (312, N'Yen Bai', N'Thua Thien Hue', 842.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (313, N'Yen Bai', N'Kon Tum', 1206.9300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (314, N'Yen Bai', N'Thanh Hoa', 306.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (315, N'Yen Bai', N'Thai Binh', 256.17999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (316, N'Yen Bai', N'Tay Ninh', 1656.3599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (317, N'Yen Bai', N'Son La', 217.33999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (318, N'Yen Bai', N'Quang Tri', 758.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (319, N'Yen Bai', N'Quang Ngai', 1064.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (320, N'Yen Bai', N'Quang Binh', 652.71002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (321, N'Yen Bai', N'Phu Yen', 1346.3699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (322, N'Yen Bai', N'Hoa Binh', 138.22999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (323, N'Yen Bai', N'Lang Son', 282.26998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (324, N'Yen Bai', N'Lam Dong', 1575.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (325, N'Yen Bai', N'Lai Chau', 247.67999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (326, N'Yen Bai', N'Kien Giang', 1916.1800537109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (327, N'Yen Bai', N'Khanh Hoa', 1444.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (328, N'Yen Bai', N'Ho Chi Minh', 1706.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (329, N'Yen Bai', N'Ha Tinh', 502.45999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (330, N'Yen Bai', N'Ha Giang', 211.64999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (331, N'Yen Bai', N'Gia Lai', 1255.050048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (332, N'Yen Bai', N'Can Tho', 1869.8900146484375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (333, N'Yen Bai', N'Hai Phong', 260.510009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (334, N'Yen Bai', N'Binh Thuan', 1684.6500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (335, N'Yen Bai', N'Dong Thap', 1854.949951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (336, N'Yen Bai', N'Dong Nai', 1694.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (337, N'Yen Bai', N'Ba Ria - Vung Tau', 1790.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (338, N'Yen Bai', N'Cao Bang', 312.95001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (339, N'Yen Bai', N'Binh Dinh', 1239.3599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (340, N'Yen Bai', N'Ben Tre', 1784.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (341, N'Yen Bai', N'An Giang', 1865.6600341796875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (342, N'Yen Bai', N'Bac Giang', 186.17999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (343, N'Yen Bai', N'Da Nang', 929.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (344, N'Yen Bai', N'Binh Duong', 1676.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (345, N'Yen Bai', N'Thai Nguyen', 134.19999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (346, N'Yen Bai', N'Quang Nam', 999.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (347, N'Yen Bai', N'Phu Tho', 83.470001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (348, N'Yen Bai', N'Nam Dinh', 238.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (349, N'Yen Bai', N'Bac Kan', 199.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (350, N'Yen Bai', N'Bac Lieu', 1966.27001953125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (351, N'Yen Bai', N'Ca Mau', 1993.3199462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (352, N'Yen Bai', N'Vinh Phuc', 107.63999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (353, N'Lao Cai', N'Tien Giang', 1912.8800048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (354, N'Lao Cai', N'Thua Thien Hue', 972.6199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (355, N'Lao Cai', N'Kon Tum', 1337.4100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (356, N'Lao Cai', N'Thanh Hoa', 437.10000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (357, N'Lao Cai', N'Thai Binh', 386.64999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (358, N'Lao Cai', N'Tay Ninh', 1786.8299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (359, N'Lao Cai', N'Son La', 247.32000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (360, N'Lao Cai', N'Quang Tri', 888.8599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (361, N'Lao Cai', N'Quang Ngai', 1195.2099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (362, N'Lao Cai', N'Quang Binh', 783.19000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (363, N'Lao Cai', N'Phu Yen', 1476.8499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (364, N'Lao Cai', N'Hoa Binh', 268.70001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (365, N'Lao Cai', N'Lang Son', 421.97000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (366, N'Lao Cai', N'Lam Dong', 1705.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (367, N'Lao Cai', N'Lai Chau', 97.470001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (368, N'Lao Cai', N'Kien Giang', 2046.6500244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (369, N'Lao Cai', N'Khanh Hoa', 1574.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (370, N'Lao Cai', N'Ho Chi Minh', 1837.449951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (371, N'Lao Cai', N'Ha Tinh', 632.94000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (372, N'Lao Cai', N'Ha Giang', 192.27999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (373, N'Lao Cai', N'Gia Lai', 1385.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (374, N'Lao Cai', N'Can Tho', 2000.3699951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (375, N'Lao Cai', N'Hai Phong', 390.989990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (376, N'Lao Cai', N'Binh Thuan', 1815.1300048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (377, N'Lao Cai', N'Dong Thap', 1985.4300537109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (378, N'Lao Cai', N'Dong Nai', 1825.010009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (379, N'Lao Cai', N'Ba Ria - Vung Tau', 1920.6300048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (380, N'Lao Cai', N'Cao Bang', 437.29000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (381, N'Lao Cai', N'Binh Dinh', 1369.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (382, N'Lao Cai', N'Ben Tre', 1914.52001953125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (383, N'Lao Cai', N'An Giang', 1996.1300048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (384, N'Lao Cai', N'Bac Giang', 316.64999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (385, N'Lao Cai', N'Da Nang', 1060.0799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (386, N'Lao Cai', N'Binh Duong', 1806.5899658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (387, N'Lao Cai', N'Thai Nguyen', 282.42001342773438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (388, N'Lao Cai', N'Quang Nam', 1130.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (389, N'Lao Cai', N'Phu Tho', 213.94000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (390, N'Lao Cai', N'Nam Dinh', 368.8900146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (391, N'Lao Cai', N'Bac Kan', 347.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (392, N'Lao Cai', N'Bac Lieu', 2096.75, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (393, N'Lao Cai', N'Ca Mau', 2123.800048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (394, N'Lao Cai', N'Vinh Phuc', 238.11000061035156, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (395, N'Tien Giang', N'Thua Thien Hue', 1076.43994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (396, N'Tien Giang', N'Kon Tum', 718.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (397, N'Tien Giang', N'Thanh Hoa', 1470.5799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (398, N'Tien Giang', N'Thai Binh', 1584.68994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (399, N'Tien Giang', N'Tay Ninh', 137.80999755859375, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (400, N'Tien Giang', N'Son La', 1793.8199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (401, N'Tien Giang', N'Quang Tri', 1152.3499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (402, N'Tien Giang', N'Quang Ngai', 854.08001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (403, N'Tien Giang', N'Quang Binh', 1254.9300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (404, N'Tien Giang', N'Phu Yen', 576.4000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (405, N'Tien Giang', N'Hoa Binh', 1648.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (406, N'Tien Giang', N'Lang Son', 1769.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (407, N'Tien Giang', N'Lam Dong', 368.82000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (408, N'Tien Giang', N'Lai Chau', 2008.9300537109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (409, N'Tien Giang', N'Kien Giang', 183.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (410, N'Tien Giang', N'Khanh Hoa', 469.79000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (411, N'Tien Giang', N'Ho Chi Minh', 71.7699966430664, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (412, N'Tien Giang', N'Ha Tinh', 1282.02001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (413, N'Tien Giang', N'Ha Giang', 1926.75, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (414, N'Tien Giang', N'Gia Lai', 704.67999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (415, N'Tien Giang', N'Can Tho', 116.19000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (416, N'Tien Giang', N'Hai Phong', 1654.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (417, N'Tien Giang', N'Binh Thuan', 235.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (418, N'Tien Giang', N'Dong Thap', 95.669998168945312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (419, N'Tien Giang', N'Dong Nai', 102.06999969482422, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (420, N'Tien Giang', N'Ba Ria - Vung Tau', 158.08999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (421, N'Tien Giang', N'Cao Bang', 1892.8299560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (422, N'Tien Giang', N'Binh Dinh', 675.45001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (423, N'Tien Giang', N'Ben Tre', 23.5, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (424, N'Tien Giang', N'An Giang', 132.55000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (425, N'Tien Giang', N'Bac Giang', 1673.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (426, N'Tien Giang', N'Da Nang', 994.55999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (427, N'Tien Giang', N'Binh Duong', 93.069999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (428, N'Tien Giang', N'Thai Nguyen', 1700.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (429, N'Tien Giang', N'Quang Nam', 922.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (430, N'Tien Giang', N'Phu Tho', 1702.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (431, N'Tien Giang', N'Nam Dinh', 1562.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (432, N'Tien Giang', N'Bac Kan', 1780.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (433, N'Tien Giang', N'Bac Lieu', 212.57000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (434, N'Tien Giang', N'Ca Mau', 239.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (435, N'Tien Giang', N'Vinh Phuc', 1700.2900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (436, N'Thua Thien Hue', N'Kon Tum', 376.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (437, N'Thua Thien Hue', N'Thanh Hoa', 536.02001953125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (438, N'Thua Thien Hue', N'Thai Binh', 650.1300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (439, N'Thua Thien Hue', N'Tay Ninh', 904.59002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (440, N'Thua Thien Hue', N'Son La', 854.20001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (441, N'Thua Thien Hue', N'Quang Tri', 70.0999984741211, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (442, N'Thua Thien Hue', N'Quang Ngai', 233.91999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (443, N'Thua Thien Hue', N'Quang Binh', 166.10000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (444, N'Thua Thien Hue', N'Phu Yen', 515.54998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (445, N'Thua Thien Hue', N'Hoa Binh', 708.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (446, N'Thua Thien Hue', N'Lang Son', 834.58001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (447, N'Thua Thien Hue', N'Lam Dong', 744.44000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (448, N'Thua Thien Hue', N'Lai Chau', 1069.3199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (449, N'Thua Thien Hue', N'Kien Giang', 1144.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (450, N'Thua Thien Hue', N'Khanh Hoa', 613.58001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (451, N'Thua Thien Hue', N'Ho Chi Minh', 933.70001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (452, N'Thua Thien Hue', N'Ha Tinh', 338.3599853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (453, N'Thua Thien Hue', N'Ha Giang', 987.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (454, N'Thua Thien Hue', N'Gia Lai', 424.239990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (455, N'Thua Thien Hue', N'Can Tho', 1098.3399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (456, N'Thua Thien Hue', N'Hai Phong', 719.90997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (457, N'Thua Thien Hue', N'Binh Thuan', 853.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (458, N'Thua Thien Hue', N'Dong Thap', 1056.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (459, N'Thua Thien Hue', N'Dong Nai', 916.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (460, N'Thua Thien Hue', N'Ba Ria - Vung Tau', 1015.4500122070313, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (461, N'Thua Thien Hue', N'Cao Bang', 958.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (462, N'Thua Thien Hue', N'Binh Dinh', 408.54998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (463, N'Thua Thien Hue', N'Ben Tre', 1011.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (464, N'Thua Thien Hue', N'An Giang', 1093.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (465, N'Thua Thien Hue', N'Bac Giang', 738.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (466, N'Thua Thien Hue', N'Da Nang', 96.199996948242188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (467, N'Thua Thien Hue', N'Binh Duong', 920.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (468, N'Thua Thien Hue', N'Thai Nguyen', 766.19000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (469, N'Thua Thien Hue', N'Quang Nam', 169.16999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (470, N'Thua Thien Hue', N'Phu Tho', 762.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (471, N'Thua Thien Hue', N'Nam Dinh', 627.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (472, N'Thua Thien Hue', N'Bac Kan', 846.16998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (473, N'Thua Thien Hue', N'Bac Lieu', 1194.2099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (474, N'Thua Thien Hue', N'Ca Mau', 1221.260009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (475, N'Thua Thien Hue', N'Vinh Phuc', 760.67999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (476, N'Kon Tum', N'Thanh Hoa', 901.5, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (477, N'Kon Tum', N'Thai Binh', 1015.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (478, N'Kon Tum', N'Tay Ninh', 594.41998291015625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (479, N'Kon Tum', N'Son La', 1219.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (480, N'Kon Tum', N'Quang Tri', 451.54000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (481, N'Kon Tum', N'Quang Ngai', 203.94999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (482, N'Kon Tum', N'Quang Binh', 554.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (483, N'Kon Tum', N'Phu Yen', 258.77999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (484, N'Kon Tum', N'Hoa Binh', 1074.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (485, N'Kon Tum', N'Lang Son', 1200.06005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (486, N'Kon Tum', N'Lam Dong', 430.29000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (487, N'Kon Tum', N'Lai Chau', 1434.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (488, N'Kon Tum', N'Kien Giang', 789.82000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (489, N'Kon Tum', N'Khanh Hoa', 345.08999633789062, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (490, N'Kon Tum', N'Ho Chi Minh', 579.4000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (491, N'Kon Tum', N'Ha Tinh', 703.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (492, N'Kon Tum', N'Ha Giang', 1352.6199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (493, N'Kon Tum', N'Gia Lai', 48.220001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (494, N'Kon Tum', N'Can Tho', 755.5, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (495, N'Kon Tum', N'Hai Phong', 1085.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (496, N'Kon Tum', N'Binh Thuan', 545.28997802734375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (497, N'Kon Tum', N'Dong Thap', 702.41998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (498, N'Kon Tum', N'Dong Nai', 561.79998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (499, N'Kon Tum', N'Ba Ria - Vung Tau', 649.15997314453125, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (500, N'Kon Tum', N'Cao Bang', 1323.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (501, N'Kon Tum', N'Binh Dinh', 193.72999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (502, N'Kon Tum', N'Ben Tre', 657.66998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (503, N'Kon Tum', N'An Giang', 739.28997802734375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (504, N'Kon Tum', N'Bac Giang', 1103.9599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (505, N'Kon Tum', N'Da Nang', 293.760009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (506, N'Kon Tum', N'Binh Duong', 566.53997802734375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (507, N'Kon Tum', N'Thai Nguyen', 1131.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (508, N'Kon Tum', N'Quang Nam', 257.67999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (509, N'Kon Tum', N'Phu Tho', 1128.3499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (510, N'Kon Tum', N'Nam Dinh', 992.96002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (511, N'Kon Tum', N'Bac Kan', 1211.6500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (512, N'Kon Tum', N'Bac Lieu', 839.90997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (513, N'Kon Tum', N'Ca Mau', 866.96002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (514, N'Kon Tum', N'Vinh Phuc', 1126.1600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (515, N'Thanh Hoa', N'Thai Binh', 114.93000030517578, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (516, N'Thanh Hoa', N'Tay Ninh', 1341.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (517, N'Thanh Hoa', N'Son La', 336.17999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (518, N'Thanh Hoa', N'Quang Tri', 450.10000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (519, N'Thanh Hoa', N'Quang Ngai', 756.45001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (520, N'Thanh Hoa', N'Quang Binh', 344.42999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (521, N'Thanh Hoa', N'Phu Yen', 1038.0899658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (522, N'Thanh Hoa', N'Hoa Binh', 174.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (523, N'Thanh Hoa', N'Lang Son', 299.3800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (524, N'Thanh Hoa', N'Lam Dong', 1266.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (525, N'Thanh Hoa', N'Lai Chau', 528.489990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (526, N'Thanh Hoa', N'Kien Giang', 1601.6600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (527, N'Thanh Hoa', N'Khanh Hoa', 1136.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (528, N'Thanh Hoa', N'Ho Chi Minh', 1392.449951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (529, N'Thanh Hoa', N'Ha Tinh', 194.17999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (530, N'Thanh Hoa', N'Ha Giang', 446.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (531, N'Thanh Hoa', N'Gia Lai', 946.77001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (532, N'Thanh Hoa', N'Can Tho', 1555.3699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (533, N'Thanh Hoa', N'Hai Phong', 184.71000671386719, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (534, N'Thanh Hoa', N'Binh Thuan', 1376.3699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (535, N'Thanh Hoa', N'Dong Thap', 1540.4300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (536, N'Thanh Hoa', N'Dong Nai', 1380.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (537, N'Thanh Hoa', N'Ba Ria - Vung Tau', 1475.6300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (538, N'Thanh Hoa', N'Cao Bang', 423.07998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (539, N'Thanh Hoa', N'Binh Dinh', 931.08001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (540, N'Thanh Hoa', N'Ben Tre', 1469.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (541, N'Thanh Hoa', N'An Giang', 1551.1300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (542, N'Thanh Hoa', N'Bac Giang', 203.28999328613281, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (543, N'Thanh Hoa', N'Da Nang', 621.32000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (544, N'Thanh Hoa', N'Binh Duong', 1361.5899658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (545, N'Thanh Hoa', N'Thai Nguyen', 231, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (546, N'Thanh Hoa', N'Quang Nam', 691.71002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (547, N'Thanh Hoa', N'Phu Tho', 222.03999328613281, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (548, N'Thanh Hoa', N'Nam Dinh', 92.279998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (549, N'Thanh Hoa', N'Bac Kan', 310.98001098632812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (550, N'Thanh Hoa', N'Bac Lieu', 1651.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (551, N'Thanh Hoa', N'Ca Mau', 1678.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (552, N'Thanh Hoa', N'Vinh Phuc', 200.63999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (553, N'Thai Binh', N'Tay Ninh', 1458.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (554, N'Thai Binh', N'Son La', 361.98001098632812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (555, N'Thai Binh', N'Quang Tri', 567.239990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (556, N'Thai Binh', N'Quang Ngai', 873.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (557, N'Thai Binh', N'Quang Binh', 461.57000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (558, N'Thai Binh', N'Phu Yen', 1155.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (559, N'Thai Binh', N'Hoa Binh', 144.50999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (560, N'Thai Binh', N'Lang Son', 233.78999328613281, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (561, N'Thai Binh', N'Lam Dong', 1384.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (562, N'Thai Binh', N'Lai Chau', 492.79000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (563, N'Thai Binh', N'Kien Giang', 1718.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (564, N'Thai Binh', N'Khanh Hoa', 1253.260009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (565, N'Thai Binh', N'Ho Chi Minh', 1509.5899658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (566, N'Thai Binh', N'Ha Tinh', 311.32000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (567, N'Thai Binh', N'Ha Giang', 403.98001098632812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (568, N'Thai Binh', N'Gia Lai', 1063.9100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (569, N'Thai Binh', N'Can Tho', 1672.510009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (570, N'Thai Binh', N'Hai Phong', 71.2300033569336, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (571, N'Thai Binh', N'Binh Thuan', 1493.510009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (572, N'Thai Binh', N'Dong Thap', 1657.5799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (573, N'Thai Binh', N'Dong Nai', 1497.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (574, N'Thai Binh', N'Ba Ria - Vung Tau', 1592.77001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (575, N'Thai Binh', N'Cao Bang', 361.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (576, N'Thai Binh', N'Binh Dinh', 1048.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (577, N'Thai Binh', N'Ben Tre', 1586.6600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (578, N'Thai Binh', N'An Giang', 1668.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (579, N'Thai Binh', N'Bac Giang', 137.69999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (580, N'Thai Binh', N'Da Nang', 738.46002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (581, N'Thai Binh', N'Binh Duong', 1478.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (582, N'Thai Binh', N'Thai Nguyen', 169.55000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (583, N'Thai Binh', N'Quang Nam', 808.8499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (584, N'Thai Binh', N'Phu Tho', 173.16999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (585, N'Thai Binh', N'Nam Dinh', 23.549999237060547, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (586, N'Thai Binh', N'Bac Kan', 249.52999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (587, N'Thai Binh', N'Bac Lieu', 1768.8900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (588, N'Thai Binh', N'Ca Mau', 1795.93994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (589, N'Thai Binh', N'Vinh Phuc', 149.57000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (590, N'Tay Ninh', N'Son La', 1668.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (591, N'Tay Ninh', N'Quang Tri', 1037.1700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (592, N'Tay Ninh', N'Quang Ngai', 828.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (593, N'Tay Ninh', N'Quang Binh', 1139.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (594, N'Tay Ninh', N'Phu Yen', 603.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (595, N'Tay Ninh', N'Hoa Binh', 1523.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (596, N'Tay Ninh', N'Lang Son', 1643.7900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (597, N'Tay Ninh', N'Lam Dong', 396.29000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (598, N'Tay Ninh', N'Lai Chau', 1883.5799560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (599, N'Tay Ninh', N'Kien Giang', 261.95001220703125, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (600, N'Tay Ninh', N'Khanh Hoa', 497.26998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (601, N'Tay Ninh', N'Ho Chi Minh', 97.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (602, N'Tay Ninh', N'Ha Tinh', 1156.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (603, N'Tay Ninh', N'Ha Giang', 1801.4100341796875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (604, N'Tay Ninh', N'Gia Lai', 584.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (605, N'Tay Ninh', N'Can Tho', 234.27999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (606, N'Tay Ninh', N'Hai Phong', 1529.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (607, N'Tay Ninh', N'Binh Thuan', 262.54000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (608, N'Tay Ninh', N'Dong Thap', 174.55000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (609, N'Tay Ninh', N'Dong Nai', 106.86000061035156, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (610, N'Tay Ninh', N'Ba Ria - Vung Tau', 184.94999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (611, N'Tay Ninh', N'Cao Bang', 1767.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (612, N'Tay Ninh', N'Binh Dinh', 702.92999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (613, N'Tay Ninh', N'Ben Tre', 151.69999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (614, N'Tay Ninh', N'An Giang', 211.42999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (615, N'Tay Ninh', N'Bac Giang', 1547.699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (616, N'Tay Ninh', N'Da Nang', 879.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (617, N'Tay Ninh', N'Binh Duong', 83.930000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (618, N'Tay Ninh', N'Thai Nguyen', 1575.4000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (619, N'Tay Ninh', N'Quang Nam', 862.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (620, N'Tay Ninh', N'Phu Tho', 1577.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (621, N'Tay Ninh', N'Nam Dinh', 1436.68994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (622, N'Tay Ninh', N'Bac Kan', 1655.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (623, N'Tay Ninh', N'Bac Lieu', 330.16000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (624, N'Tay Ninh', N'Ca Mau', 357.20999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (625, N'Tay Ninh', N'Vinh Phuc', 1574.949951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (626, N'Son La', N'Quang Tri', 770.04998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (627, N'Son La', N'Quang Ngai', 1076.4100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (628, N'Son La', N'Quang Binh', 664.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (629, N'Son La', N'Phu Yen', 1358.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (630, N'Son La', N'Hoa Binh', 241.10000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (631, N'Son La', N'Lang Son', 447.51998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (632, N'Son La', N'Lam Dong', 1586.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (633, N'Son La', N'Lai Chau', 282.1099853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (634, N'Son La', N'Kien Giang', 1927.8499755859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (635, N'Son La', N'Khanh Hoa', 1456.0699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (636, N'Son La', N'Ho Chi Minh', 1718.6400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (637, N'Son La', N'Ha Tinh', 514.1300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (638, N'Son La', N'Ha Giang', 428.47000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (639, N'Son La', N'Gia Lai', 1266.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (640, N'Son La', N'Can Tho', 1881.56005859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (641, N'Son La', N'Hai Phong', 392.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (642, N'Son La', N'Binh Thuan', 1696.3199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (643, N'Son La', N'Dong Thap', 1866.6300048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (644, N'Son La', N'Dong Nai', 1706.199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (645, N'Son La', N'Ba Ria - Vung Tau', 1801.8199462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (646, N'Son La', N'Cao Bang', 540.04998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (647, N'Son La', N'Binh Dinh', 1251.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (648, N'Son La', N'Ben Tre', 1795.7099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (649, N'Son La', N'An Giang', 1877.3299560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (650, N'Son La', N'Bac Giang', 351.42999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (651, N'Son La', N'Da Nang', 941.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (652, N'Son La', N'Binh Duong', 1687.7900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (653, N'Son La', N'Thai Nguyen', 342.70999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (654, N'Son La', N'Quang Nam', 1011.6599731445313, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (655, N'Son La', N'Phu Tho', 230.27000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (656, N'Son La', N'Nam Dinh', 339.22000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (657, N'Son La', N'Bac Kan', 407.92001342773438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (658, N'Son La', N'Bac Lieu', 1977.93994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (659, N'Son La', N'Ca Mau', 2004.989990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (660, N'Son La', N'Vinh Phuc', 253.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (661, N'Quang Tri', N'Quang Ngai', 309.33999633789062, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (662, N'Quang Tri', N'Quang Binh', 96.209999084472656, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (663, N'Quang Tri', N'Phu Yen', 590.969970703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (664, N'Quang Tri', N'Hoa Binh', 616.34002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (665, N'Quang Tri', N'Lang Son', 741.92999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (666, N'Quang Tri', N'Lam Dong', 819.8499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (667, N'Quang Tri', N'Lai Chau', 976.66998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (668, N'Quang Tri', N'Kien Giang', 1166.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (669, N'Quang Tri', N'Khanh Hoa', 688.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (670, N'Quang Tri', N'Ho Chi Minh', 957.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (671, N'Quang Tri', N'Ha Tinh', 245.72000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (672, N'Quang Tri', N'Ha Giang', 894.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (673, N'Quang Tri', N'Gia Lai', 499.66000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (674, N'Quang Tri', N'Can Tho', 1120.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (675, N'Quang Tri', N'Hai Phong', 627.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (676, N'Quang Tri', N'Binh Thuan', 929.25, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (677, N'Quang Tri', N'Dong Thap', 1105.02001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (678, N'Quang Tri', N'Dong Nai', 991.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (679, N'Quang Tri', N'Ba Ria - Vung Tau', 1090.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (680, N'Quang Tri', N'Cao Bang', 865.6300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (681, N'Quang Tri', N'Binh Dinh', 483.97000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (682, N'Quang Tri', N'Ben Tre', 1034.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (683, N'Quang Tri', N'An Giang', 1115.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (684, N'Quang Tri', N'Bac Giang', 645.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (685, N'Quang Tri', N'Da Nang', 171.41999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (686, N'Quang Tri', N'Binh Duong', 926.17999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (687, N'Quang Tri', N'Thai Nguyen', 673.54998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (688, N'Quang Tri', N'Quang Nam', 244.58999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (689, N'Quang Tri', N'Phu Tho', 670.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (690, N'Quang Tri', N'Nam Dinh', 534.84002685546875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (691, N'Quang Tri', N'Bac Kan', 753.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (692, N'Quang Tri', N'Bac Lieu', 1216.3299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (693, N'Quang Tri', N'Ca Mau', 1243.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (694, N'Quang Tri', N'Vinh Phuc', 668.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (695, N'Quang Ngai', N'Quang Binh', 411.8900146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (696, N'Quang Ngai', N'Phu Yen', 292.57000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (697, N'Quang Ngai', N'Hoa Binh', 932.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (698, N'Quang Ngai', N'Lang Son', 1057.8199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (699, N'Quang Ngai', N'Lam Dong', 522.03997802734375, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (700, N'Quang Ngai', N'Lai Chau', 1292.56005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (701, N'Quang Ngai', N'Kien Giang', 993.32000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (702, N'Quang Ngai', N'Khanh Hoa', 391.17999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (703, N'Quang Ngai', N'Ho Chi Minh', 786.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (704, N'Quang Ngai', N'Ha Tinh', 561.5999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (705, N'Quang Ngai', N'Ha Giang', 1210.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (706, N'Quang Ngai', N'Gia Lai', 251.72000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (707, N'Quang Ngai', N'Can Tho', 953.79998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (708, N'Quang Ngai', N'Hai Phong', 943.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (709, N'Quang Ngai', N'Binh Thuan', 631.44000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (710, N'Quang Ngai', N'Dong Thap', 905.91998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (711, N'Quang Ngai', N'Dong Nai', 765.30999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (712, N'Quang Ngai', N'Ba Ria - Vung Tau', 793.04998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (713, N'Quang Ngai', N'Cao Bang', 1181.510009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (714, N'Quang Ngai', N'Binh Dinh', 185.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (715, N'Quang Ngai', N'Ben Tre', 867.46002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (716, N'Quang Ngai', N'An Giang', 942.79998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (717, N'Quang Ngai', N'Bac Giang', 961.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (718, N'Quang Ngai', N'Da Nang', 151.52000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (719, N'Quang Ngai', N'Binh Duong', 770.03997802734375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (720, N'Quang Ngai', N'Thai Nguyen', 989.42999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (721, N'Quang Ngai', N'Quang Nam', 79.2300033569336, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (722, N'Quang Ngai', N'Phu Tho', 986.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (723, N'Quang Ngai', N'Nam Dinh', 850.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (724, N'Quang Ngai', N'Bac Kan', 1069.4200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (725, N'Quang Ngai', N'Bac Lieu', 1049.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (726, N'Quang Ngai', N'Ca Mau', 1076.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (727, N'Quang Ngai', N'Vinh Phuc', 983.91998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (728, N'Quang Binh', N'Phu Yen', 693.28997802734375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (729, N'Quang Binh', N'Hoa Binh', 520.1300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (730, N'Quang Binh', N'Lang Son', 645.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (731, N'Quang Binh', N'Lam Dong', 922.16998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (732, N'Quang Binh', N'Lai Chau', 880.46002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (733, N'Quang Binh', N'Kien Giang', 1251.0699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (734, N'Quang Binh', N'Khanh Hoa', 791.30999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (735, N'Quang Binh', N'Ho Chi Minh', 1041.8599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (736, N'Quang Binh', N'Ha Tinh', 149.50999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (737, N'Quang Binh', N'Ha Giang', 798.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (738, N'Quang Binh', N'Gia Lai', 601.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (739, N'Quang Binh', N'Can Tho', 1204.780029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (740, N'Quang Binh', N'Hai Phong', 531.04998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (741, N'Quang Binh', N'Binh Thuan', 1031.5699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (742, N'Quang Binh', N'Dong Thap', 1189.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (743, N'Quang Binh', N'Dong Nai', 1029.4200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (744, N'Quang Binh', N'Ba Ria - Vung Tau', 1193.1800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (745, N'Quang Binh', N'Cao Bang', 769.41998291015625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (746, N'Quang Binh', N'Binh Dinh', 586.280029296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (747, N'Quang Binh', N'Ben Tre', 1118.9300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (748, N'Quang Binh', N'An Giang', 1200.550048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (749, N'Quang Binh', N'Bac Giang', 549.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (750, N'Quang Binh', N'Da Nang', 275.69000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (751, N'Quang Binh', N'Binh Duong', 1011, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (752, N'Quang Binh', N'Thai Nguyen', 577.34002685546875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (753, N'Quang Binh', N'Quang Nam', 346.89999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (754, N'Quang Binh', N'Phu Tho', 574.02001953125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (755, N'Quang Binh', N'Nam Dinh', 438.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (756, N'Quang Binh', N'Bac Kan', 657.32000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (757, N'Quang Binh', N'Bac Lieu', 1301.1600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (758, N'Quang Binh', N'Ca Mau', 1328.2099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (759, N'Quang Binh', N'Vinh Phuc', 571.82000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (760, N'Phu Yen', N'Hoa Binh', 1213.550048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (761, N'Phu Yen', N'Lang Son', 1339.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (762, N'Phu Yen', N'Lam Dong', 244.24000549316406, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (763, N'Phu Yen', N'Lai Chau', 1573.8800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (764, N'Phu Yen', N'Kien Giang', 740.71002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (765, N'Phu Yen', N'Khanh Hoa', 113.37999725341797, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (766, N'Phu Yen', N'Ho Chi Minh', 509.52999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (767, N'Phu Yen', N'Ha Tinh', 842.92999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (768, N'Phu Yen', N'Ha Giang', 1491.7099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (769, N'Phu Yen', N'Gia Lai', 211.85000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (770, N'Phu Yen', N'Can Tho', 676.58001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (771, N'Phu Yen', N'Hai Phong', 1224.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (772, N'Phu Yen', N'Binh Thuan', 353.6400146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (773, N'Phu Yen', N'Dong Thap', 653.32000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (774, N'Phu Yen', N'Dong Nai', 510.3900146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (775, N'Phu Yen', N'Ba Ria - Vung Tau', 515.25, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (776, N'Phu Yen', N'Cao Bang', 1462.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (777, N'Phu Yen', N'Binh Dinh', 113.73000335693359, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (778, N'Phu Yen', N'Ben Tre', 590.239990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (779, N'Phu Yen', N'An Giang', 690.19000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (780, N'Phu Yen', N'Bac Giang', 1243.050048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (781, N'Phu Yen', N'Da Nang', 432.83999633789062, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (782, N'Phu Yen', N'Binh Duong', 534.84002685546875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (783, N'Phu Yen', N'Thai Nguyen', 1270.760009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (784, N'Phu Yen', N'Quang Nam', 360.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (785, N'Phu Yen', N'Phu Tho', 1267.43994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (786, N'Phu Yen', N'Nam Dinh', 1132.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (787, N'Phu Yen', N'Bac Kan', 1350.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (788, N'Phu Yen', N'Bac Lieu', 772.46002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (789, N'Phu Yen', N'Ca Mau', 799.510009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (790, N'Phu Yen', N'Vinh Phuc', 1265.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (791, N'Hoa Binh', N'Lang Son', 212.52999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (792, N'Hoa Binh', N'Lam Dong', 1441.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (793, N'Hoa Binh', N'Lai Chau', 362.72000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (794, N'Hoa Binh', N'Kien Giang', 1782.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (795, N'Hoa Binh', N'Khanh Hoa', 1310.8900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (796, N'Hoa Binh', N'Ho Chi Minh', 1573.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (797, N'Hoa Binh', N'Ha Tinh', 368.95999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (798, N'Hoa Binh', N'Ha Giang', 280.54000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (799, N'Hoa Binh', N'Gia Lai', 1121.550048828125, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (800, N'Hoa Binh', N'Can Tho', 1736.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (801, N'Hoa Binh', N'Hai Phong', 167.44999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (802, N'Hoa Binh', N'Binh Thuan', 1551.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (803, N'Hoa Binh', N'Dong Thap', 1721.449951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (804, N'Hoa Binh', N'Dong Nai', 1561.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (805, N'Hoa Binh', N'Ba Ria - Vung Tau', 1656.6500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (806, N'Hoa Binh', N'Cao Bang', 333.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (807, N'Hoa Binh', N'Binh Dinh', 1105.8599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (808, N'Hoa Binh', N'Ben Tre', 1650.5400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (809, N'Hoa Binh', N'An Giang', 1732.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (810, N'Hoa Binh', N'Bac Giang', 116.44000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (811, N'Hoa Binh', N'Da Nang', 796.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (812, N'Hoa Binh', N'Binh Duong', 1542.6099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (813, N'Hoa Binh', N'Thai Nguyen', 128.41999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (814, N'Hoa Binh', N'Quang Nam', 866.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (815, N'Hoa Binh', N'Phu Tho', 66.319999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (816, N'Hoa Binh', N'Nam Dinh', 124.75, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (817, N'Hoa Binh', N'Bac Kan', 210.92999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (818, N'Hoa Binh', N'Bac Lieu', 1832.77001953125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (819, N'Hoa Binh', N'Ca Mau', 1859.8199462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (820, N'Hoa Binh', N'Vinh Phuc', 71.629997253417969, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (821, N'Lang Son', N'Lam Dong', 1568.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (822, N'Lang Son', N'Lai Chau', 506.3699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (823, N'Lang Son', N'Kien Giang', 1903.3599853515625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (824, N'Lang Son', N'Khanh Hoa', 1437.81005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (825, N'Lang Son', N'Ho Chi Minh', 1694.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (826, N'Lang Son', N'Ha Tinh', 495.8800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (827, N'Lang Son', N'Ha Giang', 371.47000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (828, N'Lang Son', N'Gia Lai', 1248.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (829, N'Lang Son', N'Can Tho', 1857.0699462890625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (830, N'Lang Son', N'Hai Phong', 212.69000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (831, N'Lang Son', N'Binh Thuan', 1678.0699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (832, N'Lang Son', N'Dong Thap', 1842.1300048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (833, N'Lang Son', N'Dong Nai', 1681.7099609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (834, N'Lang Son', N'Ba Ria - Vung Tau', 1777.3299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (835, N'Lang Son', N'Cao Bang', 124.83999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (836, N'Lang Son', N'Binh Dinh', 1232.780029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (837, N'Lang Son', N'Ben Tre', 1771.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (838, N'Lang Son', N'An Giang', 1852.8299560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (839, N'Lang Son', N'Bac Giang', 99.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (840, N'Lang Son', N'Da Nang', 923.02001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (841, N'Lang Son', N'Binh Duong', 1663.2900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (842, N'Lang Son', N'Thai Nguyen', 162.46000671386719, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (843, N'Lang Son', N'Quang Nam', 993.40997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (844, N'Lang Son', N'Phu Tho', 210.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (845, N'Lang Son', N'Nam Dinh', 231.05999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (846, N'Lang Son', N'Bac Kan', 176.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (847, N'Lang Son', N'Bac Lieu', 1953.449951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (848, N'Lang Son', N'Ca Mau', 1980.5, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (849, N'Lang Son', N'Vinh Phuc', 178.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (850, N'Lam Dong', N'Lai Chau', 1803.0999755859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (851, N'Lam Dong', N'Kien Giang', 530.8800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (852, N'Lam Dong', N'Khanh Hoa', 137.47999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (853, N'Lam Dong', N'Ho Chi Minh', 299.70001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (854, N'Lam Dong', N'Ha Tinh', 1072.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (855, N'Lam Dong', N'Ha Giang', 1720.9300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (856, N'Lam Dong', N'Gia Lai', 382.76998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (857, N'Lam Dong', N'Can Tho', 466.75, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (858, N'Lam Dong', N'Hai Phong', 1453.699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (859, N'Lam Dong', N'Binh Thuan', 176.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (860, N'Lam Dong', N'Dong Thap', 443.489990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (861, N'Lam Dong', N'Dong Nai', 279.260009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (862, N'Lam Dong', N'Ba Ria - Vung Tau', 298.08999633789062, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (863, N'Lam Dong', N'Cao Bang', 1692.06005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (864, N'Lam Dong', N'Binh Dinh', 342.95001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (865, N'Lam Dong', N'Ben Tre', 380.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (866, N'Lam Dong', N'An Giang', 480.3599853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (867, N'Lam Dong', N'Bac Giang', 1472.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (868, N'Lam Dong', N'Da Nang', 662.05999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (869, N'Lam Dong', N'Binh Duong', 294.8599853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (870, N'Lam Dong', N'Thai Nguyen', 1499.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (871, N'Lam Dong', N'Quang Nam', 589.780029296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (872, N'Lam Dong', N'Phu Tho', 1496.6600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (873, N'Lam Dong', N'Nam Dinh', 1361.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (874, N'Lam Dong', N'Bac Kan', 1579.9599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (875, N'Lam Dong', N'Bac Lieu', 562.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (876, N'Lam Dong', N'Ca Mau', 589.67999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (877, N'Lam Dong', N'Vinh Phuc', 1494.469970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (878, N'Lai Chau', N'Kien Giang', 2141.510009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (879, N'Lai Chau', N'Khanh Hoa', 1669.72998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (880, N'Lai Chau', N'Ho Chi Minh', 1932.31005859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (881, N'Lai Chau', N'Ha Tinh', 727.79998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (882, N'Lai Chau', N'Ha Giang', 303.8800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (883, N'Lai Chau', N'Gia Lai', 1480.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (884, N'Lai Chau', N'Can Tho', 2095.22998046875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (885, N'Lai Chau', N'Hai Phong', 485.85000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (886, N'Lai Chau', N'Binh Thuan', 1909.989990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (887, N'Lai Chau', N'Dong Thap', 2080.2900390625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (888, N'Lai Chau', N'Dong Nai', 1919.8699951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (889, N'Lai Chau', N'Ba Ria - Vung Tau', 2015.47998046875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (890, N'Lai Chau', N'Cao Bang', 548.8900146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (891, N'Lai Chau', N'Binh Dinh', 1464.699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (892, N'Lai Chau', N'Ben Tre', 2009.3699951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (893, N'Lai Chau', N'An Giang', 2090.989990234375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (894, N'Lai Chau', N'Bac Giang', 411.510009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (895, N'Lai Chau', N'Da Nang', 1154.93994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (896, N'Lai Chau', N'Binh Duong', 1901.449951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (897, N'Lai Chau', N'Thai Nguyen', 377.27999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (898, N'Lai Chau', N'Quang Nam', 1225.3299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (899, N'Lai Chau', N'Phu Tho', 308.79998779296875, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (900, N'Lai Chau', N'Nam Dinh', 463.75, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (901, N'Khanh Hoa', N'Ho Chi Minh', 402.64999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (902, N'Khanh Hoa', N'Ha Tinh', 941.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (903, N'Khanh Hoa', N'Ha Giang', 1590.5, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (904, N'Khanh Hoa', N'Gia Lai', 298.27999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (905, N'Khanh Hoa', N'Can Tho', 569.71002197265625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (906, N'Khanh Hoa', N'Hai Phong', 1323.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (907, N'Khanh Hoa', N'Binh Thuan', 246.75999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (908, N'Khanh Hoa', N'Dong Thap', 546.44000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (909, N'Khanh Hoa', N'Dong Nai', 403.51998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (910, N'Khanh Hoa', N'Ba Ria - Vung Tau', 408.3699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (911, N'Khanh Hoa', N'Cao Bang', 1561.6300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (912, N'Khanh Hoa', N'Binh Dinh', 212.52000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (913, N'Khanh Hoa', N'Ben Tre', 483.3699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (914, N'Khanh Hoa', N'An Giang', 583.32000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (915, N'Khanh Hoa', N'Bac Giang', 1341.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (916, N'Khanh Hoa', N'Da Nang', 531.6300048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (917, N'Khanh Hoa', N'Binh Duong', 427.95999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (918, N'Khanh Hoa', N'Thai Nguyen', 1369.550048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (919, N'Khanh Hoa', N'Quang Nam', 459.35000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (920, N'Khanh Hoa', N'Phu Tho', 1366.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (921, N'Khanh Hoa', N'Nam Dinh', 1230.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (922, N'Khanh Hoa', N'Bac Kan', 1449.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (923, N'Khanh Hoa', N'Bac Lieu', 665.58001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (924, N'Khanh Hoa', N'Ca Mau', 692.6400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (925, N'Khanh Hoa', N'Vinh Phuc', 1364.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (926, N'Ho Chi Minh', N'Ha Tinh', 1205.949951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (927, N'Ho Chi Minh', N'Ha Giang', 1850.68994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (928, N'Ho Chi Minh', N'Gia Lai', 636.90997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (929, N'Ho Chi Minh', N'Can Tho', 172.41999816894531, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (930, N'Ho Chi Minh', N'Hai Phong', 1578.4000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (931, N'Ho Chi Minh', N'Binh Thuan', 167.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (932, N'Ho Chi Minh', N'Dong Thap', 149.16000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (933, N'Ho Chi Minh', N'Dong Nai', 27.940000534057617, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (934, N'Ho Chi Minh', N'Ba Ria - Vung Tau', 89.709999084472656, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (935, N'Ho Chi Minh', N'Cao Bang', 1816.760009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (936, N'Ho Chi Minh', N'Binh Dinh', 607.69000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (937, N'Ho Chi Minh', N'Ben Tre', 86.069999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (938, N'Ho Chi Minh', N'An Giang', 186.02999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (939, N'Ho Chi Minh', N'Bac Giang', 1596.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (940, N'Ho Chi Minh', N'Da Nang', 926.79998779296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (941, N'Ho Chi Minh', N'Binh Duong', 30.840000152587891, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (942, N'Ho Chi Minh', N'Thai Nguyen', 1624.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (943, N'Ho Chi Minh', N'Quang Nam', 854.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (944, N'Ho Chi Minh', N'Phu Tho', 1626.4200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (945, N'Ho Chi Minh', N'Nam Dinh', 1485.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (946, N'Ho Chi Minh', N'Bac Kan', 1704.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (947, N'Ho Chi Minh', N'Bac Lieu', 268.29998779296875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (948, N'Ho Chi Minh', N'Ca Mau', 295.35000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (949, N'Ho Chi Minh', N'Vinh Phuc', 1624.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (950, N'Ha Tinh', N'Ha Giang', 647.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (951, N'Ha Tinh', N'Gia Lai', 751.92999267578125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (952, N'Ha Tinh', N'Can Tho', 1369.68994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (953, N'Ha Tinh', N'Hai Phong', 380.6400146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (954, N'Ha Tinh', N'Binh Thuan', 1181.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (955, N'Ha Tinh', N'Dong Thap', 1354.75, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (956, N'Ha Tinh', N'Dong Nai', 1194.3299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (957, N'Ha Tinh', N'Ba Ria - Vung Tau', 1289.949951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (958, N'Ha Tinh', N'Cao Bang', 619.010009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (959, N'Ha Tinh', N'Binh Dinh', 736.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (960, N'Ha Tinh', N'Ben Tre', 1283.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (961, N'Ha Tinh', N'An Giang', 1365.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (962, N'Ha Tinh', N'Bac Giang', 399.22000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (963, N'Ha Tinh', N'Da Nang', 426.47000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (964, N'Ha Tinh', N'Binh Duong', 1175.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (965, N'Ha Tinh', N'Thai Nguyen', 426.92999267578125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (966, N'Ha Tinh', N'Quang Nam', 496.8599853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (967, N'Ha Tinh', N'Phu Tho', 423.6099853515625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (968, N'Ha Tinh', N'Nam Dinh', 288.20999145507812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (969, N'Ha Tinh', N'Bac Kan', 506.91000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (970, N'Ha Tinh', N'Bac Lieu', 1466.0699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (971, N'Ha Tinh', N'Ca Mau', 1493.1199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (972, N'Ha Tinh', N'Vinh Phuc', 421.41000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (973, N'Ha Giang', N'Gia Lai', 1401.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (974, N'Ha Giang', N'Can Tho', 2016.3299560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (975, N'Ha Giang', N'Hai Phong', 392.82998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (976, N'Ha Giang', N'Binh Thuan', 1831.0899658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (977, N'Ha Giang', N'Dong Thap', 2001.3900146484375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (978, N'Ha Giang', N'Dong Nai', 1840.969970703125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (979, N'Ha Giang', N'Ba Ria - Vung Tau', 1936.5899658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (980, N'Ha Giang', N'Cao Bang', 245.02999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (981, N'Ha Giang', N'Binh Dinh', 1385.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (982, N'Ha Giang', N'Ben Tre', 1930.47998046875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (983, N'Ha Giang', N'An Giang', 2012.0999755859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (984, N'Ha Giang', N'Bac Giang', 300.35000610351562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (985, N'Ha Giang', N'Da Nang', 1076.0400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (986, N'Ha Giang', N'Binh Duong', 1822.550048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (987, N'Ha Giang', N'Thai Nguyen', 236.80000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (988, N'Ha Giang', N'Quang Nam', 1146.4300537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (989, N'Ha Giang', N'Phu Tho', 224.97999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (990, N'Ha Giang', N'Nam Dinh', 370.73001098632812, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (991, N'Ha Giang', N'Bac Kan', 286.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (992, N'Ha Giang', N'Bac Lieu', 2112.7099609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (993, N'Ha Giang', N'Ca Mau', 2139.760009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (994, N'Ha Giang', N'Vinh Phuc', 235.86000061035156, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (995, N'Gia Lai', N'Can Tho', 715.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (996, N'Gia Lai', N'Hai Phong', 1134.260009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (997, N'Gia Lai', N'Binh Thuan', 513.4000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (998, N'Gia Lai', N'Dong Thap', 662.4000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (999, N'Gia Lai', N'Dong Nai', 521.780029296875, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1000, N'Gia Lai', N'Ba Ria - Vung Tau', 609.1400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1001, N'Gia Lai', N'Cao Bang', 1372.6199951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1002, N'Gia Lai', N'Binh Dinh', 167.30000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1003, N'Gia Lai', N'Ben Tre', 617.65997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1004, N'Gia Lai', N'An Giang', 699.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1005, N'Gia Lai', N'Bac Giang', 1152.8299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1006, N'Gia Lai', N'Da Nang', 342.6199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1007, N'Gia Lai', N'Binh Duong', 526.52001953125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1008, N'Gia Lai', N'Thai Nguyen', 1180.5400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1009, N'Gia Lai', N'Quang Nam', 306.54000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1010, N'Gia Lai', N'Phu Tho', 1177.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1011, N'Gia Lai', N'Nam Dinh', 1041.8299560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1012, N'Gia Lai', N'Bac Kan', 1260.52001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1013, N'Gia Lai', N'Bac Lieu', 799.8900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1014, N'Gia Lai', N'Ca Mau', 826.94000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1015, N'Gia Lai', N'Vinh Phuc', 1175.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1016, N'Can Tho', N'Hai Phong', 1739.8199462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1017, N'Can Tho', N'Binh Thuan', 335.64999389648438, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1018, N'Can Tho', N'Dong Thap', 85.790000915527344, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1019, N'Can Tho', N'Dong Nai', 198.80000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1020, N'Can Tho', N'Ba Ria - Vung Tau', 258.05999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1021, N'Can Tho', N'Cao Bang', 1978.1800537109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1022, N'Can Tho', N'Binh Dinh', 776.03997802734375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1023, N'Can Tho', N'Ben Tre', 115.70999908447266, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1024, N'Can Tho', N'An Giang', 58.220001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1025, N'Can Tho', N'Bac Giang', 1758.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1026, N'Can Tho', N'Da Nang', 1095.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1027, N'Can Tho', N'Binh Duong', 189.80000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1028, N'Can Tho', N'Thai Nguyen', 1786.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1029, N'Can Tho', N'Quang Nam', 1022.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1030, N'Can Tho', N'Phu Tho', 1787.8399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1031, N'Can Tho', N'Nam Dinh', 1647.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1032, N'Can Tho', N'Bac Kan', 1866.0799560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1033, N'Can Tho', N'Bac Lieu', 117.69999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1034, N'Can Tho', N'Ca Mau', 144.75999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1035, N'Can Tho', N'Vinh Phuc', 1785.6400146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1036, N'Hai Phong', N'Binh Thuan', 1565.9000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1037, N'Hai Phong', N'Dong Thap', 1729.9599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1038, N'Hai Phong', N'Dong Nai', 1569.5400390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1039, N'Hai Phong', N'Ba Ria - Vung Tau', 1665.1600341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1040, N'Hai Phong', N'Cao Bang', 337.3800048828125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1041, N'Hai Phong', N'Binh Dinh', 1120.6099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1042, N'Hai Phong', N'Ben Tre', 1659.050048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1043, N'Hai Phong', N'An Giang', 1740.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1044, N'Hai Phong', N'Bac Giang', 105.30999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1045, N'Hai Phong', N'Da Nang', 810.8499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1046, N'Hai Phong', N'Binh Duong', 1551.1300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1047, N'Hai Phong', N'Thai Nguyen', 174.74000549316406, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1048, N'Hai Phong', N'Quang Nam', 881.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1049, N'Hai Phong', N'Phu Tho', 189.5, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1050, N'Hai Phong', N'Nam Dinh', 93.75, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1051, N'Hai Phong', N'Bac Kan', 254.72000122070313, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1052, N'Hai Phong', N'Bac Lieu', 1841.280029296875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1053, N'Hai Phong', N'Ca Mau', 1868.3299560546875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1054, N'Hai Phong', N'Vinh Phuc', 154.75999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1055, N'Binh Thuan', N'Dong Thap', 312.07998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1056, N'Binh Thuan', N'Dong Nai', 169.16000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1057, N'Binh Thuan', N'Ba Ria - Vung Tau', 155.02000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1058, N'Binh Thuan', N'Cao Bang', 1800.97998046875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1059, N'Binh Thuan', N'Binh Dinh', 451.8699951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1060, N'Binh Thuan', N'Ben Tre', 249, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1061, N'Binh Thuan', N'An Giang', 348.95001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1062, N'Binh Thuan', N'Bac Giang', 1581.18994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1063, N'Binh Thuan', N'Da Nang', 770.97998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1064, N'Binh Thuan', N'Binh Duong', 193.60000610351563, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1065, N'Binh Thuan', N'Thai Nguyen', 1608.9000244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1066, N'Binh Thuan', N'Quang Nam', 698.70001220703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1067, N'Binh Thuan', N'Phu Tho', 1605.5799560546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1068, N'Binh Thuan', N'Nam Dinh', 1470.18994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1069, N'Binh Thuan', N'Bac Kan', 1688.8800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1070, N'Binh Thuan', N'Bac Lieu', 431.22000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1071, N'Binh Thuan', N'Ca Mau', 458.26998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1072, N'Binh Thuan', N'Vinh Phuc', 1603.3800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1073, N'Dong Thap', N'Dong Nai', 166.33000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1074, N'Dong Thap', N'Ba Ria - Vung Tau', 233.55999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1075, N'Dong Thap', N'Cao Bang', 1965.7099609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1076, N'Dong Thap', N'Binh Dinh', 751.530029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1077, N'Dong Thap', N'Ben Tre', 108.13999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1078, N'Dong Thap', N'An Giang', 45.919998168945312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1079, N'Dong Thap', N'Bac Giang', 1745.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1080, N'Dong Thap', N'Da Nang', 1077.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1081, N'Dong Thap', N'Binh Duong', 153.13999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1082, N'Dong Thap', N'Thai Nguyen', 1773.6300048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1083, N'Dong Thap', N'Quang Nam', 1000.0399780273438, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1084, N'Dong Thap', N'Phu Tho', 1775.3599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1085, N'Dong Thap', N'Nam Dinh', 1634.9100341796875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1086, N'Dong Thap', N'Bac Kan', 1853.6099853515625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1087, N'Dong Thap', N'Bac Lieu', 188.05000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1088, N'Dong Thap', N'Ca Mau', 199.88999938964844, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1089, N'Dong Thap', N'Vinh Phuc', 1773.1700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1090, N'Dong Nai', N'Ba Ria - Vung Tau', 87.220001220703125, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1091, N'Dong Nai', N'Cao Bang', 1805.1500244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1092, N'Dong Nai', N'Binh Dinh', 605.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1093, N'Dong Nai', N'Ben Tre', 114.51000213623047, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1094, N'Dong Nai', N'An Giang', 207.47999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1095, N'Dong Nai', N'Bac Giang', 1585.3599853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1096, N'Dong Nai', N'Da Nang', 924.3499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1097, N'Dong Nai', N'Binh Duong', 22.579999923706055, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1098, N'Dong Nai', N'Thai Nguyen', 1613.0699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1099, N'Dong Nai', N'Quang Nam', 852.07000732421875, 3)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1100, N'Dong Nai', N'Phu Tho', 1614.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1101, N'Dong Nai', N'Nam Dinh', 1474.3499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1102, N'Dong Nai', N'Bac Kan', 1693.050048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1103, N'Dong Nai', N'Bac Lieu', 296.739990234375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1104, N'Dong Nai', N'Ca Mau', 323.79000854492188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1105, N'Dong Nai', N'Vinh Phuc', 1612.6099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1106, N'Ba Ria - Vung Tau', N'Cao Bang', 1900.5899658203125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1107, N'Ba Ria - Vung Tau', N'Binh Dinh', 611.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1108, N'Ba Ria - Vung Tau', N'Ben Tre', 170.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1109, N'Ba Ria - Vung Tau', N'An Giang', 270.010009765625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1110, N'Ba Ria - Vung Tau', N'Bac Giang', 1680.800048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1111, N'Ba Ria - Vung Tau', N'Da Nang', 930.34002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1112, N'Ba Ria - Vung Tau', N'Binh Duong', 114.66000366210938, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1113, N'Ba Ria - Vung Tau', N'Thai Nguyen', 1708.510009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1114, N'Ba Ria - Vung Tau', N'Quang Nam', 858.05999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1115, N'Ba Ria - Vung Tau', N'Phu Tho', 1710.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1116, N'Ba Ria - Vung Tau', N'Nam Dinh', 1569.7900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1117, N'Ba Ria - Vung Tau', N'Bac Kan', 1788.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1118, N'Ba Ria - Vung Tau', N'Bac Lieu', 352.27999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1119, N'Ba Ria - Vung Tau', N'Ca Mau', 379.32998657226562, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1120, N'Ba Ria - Vung Tau', N'Vinh Phuc', 1708.050048828125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1121, N'Cao Bang', N'Binh Dinh', 1356.93994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1122, N'Cao Bang', N'Ben Tre', 1895.3800048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1123, N'Cao Bang', N'An Giang', 1977, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1124, N'Cao Bang', N'Bac Giang', 223.72999572753906, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1125, N'Cao Bang', N'Da Nang', 1047.1800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1126, N'Cao Bang', N'Binh Duong', 1787.4599609375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1127, N'Cao Bang', N'Thai Nguyen', 197.05000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1128, N'Cao Bang', N'Quang Nam', 1117.5699462890625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1129, N'Cao Bang', N'Phu Tho', 309.26998901367188, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1130, N'Cao Bang', N'Nam Dinh', 355.22000122070312, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1131, N'Cao Bang', N'Bac Kan', 114.68000030517578, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1132, N'Cao Bang', N'Bac Lieu', 2077.610107421875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1133, N'Cao Bang', N'Ca Mau', 2104.659912109375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1134, N'Cao Bang', N'Vinh Phuc', 269.05999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1135, N'Binh Dinh', N'Ben Tre', 689.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1136, N'Binh Dinh', N'An Giang', 789.219970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1137, N'Binh Dinh', N'Bac Giang', 1136.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1138, N'Binh Dinh', N'Da Nang', 326.07000732421875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1139, N'Binh Dinh', N'Binh Duong', 633.8699951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1140, N'Binh Dinh', N'Thai Nguyen', 1163.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1141, N'Binh Dinh', N'Quang Nam', 253.78999328613281, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1142, N'Binh Dinh', N'Phu Tho', 1160.6700439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1143, N'Binh Dinh', N'Nam Dinh', 1025.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1144, N'Binh Dinh', N'Bac Kan', 1243.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1145, N'Binh Dinh', N'Bac Lieu', 871.489990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1146, N'Binh Dinh', N'Ca Mau', 898.53997802734375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1147, N'Binh Dinh', N'Vinh Phuc', 1158.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1148, N'Ben Tre', N'An Giang', 145.1199951171875, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1149, N'Ben Tre', N'Bac Giang', 1676.239990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1150, N'Ben Tre', N'Da Nang', 1008.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1151, N'Ben Tre', N'Binh Duong', 106.62999725341797, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1152, N'Ben Tre', N'Thai Nguyen', 1703.93994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1153, N'Ben Tre', N'Quang Nam', 935.84002685546875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1154, N'Ben Tre', N'Phu Tho', 1705.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1155, N'Ben Tre', N'Nam Dinh', 1565.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1156, N'Ben Tre', N'Bac Kan', 1783.9200439453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1157, N'Ben Tre', N'Bac Lieu', 160.33999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1158, N'Ben Tre', N'Ca Mau', 252.19000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1159, N'Ben Tre', N'Vinh Phuc', 1703.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1160, N'An Giang', N'Bac Giang', 1756.3499755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1161, N'An Giang', N'Da Nang', 1108.969970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1162, N'An Giang', N'Binh Duong', 189.77999877929688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1163, N'An Giang', N'Thai Nguyen', 1784.06005859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1164, N'An Giang', N'Quang Nam', 1036.6800537109375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1165, N'An Giang', N'Phu Tho', 1785.7900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1166, N'An Giang', N'Nam Dinh', 1645.3399658203125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1167, N'An Giang', N'Bac Kan', 1864.0400390625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1168, N'An Giang', N'Bac Lieu', 170.69999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1169, N'An Giang', N'Ca Mau', 176.05000305175781, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1170, N'An Giang', N'Vinh Phuc', 1783.5999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1171, N'Bac Giang', N'Da Nang', 826.71002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1172, N'Bac Giang', N'Binh Duong', 1566.989990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1173, N'Bac Giang', N'Thai Nguyen', 62.159999847412109, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1174, N'Bac Giang', N'Quang Nam', 897.0999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1175, N'Bac Giang', N'Phu Tho', 114.01000213623047, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1176, N'Bac Giang', N'Nam Dinh', 134.75999450683594, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1177, N'Bac Giang', N'Bac Kan', 146.24000549316406, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1178, N'Bac Giang', N'Bac Lieu', 1857.1500244140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1179, N'Bac Giang', N'Ca Mau', 1884.199951171875, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1180, N'Bac Giang', N'Vinh Phuc', 82.5999984741211, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1181, N'Da Nang', N'Binh Duong', 838.08001708984375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1182, N'Da Nang', N'Thai Nguyen', 853.780029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1183, N'Da Nang', N'Quang Nam', 86.410003662109375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1184, N'Da Nang', N'Phu Tho', 850.46002197265625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1185, N'Da Nang', N'Nam Dinh', 715.07000732421875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1186, N'Da Nang', N'Bac Kan', 933.760009765625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1187, N'Da Nang', N'Bac Lieu', 1111.449951171875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1188, N'Da Nang', N'Ca Mau', 1138.5, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1189, N'Da Nang', N'Vinh Phuc', 848.27001953125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1190, N'Binh Duong', N'Thai Nguyen', 1594.739990234375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1191, N'Binh Duong', N'Quang Nam', 879.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1192, N'Binh Duong', N'Phu Tho', 1596.47998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1193, N'Binh Duong', N'Nam Dinh', 1456.030029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1194, N'Binh Duong', N'Bac Kan', 1674.719970703125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1195, N'Binh Duong', N'Bac Lieu', 287.6400146484375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1196, N'Binh Duong', N'Ca Mau', 314.69000244140625, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1197, N'Binh Duong', N'Vinh Phuc', 1594.280029296875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1198, N'Thai Nguyen', N'Quang Nam', 927.1500244140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1199, N'Thai Nguyen', N'Phu Tho', 110.13999938964844, 2)
GO
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1200, N'Thai Nguyen', N'Nam Dinh', 164.80999755859375, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1201, N'Thai Nguyen', N'Bac Kan', 82.2300033569336, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1202, N'Thai Nguyen', N'Bac Lieu', 1887.18994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1203, N'Thai Nguyen', N'Ca Mau', 1914.25, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1204, N'Thai Nguyen', N'Vinh Phuc', 77.330001831054688, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1205, N'Quang Nam', N'Phu Tho', 920.80999755859375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1206, N'Quang Nam', N'Nam Dinh', 785.40997314453125, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1207, N'Quang Nam', N'Bac Kan', 1004.1099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1208, N'Quang Nam', N'Bac Lieu', 1118.22998046875, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1209, N'Quang Nam', N'Ca Mau', 1145.2900390625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1210, N'Quang Nam', N'Vinh Phuc', 918.6099853515625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1211, N'Phu Tho', N'Nam Dinh', 155.08999633789063, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1212, N'Phu Tho', N'Bac Kan', 179.69999694824219, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1213, N'Phu Tho', N'Bac Lieu', 1890.510009765625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1214, N'Phu Tho', N'Ca Mau', 1917.56005859375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1215, N'Phu Tho', N'Vinh Phuc', 27.020000457763672, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1216, N'Nam Dinh', N'Bac Kan', 242.33000183105469, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1217, N'Nam Dinh', N'Bac Lieu', 1746.3900146484375, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1218, N'Nam Dinh', N'Ca Mau', 1773.43994140625, 3)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1219, N'Nam Dinh', N'Vinh Phuc', 131.99000549316406, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1220, N'Bac Kan', N'Bac Lieu', 1964.8800048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1221, N'Bac Kan', N'Ca Mau', 1991.93994140625, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1222, N'Bac Kan', N'Vinh Phuc', 155.02000427246094, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1223, N'Bac Lieu', N'Ca Mau', 69.0999984741211, 2)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1224, N'Bac Lieu', N'Vinh Phuc', 1881.550048828125, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1225, N'Ca Mau', N'Vinh Phuc', 1906.7099609375, 4)
INSERT [dbo].[Ship_Distance] ([id], [departure], [destination], [distance], [duration]) VALUES (1226, N'same city', N'same city', 5, 0)
SET IDENTITY_INSERT [dbo].[Ship_Distance] OFF
GO
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([id], [districtid], [name], [img], [description], [ownerid], [createdate]) VALUES (1, 1389, N'BirdPeeShop', N'https://media3.scdn.vn/img4/2021/03_02/GYhHISROSpUEWWH0ztTt.jpg', N'This is the short description bird shop@This is the full description for this shop', 1, CAST(N'2023-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([id], [districtid], [name], [img], [description], [ownerid], [createdate]) VALUES (5, 1512, N'Legend Bird', N'https://media3.scdn.vn/img4/2021/03_02/GYhHISROSpUEWWH0ztTt.jpg', N'This is the short description bird shop@This is the full description for this shop', 2, CAST(N'2023-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([id], [districtid], [name], [img], [description], [ownerid], [createdate]) VALUES (8, 1109, N'BirdShop', N'https://media3.scdn.vn/img4/2021/03_02/GYhHISROSpUEWWH0ztTt.jpg', N'This is the short description bird shop@This is the full description for this shop', 7, CAST(N'2023-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([id], [districtid], [name], [img], [description], [ownerid], [createdate]) VALUES (10, 1506, N'BPShop', N'https://media3.scdn.vn/img4/2021/03_02/GYhHISROSpUEWWH0ztTt.jpg', N'This is the short description bird shop@This is the full description for this shop', 8, CAST(N'2023-05-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shop] OFF
GO
INSERT [dbo].[Shop_Follower] ([shopid], [customerid]) VALUES (5, 12)
INSERT [dbo].[Shop_Follower] ([shopid], [customerid]) VALUES (8, 15)
INSERT [dbo].[Shop_Follower] ([shopid], [customerid]) VALUES (5, 15)
GO
ALTER TABLE [dbo].[Cancelation]  WITH CHECK ADD  CONSTRAINT [FK_Cancelation_Order] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Cancelation] CHECK CONSTRAINT [FK_Cancelation_Order]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[Cart_Details]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Details_Cart1] FOREIGN KEY([cartid])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[Cart_Details] CHECK CONSTRAINT [FK_Cart_Details_Cart1]
GO
ALTER TABLE [dbo].[Cart_Details]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Details_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart_Details] CHECK CONSTRAINT [FK_Cart_Details_Product]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_Customer]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_District] FOREIGN KEY([districtid])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_District]
GO
ALTER TABLE [dbo].[Discount_Details]  WITH CHECK ADD  CONSTRAINT [FK_Discount_Details_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Discount_Details] CHECK CONSTRAINT [FK_Discount_Details_Product]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Province] FOREIGN KEY([provinceid])
REFERENCES [dbo].[Province] ([id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Province]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Shop]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_Ship] FOREIGN KEY([shipid])
REFERENCES [dbo].[Order_Ship] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Order_Ship]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_Status] FOREIGN KEY([status])
REFERENCES [dbo].[Order_Status] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Order_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment_Method] FOREIGN KEY([paymentmethodid])
REFERENCES [dbo].[Payment_Method] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Payment_Method]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment_Type] FOREIGN KEY([paymenttypeid])
REFERENCES [dbo].[Payment_Type] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Payment_Type]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Ship_Distance] FOREIGN KEY([shipdistanceid])
REFERENCES [dbo].[Ship_Distance] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Ship_Distance]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cateid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Shop]
GO
ALTER TABLE [dbo].[Product_img]  WITH CHECK ADD  CONSTRAINT [FK_Product's img_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Product_img] CHECK CONSTRAINT [FK_Product's img_Product]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Account] FOREIGN KEY([ownerid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Account]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_District] FOREIGN KEY([districtid])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_District]
GO
ALTER TABLE [dbo].[Shop_Follower]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Account_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Shop_Follower] CHECK CONSTRAINT [FK_Shop_Account_Shop]
GO
ALTER TABLE [dbo].[Shop_Follower]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Follower_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Shop_Follower] CHECK CONSTRAINT [FK_Shop_Follower_Customer]
GO
ALTER TABLE [dbo].[Shop_OrderMail]  WITH CHECK ADD  CONSTRAINT [FK_Shop_OrderMail_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Shop_OrderMail] CHECK CONSTRAINT [FK_Shop_OrderMail_Customer]
GO
ALTER TABLE [dbo].[Shop_OrderMail]  WITH CHECK ADD  CONSTRAINT [FK_Shop_OrderMail_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Shop_OrderMail] CHECK CONSTRAINT [FK_Shop_OrderMail_Shop]
GO
