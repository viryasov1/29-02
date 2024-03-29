USE [Car Dealership]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 29.02.2024 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 29.02.2024 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Year_Of_Production] [date] NOT NULL,
	[Colour] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[Id_Stamp] [int] NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29.02.2024 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Experience] [nvarchar](50) NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 29.02.2024 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Id_Employee] [int] NOT NULL,
	[Id_Buyer] [int] NOT NULL,
	[Id_Car] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stamp]    Script Date: 29.02.2024 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stamp](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Country_Of_Origin] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stamp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Buyer] ([Id], [Surname], [Name], [Patronymic], [Address], [City], [Age], [Gender]) VALUES (1, N'Колесов', N'Иван', N'Анатольевич', N'ул.Простая, д.5', N'г.Москва', 23, N'Мужской   ')
INSERT [dbo].[Buyer] ([Id], [Surname], [Name], [Patronymic], [Address], [City], [Age], [Gender]) VALUES (2, N'Чехова', N'Лидия', N'Владимировна', N'ул.Должная, д.34', N'г.Москва', 21, N'Женский   ')
INSERT [dbo].[Buyer] ([Id], [Surname], [Name], [Patronymic], [Address], [City], [Age], [Gender]) VALUES (3, N'Каледин', N'Юрий', N'Михайлович', N'ул.Суворовская, д.43', N'г.Иваново', 30, N'Мужской   ')
INSERT [dbo].[Buyer] ([Id], [Surname], [Name], [Patronymic], [Address], [City], [Age], [Gender]) VALUES (4, N'Калякин', N'Евгений', N'Владимирович', N'ул.Пушкина, д.5', N'г.Санкт-Петербург', 20, N'Мужской   ')
INSERT [dbo].[Buyer] ([Id], [Surname], [Name], [Patronymic], [Address], [City], [Age], [Gender]) VALUES (5, N'Кашоков', N'Михаил', N'Алексеевич', N'ул.Судный, д.2', N'г.Лукоянов', 24, N'Мужской   ')
GO
INSERT [dbo].[Car] ([Id], [Title], [Year_Of_Production], [Colour], [Category], [Cost], [Id_Stamp]) VALUES (1, N'Лада', CAST(N'2009-02-01' AS Date), N'Зеленый', N'Ездить', 200000.0000, 1)
INSERT [dbo].[Car] ([Id], [Title], [Year_Of_Production], [Colour], [Category], [Cost], [Id_Stamp]) VALUES (2, N'Лада', CAST(N'2010-02-03' AS Date), N'Красный', N'Ездить', 350000.0000, 2)
INSERT [dbo].[Car] ([Id], [Title], [Year_Of_Production], [Colour], [Category], [Cost], [Id_Stamp]) VALUES (3, N'Лада', CAST(N'2006-02-04' AS Date), N'Зеленый', N'Улет', 1000000.0000, 3)
GO
INSERT [dbo].[Employee] ([Id], [Surname], [Name], [Patronymic], [Experience], [Salary]) VALUES (1, N'Сыроегин', N'Владислав', N'Владимирович', N'5 лет', 30000.0000)
INSERT [dbo].[Employee] ([Id], [Surname], [Name], [Patronymic], [Experience], [Salary]) VALUES (2, N'Михалков', N'Валерий', N'Юрьевич', N'3 года', 20000.0000)
INSERT [dbo].[Employee] ([Id], [Surname], [Name], [Patronymic], [Experience], [Salary]) VALUES (3, N'Михалков', N'Александр', N'Юрьевич', N'2 года', 15000.0000)
INSERT [dbo].[Employee] ([Id], [Surname], [Name], [Patronymic], [Experience], [Salary]) VALUES (4, N'Алексеев', N'Михаил', N'Владимирович', N'5 лет', 35000.0000)
INSERT [dbo].[Employee] ([Id], [Surname], [Name], [Patronymic], [Experience], [Salary]) VALUES (5, N'Караванов', N'Иван', N'Александрович', N'1,5 года', 10000.0000)
GO
INSERT [dbo].[Sale] ([Id], [Date], [Id_Employee], [Id_Buyer], [Id_Car]) VALUES (1, CAST(N'2023-04-03' AS Date), 1, 1, 1)
INSERT [dbo].[Sale] ([Id], [Date], [Id_Employee], [Id_Buyer], [Id_Car]) VALUES (2, CAST(N'2024-06-07' AS Date), 2, 2, 2)
INSERT [dbo].[Sale] ([Id], [Date], [Id_Employee], [Id_Buyer], [Id_Car]) VALUES (3, CAST(N'2024-02-01' AS Date), 3, 3, 3)
GO
INSERT [dbo].[Stamp] ([Id], [Title], [Country_Of_Origin], [Manufacturer], [Address]) VALUES (1, N'Лада2110', N'Россия', N'Автоваз', N'г.Тольяти')
INSERT [dbo].[Stamp] ([Id], [Title], [Country_Of_Origin], [Manufacturer], [Address]) VALUES (2, N'Лада2111', N'Россия', N'Автоваз', N'г.Тольяти')
INSERT [dbo].[Stamp] ([Id], [Title], [Country_Of_Origin], [Manufacturer], [Address]) VALUES (3, N'Лада2107', N'Россия', N'Автоваз', N'г.Тольяти')
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Stamp] FOREIGN KEY([Id_Stamp])
REFERENCES [dbo].[Stamp] ([Id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Stamp]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Buyer] FOREIGN KEY([Id_Buyer])
REFERENCES [dbo].[Buyer] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Buyer]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Car] FOREIGN KEY([Id_Car])
REFERENCES [dbo].[Car] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Car]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Employee] FOREIGN KEY([Id_Employee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Employee]
GO
