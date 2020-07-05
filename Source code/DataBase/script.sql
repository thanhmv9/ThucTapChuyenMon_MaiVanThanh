USE [HotelManagement]
GO
/****** Object:  Table [dbo].[ACCESS]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCESS](
	[IDStaffType] [int] NOT NULL,
	[IDJob] [int] NOT NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[IDStaffType] ASC,
	[IDJob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDReceiveRoom] [int] NOT NULL,
	[StaffSetUp] [nvarchar](100) NOT NULL,
	[DateOfCreate] [smalldatetime] NULL,
	[RoomPrice] [int] NOT NULL,
	[ServicePrice] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[IDStatusBill] [int] NOT NULL,
	[Surcharge] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[IDBill] [int] NOT NULL,
	[IDService] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
 CONSTRAINT [PK_BillInfo] PRIMARY KEY CLUSTERED 
(
	[IDService] ASC,
	[IDBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookRoom]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDCustomer] [int] NOT NULL,
	[IDRoomType] [int] NOT NULL,
	[DateBookRoom] [smalldatetime] NOT NULL,
	[DateCheckIn] [date] NOT NULL,
	[DateCheckOut] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDCard] [nvarchar](100) NOT NULL,
	[IDCustomerType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[Sex] [nvarchar](100) NOT NULL,
	[Nationality] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IDCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[NameForm] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[Name] [nvarchar](100) NOT NULL,
	[Value] [float] NULL,
	[Describe] [nvarchar](200) NULL,
	[DateModify] [smalldatetime] NULL,
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveRoom]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBookRoom] [int] NOT NULL,
	[IDRoom] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveRoomDetails]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveRoomDetails](
	[IDReceiveRoom] [int] NOT NULL,
	[IDCustomerOther] [int] NOT NULL,
 CONSTRAINT [PK_ReceiveRoomDetails] PRIMARY KEY CLUSTERED 
(
	[IDReceiveRoom] ASC,
	[IDCustomerOther] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT](
	[idRoomType] [int] NOT NULL,
	[value] [int] NOT NULL,
	[rate] [float] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[idRoomType] ASC,
	[Month] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IDRoomType] [int] NOT NULL,
	[IDStatusRoom] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[LimitPerson] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[IDServiceType] [int] NOT NULL,
	[Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](100) NOT NULL,
	[IDStaffType] [int] NOT NULL,
	[IDCard] [nvarchar](100) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Sex] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[StartDay] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IDCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffType]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusBill]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusBill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusRoom]    Script Date: 7/5/2020 8:51:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [DateOfCreate]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [RoomPrice]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [ServicePrice]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__IDStatusBi__1DB06A4F]  DEFAULT ((1)) FOR [IDStatusBill]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [Surcharge]
GO
ALTER TABLE [dbo].[BillDetails] ADD  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[CustomerType] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[Parameter] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[Parameter] ADD  DEFAULT (getdate()) FOR [DateModify]
GO
ALTER TABLE [dbo].[REPORT] ADD  DEFAULT ((0)) FOR [value]
GO
ALTER TABLE [dbo].[REPORT] ADD  DEFAULT ((0)) FOR [rate]
GO
ALTER TABLE [dbo].[REPORT] ADD  DEFAULT ((1)) FOR [Month]
GO
ALTER TABLE [dbo].[REPORT] ADD  DEFAULT ((1990)) FOR [Year]
GO
ALTER TABLE [dbo].[Room] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[RoomType] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[Service] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (N'No Name') FOR [DisplayName]
GO
ALTER TABLE [dbo].[StaffType] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[StatusBill] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[StatusRoom] ADD  DEFAULT (N'No Name') FOR [Name]
GO
ALTER TABLE [dbo].[ACCESS]  WITH CHECK ADD FOREIGN KEY([IDJob])
REFERENCES [dbo].[JOB] ([ID])
GO
ALTER TABLE [dbo].[ACCESS]  WITH CHECK ADD FOREIGN KEY([IDStaffType])
REFERENCES [dbo].[StaffType] ([ID])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([IDReceiveRoom])
REFERENCES [dbo].[ReceiveRoom] ([ID])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([IDStatusBill])
REFERENCES [dbo].[StatusBill] ([ID])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([StaffSetUp])
REFERENCES [dbo].[Staff] ([UserName])
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD FOREIGN KEY([IDBill])
REFERENCES [dbo].[Bill] ([ID])
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[BookRoom]  WITH CHECK ADD FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[BookRoom]  WITH CHECK ADD FOREIGN KEY([IDRoomType])
REFERENCES [dbo].[RoomType] ([ID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([IDCustomerType])
REFERENCES [dbo].[CustomerType] ([ID])
GO
ALTER TABLE [dbo].[ReceiveRoom]  WITH CHECK ADD FOREIGN KEY([IDBookRoom])
REFERENCES [dbo].[BookRoom] ([ID])
GO
ALTER TABLE [dbo].[ReceiveRoom]  WITH CHECK ADD FOREIGN KEY([IDRoom])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[ReceiveRoomDetails]  WITH CHECK ADD FOREIGN KEY([IDCustomerOther])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[ReceiveRoomDetails]  WITH CHECK ADD FOREIGN KEY([IDReceiveRoom])
REFERENCES [dbo].[ReceiveRoom] ([ID])
GO
ALTER TABLE [dbo].[REPORT]  WITH CHECK ADD FOREIGN KEY([idRoomType])
REFERENCES [dbo].[RoomType] ([ID])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([IDRoomType])
REFERENCES [dbo].[RoomType] ([ID])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([IDStatusRoom])
REFERENCES [dbo].[StatusRoom] ([ID])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD FOREIGN KEY([IDServiceType])
REFERENCES [dbo].[ServiceType] ([ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([IDStaffType])
REFERENCES [dbo].[StaffType] ([ID])
GO
