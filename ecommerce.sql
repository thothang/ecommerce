USE [ecommerce]
GO
/****** Object:  Table [dbo].[address]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address_line_1] [varchar](512) NOT NULL,
	[address_line_2] [varchar](512) NULL,
	[city] [varchar](255) NOT NULL,
	[country] [varchar](75) NOT NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventory]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[product_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[local_user]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [varchar](320) NOT NULL,
	[firstname] [varchar](255) NOT NULL,
	[lastname] [varchar](255) NOT NULL,
	[password] [varchar](1000) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[email_verified] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[long_description] [varchar](255) NULL,
	[name] [varchar](255) NOT NULL,
	[price] [float] NOT NULL,
	[short_description] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_data_object]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_data_object](
	[id] [bigint] NOT NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_token]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_token](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_timestamp] [datetime2](6) NOT NULL,
	[token] [varchar](max) NOT NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_order]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_order](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_order_quantities]    Script Date: 11/30/2023 11:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_order_quantities](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([id], [address_line_1], [address_line_2], [city], [country], [user_id]) VALUES (5, N'123 Tester Hill', NULL, N'Testerton', N'England', 8)
INSERT [dbo].[address] ([id], [address_line_1], [address_line_2], [city], [country], [user_id]) VALUES (6, N'312 Spring Boot', NULL, N'Hibernate', N'England', 9)
SET IDENTITY_INSERT [dbo].[address] OFF
GO
SET IDENTITY_INSERT [dbo].[inventory] ON 

INSERT [dbo].[inventory] ([id], [quantity], [product_id]) VALUES (11, 5, 11)
INSERT [dbo].[inventory] ([id], [quantity], [product_id]) VALUES (12, 8, 12)
INSERT [dbo].[inventory] ([id], [quantity], [product_id]) VALUES (13, 12, 13)
INSERT [dbo].[inventory] ([id], [quantity], [product_id]) VALUES (14, 73, 14)
INSERT [dbo].[inventory] ([id], [quantity], [product_id]) VALUES (15, 2, 15)
SET IDENTITY_INSERT [dbo].[inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[local_user] ON 

INSERT [dbo].[local_user] ([id], [email], [firstname], [lastname], [password], [username], [email_verified]) VALUES (8, N'test1@gmail.com', N'Nguyen', N'Thang', N'$2a$10$ovvUO3kdGfiRxpcdeU7Zt.5mMmm7MluIXmx1MkthoOogD4qrpKMzq', N'test_1', 1)
INSERT [dbo].[local_user] ([id], [email], [firstname], [lastname], [password], [username], [email_verified]) VALUES (9, N'test2@gmail.com', N'Nguyen', N'Thang', N'$2a$10$ovvUO3kdGfiRxpcdeU7Zt.5mMmm7MluIXmx1MkthoOogD4qrpKMzq', N'test_2', 0)
SET IDENTITY_INSERT [dbo].[local_user] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [long_description], [name], [price], [short_description]) VALUES (11, N'This is a very long description of product #1.', N'Product #1', 5.5, N'Product one short description.')
INSERT [dbo].[product] ([id], [long_description], [name], [price], [short_description]) VALUES (12, N'This is a very long description of product #2.', N'Product #2', 10.56, N'Product two short description.')
INSERT [dbo].[product] ([id], [long_description], [name], [price], [short_description]) VALUES (13, N'This is a very long description of product #3.', N'Product #3', 2.74, N'Product three short description.')
INSERT [dbo].[product] ([id], [long_description], [name], [price], [short_description]) VALUES (14, N'This is a very long description of product #4.', N'Product #4', 15.69, N'Product four short description.')
INSERT [dbo].[product] ([id], [long_description], [name], [price], [short_description]) VALUES (15, N'This is a very long description of product #5.', N'Product #5', 42.59, N'Product five short description.')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[verification_token] ON 

INSERT [dbo].[verification_token] ([id], [created_timestamp], [token], [user_id]) VALUES (1, CAST(N'2023-11-30T22:14:46.2340000' AS DateTime2), N'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJlQ29tbWVyY2UiLCJWRVJJRklDQVRJT05fRU1BSUwiOiJ0ZXN0MkBnbWFpbC5jb20iLCJleHAiOjE3MDE5NjIwODZ9.ybNJ7QLEKYu8fop_ytyWwMIg-B7sbuzT1VM6mN8vmhI', 9)
INSERT [dbo].[verification_token] ([id], [created_timestamp], [token], [user_id]) VALUES (2, CAST(N'2023-11-30T22:18:41.7490000' AS DateTime2), N'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJlQ29tbWVyY2UiLCJWRVJJRklDQVRJT05fRU1BSUwiOiJ0ZXN0MUBnbWFpbC5jb20iLCJleHAiOjE3MDE5NjIzMjF9.8gsJC0yGBkQJzAd9xuPYIZvGbfN_K6tSeIxvuB_to1g', 8)
SET IDENTITY_INSERT [dbo].[verification_token] OFF
GO
SET IDENTITY_INSERT [dbo].[web_order] ON 

INSERT [dbo].[web_order] ([id], [address_id], [user_id]) VALUES (11, 5, 8)
INSERT [dbo].[web_order] ([id], [address_id], [user_id]) VALUES (12, 5, 8)
INSERT [dbo].[web_order] ([id], [address_id], [user_id]) VALUES (13, 5, 8)
INSERT [dbo].[web_order] ([id], [address_id], [user_id]) VALUES (14, 6, 9)
INSERT [dbo].[web_order] ([id], [address_id], [user_id]) VALUES (15, 6, 9)
SET IDENTITY_INSERT [dbo].[web_order] OFF
GO
SET IDENTITY_INSERT [dbo].[web_order_quantities] ON 

INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (21, 5, 13, 11)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (22, 5, 13, 12)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (23, 5, 12, 13)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (24, 5, 12, 12)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (25, 5, 12, 15)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (26, 5, 11, 13)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (27, 5, 15, 14)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (28, 5, 15, 12)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (29, 5, 14, 13)
INSERT [dbo].[web_order_quantities] ([id], [quantity], [order_id], [product_id]) VALUES (30, 5, 14, 11)
SET IDENTITY_INSERT [dbo].[web_order_quantities] OFF
GO
/****** Object:  Index [UK_ce3rbi3bfstbvvyne34c1dvyv]    Script Date: 11/30/2023 11:04:58 PM ******/
ALTER TABLE [dbo].[inventory] ADD  CONSTRAINT [UK_ce3rbi3bfstbvvyne34c1dvyv] UNIQUE NONCLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_46f7ufu7j9nkhuyfly98to4u1]    Script Date: 11/30/2023 11:04:58 PM ******/
ALTER TABLE [dbo].[local_user] ADD  CONSTRAINT [UK_46f7ufu7j9nkhuyfly98to4u1] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_93d93k106ik2383youkc9bixl]    Script Date: 11/30/2023 11:04:58 PM ******/
ALTER TABLE [dbo].[local_user] ADD  CONSTRAINT [UK_93d93k106ik2383youkc9bixl] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_jmivyxk9rmgysrmsqw15lqr5b]    Script Date: 11/30/2023 11:04:58 PM ******/
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [UK_jmivyxk9rmgysrmsqw15lqr5b] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[local_user] ADD  DEFAULT ((0)) FOR [email_verified]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FKkb7b5aavt0mlydpvdiuesa9r8] FOREIGN KEY([user_id])
REFERENCES [dbo].[local_user] ([id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FKkb7b5aavt0mlydpvdiuesa9r8]
GO
ALTER TABLE [dbo].[inventory]  WITH CHECK ADD  CONSTRAINT [FKp7gj4l80fx8v0uap3b2crjwp5] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[inventory] CHECK CONSTRAINT [FKp7gj4l80fx8v0uap3b2crjwp5]
GO
ALTER TABLE [dbo].[verification_token]  WITH CHECK ADD  CONSTRAINT [FK8tx2aau9yc0gsxb82192wkyyl] FOREIGN KEY([user_id])
REFERENCES [dbo].[local_user] ([id])
GO
ALTER TABLE [dbo].[verification_token] CHECK CONSTRAINT [FK8tx2aau9yc0gsxb82192wkyyl]
GO
ALTER TABLE [dbo].[web_order]  WITH CHECK ADD  CONSTRAINT [FK65jlvhv84w95l6dimcc1p6hqr] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([id])
GO
ALTER TABLE [dbo].[web_order] CHECK CONSTRAINT [FK65jlvhv84w95l6dimcc1p6hqr]
GO
ALTER TABLE [dbo].[web_order]  WITH CHECK ADD  CONSTRAINT [FK8mvneqqd44higf18x0m67bg29] FOREIGN KEY([user_id])
REFERENCES [dbo].[local_user] ([id])
GO
ALTER TABLE [dbo].[web_order] CHECK CONSTRAINT [FK8mvneqqd44higf18x0m67bg29]
GO
ALTER TABLE [dbo].[web_order_quantities]  WITH CHECK ADD  CONSTRAINT [FK654x9lb2ii9jrhsriicg518iw] FOREIGN KEY([order_id])
REFERENCES [dbo].[web_order] ([id])
GO
ALTER TABLE [dbo].[web_order_quantities] CHECK CONSTRAINT [FK654x9lb2ii9jrhsriicg518iw]
GO
ALTER TABLE [dbo].[web_order_quantities]  WITH CHECK ADD  CONSTRAINT [FKi7eexulg463xqvxgykc3qqx0a] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[web_order_quantities] CHECK CONSTRAINT [FKi7eexulg463xqvxgykc3qqx0a]
GO
