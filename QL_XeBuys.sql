CREATE DATABASE [ROUTE_MANAGEMENT]
USE [ROUTE_MANAGEMENT]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[BusID] [int] IDENTITY(1,1) NOT NULL,
	[LicensePlates] [nvarchar](200) NOT NULL,
	[BusNumber] [nvarchar](200) NOT NULL,
	[SumSeats] [int] NOT NULL,
	[Status] [nvarchar](200) NOT NULL,
	[BusTypeID] [int] NOT NULL,
	[RoutesID] [int] NOT NULL,
 CONSTRAINT [PK_Bus] PRIMARY KEY CLUSTERED 
(
	[BusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusType](
	[BusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CarMaker] [nvarchar](100) NOT NULL,
	
 CONSTRAINT [PK_BusType] PRIMARY KEY CLUSTERED 
(
	[BusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[BusRoutes](
	[BusRouteID] INT IDENTITY(1,1) NOT NULL,
	[RouteNumber] NVARCHAR(200) NOT NULL,
	[RouteName] NVARCHAR(200) NOT NULL,
	[ResponsibleUnitID] INT NOT NULL,
	[OperationType] NVARCHAR(200) NOT NULL,
	[OperationTime] DATETIME NOT NULL,
	[Fare] INT NOT NULL,
	[BusesAmount] INT NOT NULL,
	[BusesTime] DATETIME NOT NULL,
	[BusesSpace] DATETIME NOT NULL

	CONSTRAINT [PK_BusRoutes] PRIMARY KEY CLUSTERED
	(
		[BusRouteID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[ResponsibleUnit](
	[ResponsibleUnitID] INT IDENTITY(1,1) NOT NULL,
	[ReponsibleUnitName] NVARCHAR(200) NOT NULL,
	[PhoneNumber] INT NOT NULL

	CONSTRAINT [PK_ReponsibleUnit] PRIMARY KEY CLUSTERED
	(
		[ResponsibleUnitID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[BusStop]
(
	[BusStopID] INT IDENTITY(1,1) NOT NULL,
	[BusStopName] NVARCHAR(200) NOT NULL,
	[BusStopDescription] NVARCHAR(200) NOT NULL,
	[Latitude] FLOAT NOT NULL,
	[Longitude] FLOAT NOT NULL,
	[Street] NVARCHAR(200) NOT NULL,
	[Wards] NVARCHAR(200),
	[District] NVARCHAR(200) NOT NULL

	CONSTRAINT [PK_BusStop] PRIMARY KEY CLUSTERED
	(
		[BusStopID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Route]
(
	[RouteID] INT IDENTITY(1,1) NOT NULL,
	[BusRoutesID] INT NOT NULL,
	[StartPositionID] INT NOT NULL,
	[EndPositionID] INT NOT NULL,
	[RouteName] NVARCHAR(200) NOT NULL,
	[RouteAmount] INT NOT NULL,
	[RouteTime] TIME NOT NULL,
	[StartTime] DATETIME NOT NULL,
	[EndTime] DATETIME NOT NULL,
	[ApplicableDate] DATE NOT NULL,
	[OperationDate] DATE NOT NULL

	CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED
	(
		[RouteID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Stop_Route]
(
	[StopRouteID] INT IDENTITY(1,1) NOT NULL,
	[RouteID] INT NOT NULL,
	[EndPositionID] INT NOT NULL,
	[Order] INT NOT NULL

	CONSTRAINT [PK_Stop_Route] PRIMARY KEY CLUSTERED
	(
		[StopRouteID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Routes]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[RouteID] INT NOT NULL,
	[NumberRoutes] NVARCHAR(200) NOT NULL,
	[StartTime] DATETIME,
	[EndTime] DATETIME,

	CONSTRAINT [PK_Routes] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[MENU]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
	[Link] NVARCHAR(1000) NOT NULL,
	[Icon] NVARCHAR(200) NOT NULL,
	[Mota] NVARCHAR(100) NOT NULL,
	[TypeMenuID] NVARCHAR(200) NOT NULL, 

	CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[TypePosts]
(
	[TypePostsID] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
	
	CONSTRAINT [PK_TypePosts] PRIMARY KEY CLUSTERED
	(
		[TypePostsID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[POSTS]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[Title] NVARCHAR(1000) NOT NULL,
	[NgayDang] DATETIME,
	[Content] NVARCHAR(1000) NOT NULL,
	[Rank] INT,
	[Comments] NVARCHAR(1000), 
	[NumberOfReviews] INT NOT NULL,
	[NumberOfResponse] INT NOT NULL,
	[CoverImage] NVARCHAR(1000),
	[Link] NVARCHAR(200),
	[TypePostsID] INT NOT NULL,

	CONSTRAINT [PK_POSTS] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Driver_Bus]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[DriverID] INT NOT NULL,
	[BusID] INT NOT NULL,
	[DepartureDay] DATETIME,
	CONSTRAINT [PK_Driver_Bus] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Driver]
(
	[DriverID] INT IDENTITY(1,1) NOT NULL,
	[FullName] NVARCHAR(200) NOT NULL,
	[IDCard] NVARCHAR(200) NOT NULL,
	[Sex] BIT NOT NULL,
	[DayOfBirth] DATETIME NOT NULL,
	[HomeTown] NVARCHAR(200) NOT NULL,


	CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED
	(
		[DriverID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[ReflectType]
(
	[ReflectTypeID] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
	
	CONSTRAINT [PK_ReflectType] PRIMARY KEY CLUSTERED
	(
		[ReflectTypeID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Reflect]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[ReflectTypeID] INT NOT NULL,
	[Title] NVARCHAR(200) NOT NULL,
	[Email] NVARCHAR(200) NOT NULL,
	[FullName] NVARCHAR(200) NOT NULL,
	[PhoneNumber] NVARCHAR(200) NOT NULL,
	[Content] NVARCHAR(1000) NOT NULL,
	[VideoOrPicture] NVARCHAR(1000) NOT NULL,
	[Status] NVARCHAR(200) NOT NULL,
	
	CONSTRAINT [PK_Reflect] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[HandlingViolations]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[Title] NVARCHAR(200) NOT NULL,
	[ResponsibleUnitID] INT NOT NULL,
	[ProcessingTime] DATETIME NOT NULL,
	[Content] NVARCHAR(1000) NOT NULL,
	
	CONSTRAINT [PK_HandlingViolations] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Information]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[Title] NVARCHAR(200) NOT NULL,
	[DateSubmitted] DATETIME NOT NULL,
	[Content] NVARCHAR(1000) NOT NULL,
	
	CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[Document]
(
	[ID] INT IDENTITY(1,1) NOT NULL,
	[Title] NVARCHAR(200) NOT NULL,
	[Path] NVARCHAR(1000) NOT NULL,
	[Content] NVARCHAR(1000) NOT NULL,
	[DocumentTypeID] INT NOT NULL,
	
	CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO	

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO	
CREATE TABLE [dbo].[DocumentType]
(
	[DocumentTypeID] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,

	CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED
	(
		[DocumentTypeID] ASC
	)WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO
insert into dbo.ReflectType values (N'Chất lượng vi phạm xe buýt')
insert into dbo.ReflectType values (N'Hạ tầng bến bãi xe buýt')
insert into dbo.ReflectType values (N'Lộ trình thời gian hoạt động tuyến')
insert into dbo.ReflectType values (N'Gương người tốt việc tốt khen thưởng')
insert into dbo.ReflectType values (N'Chê Trách')
insert into dbo.ReflectType values (N'Khen Thưởng')
insert into dbo.ReflectType values (N'Vi phạm an toàn giao thông')
insert into dbo.ReflectType values (N'Vi phạm an toàn đường bộ')
insert into dbo.ReflectType values (N'Khen thưởng tuyên dương')
insert into dbo.ReflectType values (N'Vi phạm bến đậu')
insert into dbo.ReflectType values (N'khen thưởng 11')

insert into dbo.Reflect values (1,'chất lượng vi phạm xe buýt đang có chuyeefu hướng đi lên','emxinbotay0711@gmail.com','Phan Quốc Huy','0904941277','Tôi rất mong các cơ quan đơn nghành vào cuộc khắc phục ngay ','../images/08854f5c83695a370378.jpg','Đã Xử Lý')
insert into dbo.Reflect values(2,N'Hạ tầng xuống cấp nghiêm trọng',N'phanquochuy2001na@gmail.com',N'Phan Quốc Huy',N'0904941277',N'rất mong các cơ quan đoàn thể vào cuộc giải quyết',N'../images/image_67517953.JPG',N'Đã Xử Lý')
insert into dbo.Reflect values (1,'chất lượng vi phạm xe buýt đang có hướng đi lên','emxinbotay0711@gmail.com',N'Phan Quốc Huy','0904941277',N'Tôi rất mong các cơ quan đơn nghành vào cuộc khắc phục ngay ','../images/08854f5c83695a370378.jpg',N'Đã Xử Lý')
insert into dbo.Reflect values(2,N'Hạ tầng xuống cấp nghiêm trọng hơn',N'phanquochuy2001na@gmail.com',N'Phan Quốc Huy',N'0904941277',N'rất mong các cơ quan đoàn thể vào cuộc giải quyết',N'../images/image_67517953.JPG',N'Đã Xử Lý')
insert into dbo.Reflect values (1,N'chất lượng vi phạm xe buýt đang rất phức tạp','emxinbotay0711@gmail.com',N'Phan Quốc Huy','0904941277',N'Tôi rất mong các cơ quan đơn nghành vào cuộc khắc phục ngay ','../images/08854f5c83695a370378.jpg',N'Đã Xử Lý')
insert into dbo.Reflect values(2,N'Hạ tầng xuống cấp trầm trọng',N'phanquochuy2001na@gmail.com',N'Phan Quốc Huy',N'0904941277',N'rất mong các cơ quan đoàn thể vào cuộc giải quyết',N'../images/image_67517953.JPG',N'Đã Xử Lý')
insert into dbo.Reflect values (1,N'chất lượng vi phạm xe buýt nhiều hơn tháng trước','emxinbotay0711@gmail.com',N'Phan Quốc Huy','0904941277',N'Tôi rất mong các cơ quan đơn nghành vào cuộc khắc phục ngay ','../images/08854f5c83695a370378.jpg','Đã Xử Lý')
insert into dbo.Reflect values(2,N'Hạ tầng xuống cấp trong năm nay',N'phanquochuy2001na@gmail.com',N'Phan Quốc Huy',N'0904941277',N'rất mong các cơ quan đoàn thể vào cuộc giải quyết',N'../images/image_67517953.JPG',N'Đã Xử Lý')