USE [BPPlatform]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[role] [nvarchar](max) NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[product_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[birth] [DATETIME] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[init_price] [float] NOT NULL,
	[qty] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[total_price] [float] NOT NULL,
	[shop_id] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[available_qty] [int] NOT NULL,
	[sold_qty] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cate_id] [int] NOT NULL,
	[shop_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 7/19/2023 9:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (1, N'admin', N'1', N'AD', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (3, N'luan', N'1', N'CS', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (4, N'tuan', N'1', N'SO', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (5, N'quoc', N'1', N'SO', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (6, N'khanh', N'1', N'CS', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [status]) VALUES (7, N'hoang', N'1', N'CS', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [quantity], [price], [product_id], [customer_id]) VALUES (1, 3, 120000, 3, 7)
INSERT [dbo].[Cart] ([Id], [quantity], [price], [product_id], [customer_id]) VALUES (2, 1, 210000, 4, 7)
INSERT [dbo].[Cart] ([Id], [quantity], [price], [product_id], [customer_id]) VALUES (4, 3, 21000, 3, 3)
INSERT [dbo].[Cart] ([Id], [quantity], [price], [product_id], [customer_id]) VALUES (5, 1, 210000, 4, 3)
INSERT [dbo].[Cart] ([Id], [quantity], [price], [product_id], [customer_id]) VALUES (6, 1, 1, 9, 3)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO


SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Bird')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Food')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Bage')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Customer] ([id], [name], [phone], [gender], [birth]) VALUES (3, N'luan', N'0123456789', 'male','2003-01-15')
INSERT [dbo].[Customer] ([id], [name], [phone], [gender], [birth]) VALUES (6, N'khanh huu dong', N'0123456789', 'male', '1990-01-16')
INSERT [dbo].[Customer] ([id], [name], [phone], [gender], [birth]) VALUES (7, N'Hoang duong pham', N'0321456744', 'male', '1990-06-15')
GO
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [product_name], [init_price], [qty]) VALUES (1, 3, N'Cockatiel Lutino', 120000, 2)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [product_name], [init_price], [qty]) VALUES (2, 4, N'High Quality Plastic Cage Shipping Size S', 210000, 1)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [product_name], [init_price], [qty]) VALUES (3, 3, N'Cockatiel Lutino', 120000, 2)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [product_name], [init_price], [qty]) VALUES (4, 4, N'High Quality Plastic Cage Shipping Size S', 210000, 1)
INSERT [dbo].[Order_Detail] ([order_id], [product_id], [product_name], [init_price], [qty]) VALUES (5, 3, N'Cockatiel Lutino', 21000, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [customer_id], [total_price], [shop_id], [create_date]) VALUES (1, 7, 120030, 4, CAST(N'2023-07-19T11:33:03.000' AS DateTime))
INSERT [dbo].[Orders] ([id], [customer_id], [total_price], [shop_id], [create_date]) VALUES (2, 7, 210030, 5, CAST(N'2023-07-19T11:33:04.000' AS DateTime))
INSERT [dbo].[Orders] ([id], [customer_id], [total_price], [shop_id], [create_date]) VALUES (3, 7, 120030, 4, CAST(N'2023-07-19T11:33:14.000' AS DateTime))
INSERT [dbo].[Orders] ([id], [customer_id], [total_price], [shop_id], [create_date]) VALUES (4, 7, 210030, 5, CAST(N'2023-07-19T11:33:14.000' AS DateTime))
INSERT [dbo].[Orders] ([id], [customer_id], [total_price], [shop_id], [create_date]) VALUES (5, 3, 21030, 4, CAST(N'2023-07-19T20:04:57.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [available_qty], [sold_qty], [description], [cate_id], [shop_id], [price]) VALUES (3, N'Cockatiel Lutino', 12, 1, N'This is the bird from the magic universe@In the wild Cockatiels often work in pairs or small groups to forage, their food usually seeds and grains and some local agricultural pests. Usually Cockatiels live on dead branches, next to rivers, streams… They seem to like to work near water sources. Most cockatiels love to take a bath. They are also active on the ground foraging for food such as seeds, grasses, leaves and bark (from all trees, shrubs and other vegetation). They also feed on a number of other insects and larvae.    Cockatiels are quite healthy and resistant to diseases, however, they should not be subjective to their diets. They like to climb, bite and gnaw on wooden branches, so don''t keep them in one place. When raising metal cages, the cage size for each pair of Cockatiel is 60 cm in length, 45 cm in width, 40 cm in height. Standing bridges should use hardwoods. The wooden nesting box is about 35 cm long, 20 cm wide, 16 cm high, the hole is about 7-8 cm in diameter, inside for sawdust. Clean and change water daily. Change the sand once a week, food boxes, jars and utensils must be disinfected once a month. Spring and autumn, the temperature changes greatly, pay attention to adjust the room temperature to prevent the occurrence of diseases. Keep warm in winter, the indoor temperature is not lower than 16℃. Summer temperature is higher, usually above 30℃ need to strengthen ventilation.    In Northern Australia the breeding season of the Cockatiel is from April to July, in the south it is from August to December. Each nest of 1-7 eggs averages about 4. After hatching the young are fed by their parents in the morning. morning and evening. In captivity, the success rate of Cockatiel breeding is quite low, usually around 12 months of age they begin to reproduce, but the age to start breeding is from 15-18 months of age. Even at this age, many Cockatiels are still in the development stage, the reproductive system is not fully developed, so it leads to some erratic and erratic laying traits. Their nest should be 35 x 20 x 18cm in size, hole diameter 6-7cm, each nest usually lays 4-6 eggs, incubation time is about 19-21 days, after hatching should feed the young. soft form.    Cockatiel has up to 18 different color variations, and the cause of their color change is due to  1. The lack of pigment. For example: yellow, white face, albino;  2. Pigment changes. For example: Cinnamon, Waller, Perth and more surface silver;  3. Change the color. Example: Pat and pearl.  There are basically the following types: Pat Cockatiel, Cinnamon cockatiel, Waller cockatiel, Albino cockatiel, Whiteface cockatiel, Pass Multi cockatiel, Platinum cockatiel, Emerald chukar tail parrot.    Nutrition: The main diet of parrots in captivity is still the same as in the wild, but with additional green vegetables. Commercial parrot food is also a good choice.', 1, 4, 120000)
INSERT [dbo].[Product] ([id], [name], [available_qty], [sold_qty], [description], [cate_id], [shop_id], [price]) VALUES (4, N'High Quality Plastic Cage Shipping Size S', 9, 2, N'Bird Pee Shop specializes in selling and supplying specialized imported transport cages for parrots. Specialized design, durable material, suitable for small and medium sized parrots. Help you go anywhere you can bring your pet with you in the most comfortable, most convenient way, Solid design, modern fashion style.    Size:    Size S (48x32x32)    Origin: Taiwan    Advanced plastic materials', 3, 5, 210000)
INSERT [dbo].[Product] ([id], [name], [available_qty], [sold_qty], [description], [cate_id], [shop_id], [price]) VALUES (5, N'red food', 10, 1, N'not very good for your ', 2, 4, 21000)
INSERT [dbo].[Product] ([id], [name], [available_qty], [sold_qty], [description], [cate_id], [shop_id], [price]) VALUES (9, N'1', 1, 1, N'1', 1, 4, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Shop] ([id], [name], [description]) VALUES (4, N'BirdBee1', N'No decription')
INSERT [dbo].[Shop] ([id], [name], [description]) VALUES (5, N'Birdbee2', N'5*')
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shop] FOREIGN KEY([shop_id])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Shop]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
