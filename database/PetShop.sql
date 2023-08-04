create database PetShop
use [PetShop]
GO
/*[dbo].[bill]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[total] [money] NOT NULL,
	[payment] [nvarchar](250) NOT NULL,
	[address] [ntext] NOT NULL,
	[date] [date] NOT NULL,
	[phone] [bigint] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/*drop table [dbo].[bill]*/

/*[dbo].[bill_detail]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bill_id] [bigint] NOT NULL,
	[product_id] [nvarchar](100) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*drop table [dbo].[bill_detail]*/

/*[dbo].[cart]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [bigint] NOT NULL,
	[product_id] [nvarchar](100) NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[product_img] [nvarchar](255) NOT NULL,
	[product_price] [float] NOT NULL,
	[total] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/*drop table [dbo].[cart]*/



/*[dbo].[category]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/*drop table [dbo].[category]*/


/* [dbo].[product] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [nvarchar](100) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_price] [money] NOT NULL,
	[product_describe] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[sell] [int] NULL
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/*drop table [dbo].[product]*/


/* [dbo].[users]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_email] [nvarchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[isAdmin] [nvarchar](50) NULL,
	[isSell] [int] NULL
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*drop table  [dbo].[users]*/

/*
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (45, 5, 648000.0000, N'MOMO', N'Hà Đông, Hà Nội', CAST(N'2021-11-04' AS Date), 919208356)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (46, 5, 298000.0000, N'MOMO', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (47, 5, 378000.0000, N'VNPAY', N'Ninh Bình', CAST(N'2021-11-03' AS Date), 88195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (48, 5, 270000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 383298183)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (49, 5, 417000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (50, 5, 567000.0000, N'COD', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (51, 5, 278000.0000, N'COD', N'test', CAST(N'2021-11-04' AS Date), 123)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (52, 5, 189000.0000, N'COD', N'è', CAST(N'2021-11-04' AS Date), 2)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (53, 5, 259000.0000, N'MOMO', N'Check', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (54, 5, 270000.0000, N'VNPAY', N'Check', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (55, 5, 259000.0000, N'MOMO', N'jrtn', CAST(N'2021-11-06' AS Date), 2)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (56, 5, 810000.0000, N'VNPAY', N'df', CAST(N'2021-11-06' AS Date), 3)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (57, 5, 149000.0000, N'MOMO', N'Ninh Binh', CAST(N'2021-11-08' AS Date), 383298183)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (58, 5, 417000.0000, N'VNPAY', N'bf', CAST(N'2021-11-08' AS Date), 4)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (59, 5, 149000.0000, N'COD', N'rshfxb12414', CAST(N'2021-11-08' AS Date), 23544353)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (60, 5, 517000.0000, N'MOMO', N'Ninh Bình', CAST(N'2021-11-09' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (61, 5, 139000.0000, N'VNPAY', N'ưgrs', CAST(N'2021-11-09' AS Date), 32)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO

SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (40, 45, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (41, 45, N'T2099', 2, N'S         ', N'Purple', 378000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (42, 46, N'AT533', 2, N'S         ', N'White', 298000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (43, 47, N'T2099', 2, N'L         ', N'Purple', 378000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (44, 48, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (45, 49, N'AT536', 3, N'S         ', N'Red', 417000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (46, 50, N'T2099', 3, N'S         ', N'Purple', 567000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (47, 51, N'AT536', 2, N'S         ', N'Red', 278000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (48, 52, N'T2099', 1, N'S         ', N'Purple', 189000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (49, 53, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (50, 54, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (51, 55, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (52, 56, N'T2129', 3, N'XS        ', N'White', 810000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (53, 57, N'AT533', 1, N'S         ', N'White', 149000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (54, 58, N'AT536', 3, N'S         ', N'Red', 417000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (55, 59, N'AT533', 1, N'S         ', N'White', 149000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (56, 60, N'T2099', 2, N'S         ', N'Purple', 378000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (57, 60, N'AT536', 1, N'L         ', N'Red', 139000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (58, 61, N'AT536', 1, N'S         ', N'Red', 139000.0000)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
***/

/* category */
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'Nhà nệm')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'Thức ăn')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'Đồ chơi')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'Phụ kiện')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'Chăm sóc')
SET IDENTITY_INSERT [dbo].[category] OFF

/* product */
/* cid 1 */
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PH01', 1, N'nhà nệm cho chó', 50000.0000, N'đẹp', 186, N'images/PH01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PH02', 1, N'nhà nệm tròn', 20000.0000, N'đẹp', 126, N'images/PH02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PH03', 1, N'nhà gỗ', 30000.0000, N'đẹp', 75, N'images/PH03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PN01', 1, N'Thảm', 15000.0000, N'đẹp', 100, N'images/PN01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PN02', 1, N'Thảm cho chó', 50000.0000, N'đẹp', 65, N'images/PN02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PN03', 1, N'Thảm cho chó', 30000.0000, N'đẹp', 30, N'images/PN03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PN04', 1, N'Thảm cho chó', 40000.0000, N'đẹp', 20, N'images/PN04.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'PN05', 1, N'Thảm cho chó', 20000.0000, N'đẹp', 55, N'images/PN05.png', 1)
/* cid 2 */
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TK01', 2, N'Thức ăn hạt khô', 20000.0000, N'ngon', 155, N'images/TK01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TK02', 2, N'Thức ăn hạt khô', 20000.0000, N'ngon', 155, N'images/TK02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TK03', 2, N'Thức ăn hạt khô', 20000.0000, N'ngon', 155, N'images/TK03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TK04', 2, N'Thức ăn hạt khô', 20000.0000, N'ngon', 155, N'images/TK04.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TP01', 2, N'Pate', 20000.0000, N'ngon', 155, N'images/TP01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TP02', 2, N'Pate', 20000.0000, N'ngon', 155, N'images/TP02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TP03', 2, N'Pate', 20000.0000, N'ngon', 155, N'images/TP03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'TP04', 2, N'Pate', 20000.0000, N'ngon', 155, N'images/TP04.png', 1)
/* cid 3 */
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CX01', 3, N'Xương fake', 20000.0000, N'vui', 155, N'images/CX01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CX02', 3, N'Xương fake', 20000.0000, N'vui', 155, N'images/CX02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CX03', 3, N'Xương fake', 20000.0000, N'vui', 155, N'images/CX03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CD01', 3, N'Đĩa bay', 10000.0000, N'vui', 155, N'images/CD01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CD02', 3, N'Đĩa bay', 10000.0000, N'vui', 155, N'images/CD02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CD03', 3, N'Đĩa bay', 10000.0000, N'vui', 155, N'images/CD03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'CD04', 3, N'Đĩa bay', 10000.0000, N'vui', 155, N'images/CD04.png', 1)
/* cid 4 */
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'IV01', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/IV01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'IV02', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/IV02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID01', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID02', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID03', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID04', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID04.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID05', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID05.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ID06', 4, N'Vòng cổ', 10000.0000, N'chất', 123, N'images/ID06.png', 1)
/* cid 5 */
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ST01', 5, N'Sữa tắm', 32100.0000, N'sạch thơm sáng mịn', 123, N'images/ST01.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ST02', 5, N'Sữa tắm', 32100.0000, N'sạch thơm sáng mịn', 123, N'images/ST02.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ST03', 5, N'Sữa tắm', 32100.0000, N'sạch thơm sáng mịn', 123, N'images/ST03.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ST04', 5, N'Sữa tắm', 32100.0000, N'sạch thơm sáng mịn', 123, N'images/ST04.png', 1)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img], [sell]) 
VALUES (N'ST05', 5, N'Sữa tắm', 32100.0000, N'sạch thơm sáng mịn', 123, N'images/ST05.png', 1)

/* users */
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (1, N'Admin', N'kbui0212@gmail.com', N'KiEn02122002', N'TRUE', 1)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (2, N'kiên', N'vankien', N'2002', N'FALSE', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (3, N'hiếu', N'minhhieu@gmail.com', N'123456', N'FALSE', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (4, N'quang', N'quang02@gmail.com', N'111111', N'FALSE', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (5, N'văn', N'van1@gmail.com', N'123123', N'FALSE', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [isSell]) VALUES (6, N'bùi', N'bui2@gmail.com', N'888888', N'FALSE', 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO



ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_users]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
