USE [JustMuesliDataBase]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ISOCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muesli]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muesli](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEN] [nvarchar](50) NOT NULL,
	[NameDE] [nvarchar](50) NOT NULL,
	[Protein] [float] NOT NULL,
	[Carbohydrates] [float] NOT NULL,
	[Fat] [float] NOT NULL,
	[PortionSize] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[TypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Muesli] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuesliIngredient]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuesliIngredient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MuesliId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL,
 CONSTRAINT [PK_MuesliIngredient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuesliMix]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuesliMix](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UserId] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_MuesliMix] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuesliMixMuesli]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuesliMixMuesli](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MuesliMixId] [int] NOT NULL,
	[MuesliId] [int] NOT NULL,
	[Grams] [int] NULL,
 CONSTRAINT [PK_MuesliMixMuesli] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMuesliMixes]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMuesliMixes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[MuesliMixId] [int] NOT NULL,
 CONSTRAINT [PK_OrderMuesliMixes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/23/2021 11:29:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Zip] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (1, N'AFGHANISTAN', N'AF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (2, N'ÅLAND ISLANDS', N'AX')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (3, N'ALBANIA', N'AL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (4, N'ALGERIA', N'DZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (5, N'AMERICAN SAMOA', N'AS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (6, N'ANDORRA', N'AD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (7, N'ANGOLA', N'AO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (8, N'ANGUILLA', N'AI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (9, N'ANTARCTICA', N'AQ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (10, N'ANTIGUA AND BARBUDA', N'AG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (11, N'ARGENTINA', N'AR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (12, N'ARMENIA', N'AM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (13, N'ARUBA', N'AW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (14, N'AUSTRALIA', N'AU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (15, N'AUSTRIA', N'AT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (16, N'AZERBAIJAN', N'AZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (17, N'BAHAMAS', N'BS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (18, N'BAHRAIN', N'BH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (19, N'BANGLADESH', N'BD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (20, N'BARBADOS', N'BB')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (21, N'BELARUS', N'BY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (22, N'BELGIUM', N'BE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (23, N'BELIZE', N'BZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (24, N'BENIN', N'BJ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (25, N'BERMUDA', N'BM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (26, N'BHUTAN', N'BT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (27, N'BOLIVIA, PLURINATIONAL STATE OF', N'BO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (28, N'BONAIRE, SINT EUSTATIUS AND SABA', N'BQ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (29, N'BOSNIA AND HERZEGOVINA', N'BA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (30, N'BOTSWANA', N'BW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (31, N'BOUVET ISLAND', N'BV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (32, N'BRAZIL', N'BR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (33, N'BRITISH INDIAN OCEAN TERRITORY', N'IO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (34, N'BRUNEI DARUSSALAM', N'BN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (35, N'BULGARIA', N'BG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (36, N'BURKINA FASO', N'BF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (37, N'BURUNDI', N'BI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (38, N'CAMBODIA', N'KH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (39, N'CAMEROON', N'CM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (40, N'CANADA', N'CA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (41, N'CAPE VERDE', N'CV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (42, N'CAYMAN ISLANDS', N'KY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (43, N'CENTRAL AFRICAN REPUBLIC', N'CF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (44, N'CHAD', N'TD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (45, N'CHILE', N'CL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (46, N'CHINA', N'CN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (47, N'CHRISTMAS ISLAND', N'CX')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (48, N'COCOS (KEELING) ISLANDS', N'CC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (49, N'COLOMBIA', N'CO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (50, N'COMOROS', N'KM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (51, N'CONGO', N'CG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (52, N'CONGO, THE DEMOCRATIC REPUBLIC OF THE', N'CD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (53, N'COOK ISLANDS', N'CK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (54, N'COSTA RICA', N'CR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (55, N'CÔTE D''IVOIRE', N'CI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (56, N'CROATIA', N'HR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (57, N'CUBA', N'CU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (58, N'CURAÇAO', N'CW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (59, N'CYPRUS', N'CY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (60, N'CZECH REPUBLIC', N'CZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (61, N'DENMARK', N'DK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (62, N'DJIBOUTI', N'DJ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (63, N'DOMINICA', N'DM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (64, N'DOMINICAN REPUBLIC', N'DO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (65, N'ECUADOR', N'EC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (66, N'EGYPT', N'EG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (67, N'EL SALVADOR', N'SV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (68, N'EQUATORIAL GUINEA', N'GQ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (69, N'ERITREA', N'ER')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (70, N'ESTONIA', N'EE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (71, N'ETHIOPIA', N'ET')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (72, N'FALKLAND ISLANDS (MALVINAS)', N'FK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (73, N'FAROE ISLANDS', N'FO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (74, N'FIJI', N'FJ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (75, N'FINLAND', N'FI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (76, N'FRANCE', N'FR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (77, N'FRENCH GUIANA', N'GF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (78, N'FRENCH POLYNESIA', N'PF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (79, N'FRENCH SOUTHERN TERRITORIES', N'TF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (80, N'GABON', N'GA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (81, N'GAMBIA', N'GM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (82, N'GEORGIA', N'GE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (83, N'GERMANY', N'DE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (84, N'GHANA', N'GH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (85, N'GIBRALTAR', N'GI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (86, N'GREECE', N'GR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (87, N'GREENLAND', N'GL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (88, N'GRENADA', N'GD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (89, N'GUADELOUPE', N'GP')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (90, N'GUAM', N'GU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (91, N'GUATEMALA', N'GT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (92, N'GUERNSEY', N'GG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (93, N'GUINEA', N'GN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (94, N'GUINEA-BISSAU', N'GW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (95, N'GUYANA', N'GY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (96, N'HAITI', N'HT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (97, N'HEARD ISLAND AND MCDONALD ISLANDS', N'HM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (98, N'HOLY SEE (VATICAN CITY STATE)', N'VA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (99, N'HONDURAS', N'HN')
GO
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (100, N'HONG KONG', N'HK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (101, N'HUNGARY', N'HU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (102, N'ICELAND', N'IS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (103, N'INDIA', N'IN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (104, N'INDONESIA', N'ID')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (105, N'IRAN, ISLAMIC REPUBLIC OF', N'IR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (106, N'IRAQ', N'IQ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (107, N'IRELAND', N'IE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (108, N'ISLE OF MAN', N'IM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (109, N'ISRAEL', N'IL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (110, N'ITALY', N'IT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (111, N'JAMAICA', N'JM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (112, N'JAPAN', N'JP')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (113, N'JERSEY', N'JE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (114, N'JORDAN', N'JO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (115, N'KAZAKHSTAN', N'KZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (116, N'KENYA', N'KE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (117, N'KIRIBATI', N'KI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (118, N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', N'KP')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (119, N'KOREA, REPUBLIC OF', N'KR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (120, N'KUWAIT', N'KW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (121, N'KYRGYZSTAN', N'KG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (122, N'LAO PEOPLE''S DEMOCRATIC REPUBLIC', N'LA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (123, N'LATVIA', N'LV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (124, N'LEBANON', N'LB')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (125, N'LESOTHO', N'LS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (126, N'LIBERIA', N'LR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (127, N'LIBYA', N'LY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (128, N'LIECHTENSTEIN', N'LI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (129, N'LITHUANIA', N'LT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (130, N'LUXEMBOURG', N'LU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (131, N'MACAO', N'MO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (132, N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'MK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (133, N'MADAGASCAR', N'MG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (134, N'MALAWI', N'MW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (135, N'MALAYSIA', N'MY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (136, N'MALDIVES', N'MV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (137, N'MALI', N'ML')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (138, N'MALTA', N'MT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (139, N'MARSHALL ISLANDS', N'MH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (140, N'MARTINIQUE', N'MQ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (141, N'MAURITANIA', N'MR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (142, N'MAURITIUS', N'MU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (143, N'MAYOTTE', N'YT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (144, N'MEXICO', N'MX')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (145, N'MICRONESIA, FEDERATED STATES OF', N'FM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (146, N'MOLDOVA, REPUBLIC OF', N'MD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (147, N'MONACO', N'MC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (148, N'MONGOLIA', N'MN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (149, N'MONTENEGRO', N'ME')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (150, N'MONTSERRAT', N'MS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (151, N'MOROCCO', N'MA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (152, N'MOZAMBIQUE', N'MZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (153, N'MYANMAR', N'MM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (154, N'NAMIBIA', N'NA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (155, N'NAURU', N'NR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (156, N'NEPAL', N'NP')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (157, N'NETHERLANDS', N'NL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (158, N'NEW CALEDONIA', N'NC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (159, N'NEW ZEALAND', N'NZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (160, N'NICARAGUA', N'NI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (161, N'NIGER', N'NE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (162, N'NIGERIA', N'NG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (163, N'NIUE', N'NU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (164, N'NORFOLK ISLAND', N'NF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (165, N'NORTHERN MARIANA ISLANDS', N'MP')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (166, N'NORWAY', N'NO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (167, N'OMAN', N'OM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (168, N'PAKISTAN', N'PK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (169, N'PALAU', N'PW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (170, N'PALESTINIAN TERRITORY, OCCUPIED', N'PS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (171, N'PANAMA', N'PA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (172, N'PAPUA NEW GUINEA', N'PG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (173, N'PARAGUAY', N'PY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (174, N'PERU', N'PE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (175, N'PHILIPPINES', N'PH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (176, N'PITCAIRN', N'PN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (177, N'POLAND', N'PL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (178, N'PORTUGAL', N'PT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (179, N'PUERTO RICO', N'PR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (180, N'QATAR', N'QA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (181, N'RÉUNION', N'RE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (182, N'ROMANIA', N'RO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (183, N'RUSSIAN FEDERATION', N'RU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (184, N'RWANDA', N'RW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (185, N'SAINT BARTHÉLEMY', N'BL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (186, N'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', N'SH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (187, N'SAINT KITTS AND NEVIS', N'KN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (188, N'SAINT LUCIA', N'LC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (189, N'SAINT MARTIN (FRENCH PART)', N'MF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (190, N'SAINT PIERRE AND MIQUELON', N'PM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (191, N'SAINT VINCENT AND THE GRENADINES', N'VC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (192, N'SAMOA', N'WS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (193, N'SAN MARINO', N'SM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (194, N'SAO TOME AND PRINCIPE', N'ST')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (195, N'SAUDI ARABIA', N'SA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (196, N'SENEGAL', N'SN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (197, N'SERBIA', N'RS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (198, N'SEYCHELLES', N'SC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (199, N'SIERRA LEONE', N'SL')
GO
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (200, N'SINGAPORE', N'SG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (201, N'SINT MAARTEN (DUTCH PART)', N'SX')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (202, N'SLOVAKIA', N'SK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (203, N'SLOVENIA', N'SI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (204, N'SOLOMON ISLANDS', N'SB')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (205, N'SOMALIA', N'SO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (206, N'SOUTH AFRICA', N'ZA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (207, N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', N'GS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (208, N'SOUTH SUDAN', N'SS')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (209, N'SPAIN', N'ES')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (210, N'SRI LANKA', N'LK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (211, N'SUDAN', N'SD')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (212, N'SURINAME', N'SR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (213, N'SVALBARD AND JAN MAYEN', N'SJ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (214, N'SWAZILAND', N'SZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (215, N'SWEDEN', N'SE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (216, N'SWITZERLAND', N'CH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (217, N'SYRIAN ARAB REPUBLIC', N'SY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (218, N'TAIWAN, PROVINCE OF CHINA', N'TW')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (219, N'TAJIKISTAN', N'TJ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (220, N'TANZANIA, UNITED REPUBLIC OF', N'TZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (221, N'THAILAND', N'TH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (222, N'TIMOR-LESTE', N'TL')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (223, N'TOGO', N'TG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (224, N'TOKELAU', N'TK')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (225, N'TONGA', N'TO')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (226, N'TRINIDAD AND TOBAGO', N'TT')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (227, N'TUNISIA', N'TN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (228, N'TURKEY', N'TR')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (229, N'TURKMENISTAN', N'TM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (230, N'TURKS AND CAICOS ISLANDS', N'TC')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (231, N'TUVALU', N'TV')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (232, N'UGANDA', N'UG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (233, N'UKRAINE', N'UA')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (234, N'UNITED ARAB EMIRATES', N'AE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (235, N'UNITED KINGDOM', N'GB')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (236, N'UNITED STATES', N'US')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (237, N'UNITED STATES MINOR OUTLYING ISLANDS', N'UM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (238, N'URUGUAY', N'UY')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (239, N'UZBEKISTAN', N'UZ')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (240, N'VANUATU', N'VU')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (241, N'VENEZUELA, BOLIVARIAN REPUBLIC OF', N'VE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (242, N'VIET NAM', N'VN')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (243, N'VIRGIN ISLANDS, BRITISH', N'VG')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (244, N'VIRGIN ISLANDS, U.S.', N'VI')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (245, N'WALLIS AND FUTUNA', N'WF')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (246, N'WESTERN SAHARA', N'EH')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (247, N'YEMEN', N'YE')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (248, N'ZAMBIA', N'ZM')
INSERT [dbo].[Country] ([Id], [Name], [ISOCode]) VALUES (249, N'ZIMBABWE', N'ZW')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingredient] ON 

INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (1, N'Spelt Flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (2, N'Porridge Oats')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (3, N'Corn')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (4, N'Sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (5, N'Salt')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (6, N'Wheat flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (7, N'barley flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (8, N'oat flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (9, N'Oatmeal')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (10, N'raw cane sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (11, N'palm oil')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (12, N'coconut oil')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (13, N'honey')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (14, N'sea salt.')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (15, N'Spelt flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (16, N'sugar cane')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (17, N'rice syrup')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (18, N'whole grain spelled flour')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (19, N'coconut')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (20, N'sea salt')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (21, N'Einkorn flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (22, N'emmer')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (23, N'spelled flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (24, N'wheat flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (25, N'rye flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (26, N'oatmeal')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (27, N'Rolled oats')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (28, N'apple pieces')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (29, N'amaranth')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (30, N'peanut oil')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (31, N'cinnamon')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (32, N'Amaranth')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (33, N'Spelt')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (34, N'Honey')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (35, N'Quinoa')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (36, N'Wheat')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (37, N'Buckwheat')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (38, N'Soy Flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (39, N'Millet Flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (40, N'Rice Pellets')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (41, N'Wheat Bran')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (42, N'Oat Bran')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (43, N'Barley Flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (44, N'Banana Chips')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (45, N'Cranberries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (46, N'Papaya')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (47, N'Mango')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (48, N'Dates')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (49, N'Figs')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (50, N'Pineapple')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (51, N'Melon')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (52, N'Guava')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (53, N'Coconut Chips')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (54, N'Coconut Flakes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (55, N'Apple')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (56, N'Prune')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (57, N'Redcurrant')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (58, N'Sour Cherry')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (59, N'Apricot')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (60, N'Currants')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (61, N'Sultanas')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (62, N'Grapes')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (63, N'Raspberries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (64, N'Strawberries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (65, N'Blackberries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (66, N'Aloe Vera')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (67, N'Goji Berries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (68, N'Mulberries')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (69, N'Almonds')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (70, N'Hazelnuts')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (71, N'Peanuts')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (72, N'Pumpkin Seeds')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (73, N'Sunflower Seeds')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (74, N'Sesame')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (75, N'Poppy Seed')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (76, N'Pine Nuts')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (77, N'Macadamia')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (78, N'Flax Seed')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (79, N'Walnut')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (80, N'Apricot Kernels')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (81, N'Pecan')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (82, N'Para Nut')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (83, N'Cashews')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (84, N'Cane sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (85, N'whole milk powder')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (86, N'cocoa mass')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (87, N'cocoa butter')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (88, N'sunflower lecithin')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (89, N'Raw cane sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (90, N'Rice flour')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (91, N'wheat flour')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (92, N'sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (93, N'wheat bran')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (94, N'cocoa powder')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (95, N'salt')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (96, N'vitamins')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (97, N'chocolate powder')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (98, N'sunflower oil')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (99, N'hazelnuts')
GO
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (100, N'lactose')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (101, N'skimmed milk powder')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (102, N'soy lecithin')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (103, N'Rice')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (104, N'wheat')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (105, N'oats')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (106, N'barley')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (107, N'cocoa')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (108, N'malted barley')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (109, N'cane sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (110, N'corn malt')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (111, N'gum arabic')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (112, N'Peanut')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (113, N'milk powder')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (114, N'vanillin')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (115, N'glucose syrup')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (116, N'Raisins')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (117, N'coffee')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (118, N'cardamom')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (119, N'egg white')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (120, N'apricot kernels')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (121, N'milk sugar')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (122, N'sodium bicarbonate')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (123, N'ammonium bicarbonate')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (124, N'aroma')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (125, N'Ginger')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (126, N'Bee Pollen')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (127, N'Bourbon Vanille')
INSERT [dbo].[Ingredient] ([Id], [Name]) VALUES (128, N'Guarana')
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
GO
SET IDENTITY_INSERT [dbo].[Muesli] ON 

INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (2, N'Spelt Flakes', N'Dinkelflocken', 14, 64, 2.6, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (3, N'Porridge Oats', N'Haferflocken', 12, 58.7, 7.3, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (4, N'Cornflakes', N'Cornflakes', 8, 83.3, 1.1, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (5, N'Good Morning', N'Guten Morgen', 11, 61.3, 2.9, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (6, N'Oat Crunchies', N'Hafercrumble', 11, 62.7, 10, 600, 5.2, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (7, N'Spelt Crunchies', N'Dinkelcrumble', 13, 64.5, 6.6, 600, 5.2, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (8, N'Knights Blend', N'Rittermischung', 12, 61.7, 2, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (9, N'Seven Grains', N'7-Korn', 11, 61.7, 2.6, 600, 4.55, 1, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (10, N'Apple Cinnamon Crunch ', N'Apfel-Zimt Crunch', 10, 71, 5, 50, 0.7, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (11, N'Amaranth', N'Amaranth', 9, 64, 4.5, 10, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (12, N'Spelt Puffs', N'Dinkelpuffer', 11, 66, 5.5, 20, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (13, N'Quinoa', N'Quinoa', 10, 60, 4, 10, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (14, N'Spelt Flakes', N'Dinkelflocken', 14, 64, 2.6, 25, 0.25, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (15, N'Porridge Oats', N'Haferflocken', 11, 58.7, 7.3, 25, 0.25, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (16, N'Cornflakes', N'Cornflakes', 14, 64.6, 1.1, 20, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (17, N'Oat Crunchies', N'Hafercrumble', 9, 64.5, 8, 70, 0.85, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (18, N'Spelt Crunchies', N'Dinkelcrumble', 11, 64.2, 3.8, 75, 0.85, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (19, N'Wheat Puffs', N'Weizenpuffer', 11, 64, 2.6, 15, 0.35, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (20, N'Wheat Flakes', N'Weizenflakes', 12, 64.2, 2.6, 25, 0.45, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (21, N'Buckwheat', N'Buchweizen', 10, 64, 2.6, 20, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (22, N'Soy Flakes', N'Sojaflocken', 25, 45, 9, 25, 0.35, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (23, N'Millet Flakes', N'Hirseflocken', 8, 65, 2.7, 25, 0.45, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (24, N'Rice Pellets', N'Reiskugeln', 5, 67, 2.5, 20, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (25, N'Wheat Bran', N'Weizenkleie', 8, 58, 2.7, 15, 0.35, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (26, N'Oat Bran', N'Haferkleie', 8, 64, 2.8, 25, 0.4, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (27, N'Barley Flakes', N'Gerstenflocken', 5, 64, 2.6, 25, 0.25, 2, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (28, N'Banana Chips', N'Bananenchips', 4, 63, 4.4, 40, 0.5, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (29, N'Cranberries', N'Cranberries', 3.5, 65, 4.2, 25, 0.85, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (30, N'Papaya', N'Papaya', 2.5, 63, 2.5, 40, 1.1, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (31, N'Mango', N'Mango', 3, 63, 2.6, 35, 1, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (32, N'Dates', N'Datteln', 4.5, 65, 2.4, 45, 0.6, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (33, N'Figs', N'Feigen', 2.3, 61, 2.6, 40, 0.6, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (34, N'Pineapple', N'Ananas', 1.5, 64, 2.5, 30, 0.85, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (35, N'Melon', N'Melone', 1, 68, 2.5, 40, 0.65, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (36, N'Guava', N'Guave', 2, 71, 2.4, 40, 0.6, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (37, N'Coconut Chips', N'Kokoschips', 13, 48, 18, 20, 0.35, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (38, N'Coconut Flakes', N'Kokosraspeln', 13, 48, 18, 20, 0.35, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (39, N'Apple', N'Apfel', 2, 72, 2.5, 30, 0.7, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (40, N'Prune', N'Pflaume', 2.4, 59, 2.5, 40, 0.65, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (41, N'Redcurrant', N'Johannisbeere', 1.8, 62, 2.6, 10, 1, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (42, N'Sour Cherry', N'Sauerkirschen', 2, 67, 2.5, 25, 1.25, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (43, N'Apricot', N'Aprikose', 2.5, 55, 2.4, 45, 0.6, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (44, N'Currants', N'Korinthen', 2, 63, 1, 40, 0.5, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (45, N'Sultanas', N'Sultaninen', 2.5, 66, 0.6, 50, 0.45, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (46, N'Grapes', N'Weinbeeren', 1.5, 67, 1, 50, 0.45, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (47, N'Raspberries', N'Himbeeren', 1.8, 62, 1, 12, 1.3, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (48, N'Strawberries', N'Erdbeeren', 2.5, 63, 0.5, 10, 1.35, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (49, N'Blackberries', N'Brombeeren', 2.5, 57, 0.5, 10, 1.25, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (50, N'Aloe Vera', N'Aloe-Vera', 0.5, 36, 0.1, 30, 0.6, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (51, N'Goji Berries', N'Gojibeere', 10, 55, 5, 20, 1.5, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (52, N'Mulberries', N'Maulbeeren', 7, 48, 0.1, 30, 0.85, 3, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (53, N'Almonds', N'Mandeln', 18.7, 5.7, 54, 30, 0.8, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (54, N'Hazelnuts', N'Haselnüsse', 16, 6, 63, 30, 0.85, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (55, N'Peanuts', N'Erdnüsse', 27, 9, 53, 35, 0.45, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (56, N'Pumpkin Seeds', N'Kürbiskerne', 25, 18, 46, 30, 0.5, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (57, N'Sunflower Seeds', N'Sonnenblumenkerne', 26, 34, 23, 30, 0.35, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (58, N'Sesame', N'Sesam', 17, 10, 50, 25, 0.35, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (59, N'Poppy Seed', N'Blaumohn', 20, 4, 42, 25, 0.4, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (60, N'Pine Nuts', N'Pinienkerne', 13, 20, 60, 15, 1.45, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (61, N'Macadamia', N'Macadamia', 7.5, 13, 73, 25, 1.25, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (62, N'Flax Seed', N'Leinsamen', 24, 5, 30, 20, 0.25, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (63, N'Walnut', N'Walnüsse', 14, 10, 62, 30, 0.7, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (64, N'Apricot Kernels', N'Aprikosenkerne', 25, 13, 50, 30, 0.7, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (65, N'Pecan', N'Pekannuss', 10, 5, 72, 25, 1.1, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (66, N'Para Nut', N'Paranuss', 14, 3, 67, 40, 0.85, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (67, N'Cashews', N'Cashewkerne', 21, 22, 47, 30, 0.4, 4, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (68, N'Chocolate Hearts', N'Schokoherzen', 5, 61, 30, 40, 0.45, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (69, N'Dark Chocolate', N'Edelbitterschokolade', 7, 33, 42, 40, 0.8, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (70, N'Milk Chocolate', N'Vollmilchschokolade', 7, 55, 31, 40, 0.65, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (71, N'White Chocolate', N'Weisse Schokolade', 4, 63, 29, 30, 0.7, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (72, N'Nougat pillows', N'Nougat-Kissen', 5, 71, 17, 35, 0.5, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (73, N'Chocolate Puffs', N'Schokopuffer', 4, 65, 15, 25, 0.4, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (74, N'Chocolate flakes', N'Schoko-Flakes', 4, 66, 15, 30, 0.5, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (75, N'Peanut chocs', N'Erdnuss-Chocs', 9, 60, 25, 40, 0.85, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (76, N'Raisin chocs', N'Rosinen-Chocs', 2, 65, 18, 40, 0.8, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (77, N'Espresso chocs', N'Espresso-Chocs', 2, 58, 20, 30, 1.35, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (78, N'cocoa', N'Kakaopulver', 19, 9, 20, 10, 0.25, 5, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (79, N'Cinnamon-Cardamom', N'Zimt-Kardamon', 3, 56, 3, 4, 0.35, 6, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (80, N'Amarettini', N'Amarettini', 7, 77, 10, 20, 0.4, 6, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (81, N'Ginger', N'Ingwer', 1, 9, 1, 20, 0.45, 6, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (82, N'Bee Pollen', N'Blütenpollen', 24, 43.8, 4.8, 20, 0.85, 6, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (83, N'Bourbon Vanille', N'Bourbon-Vanille', 0, 0, 0, 2, 0.5, 6, NULL)
INSERT [dbo].[Muesli] ([Id], [NameEN], [NameDE], [Protein], [Carbohydrates], [Fat], [PortionSize], [Price], [TypeId], [CreatedDate]) VALUES (84, N'Guarana', N'Guarana', 0, 0, 0, 3, 0.45, 6, NULL)
SET IDENTITY_INSERT [dbo].[Muesli] OFF
GO
SET IDENTITY_INSERT [dbo].[MuesliIngredient] ON 

INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (1, 2, 1)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (2, 3, 2)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (3, 4, 3)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (4, 4, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (5, 4, 5)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (6, 5, 6)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (7, 5, 7)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (8, 5, 8)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (9, 6, 9)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (10, 6, 10)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (11, 6, 11)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (12, 6, 12)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (13, 6, 13)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (14, 6, 20)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (15, 7, 15)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (16, 7, 16)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (17, 7, 11)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (18, 7, 17)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (19, 7, 18)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (20, 7, 19)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (21, 7, 20)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (22, 8, 21)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (23, 8, 22)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (24, 8, 23)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (25, 8, 24)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (26, 9, 21)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (27, 9, 22)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (28, 9, 23)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (29, 9, 24)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (30, 9, 7)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (31, 9, 25)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (32, 9, 26)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (33, 10, 27)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (34, 10, 24)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (35, 10, 10)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (36, 10, 28)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (37, 10, 29)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (38, 10, 13)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (39, 10, 30)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (40, 10, 31)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (41, 10, 20)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (42, 11, 32)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (43, 12, 33)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (44, 12, 34)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (45, 13, 35)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (46, 14, 15)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (47, 15, 2)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (48, 16, 3)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (49, 16, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (50, 16, 5)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (51, 17, 9)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (52, 17, 10)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (53, 17, 11)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (54, 17, 12)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (55, 17, 13)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (56, 17, 14)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (57, 18, 15)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (58, 18, 16)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (59, 18, 11)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (60, 18, 17)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (61, 18, 18)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (62, 18, 19)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (63, 18, 20)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (64, 19, 36)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (65, 19, 34)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (66, 20, 3)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (67, 20, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (68, 20, 5)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (69, 21, 37)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (70, 22, 38)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (71, 23, 39)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (72, 24, 40)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (73, 25, 41)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (74, 26, 42)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (75, 27, 43)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (76, 28, 44)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (77, 29, 45)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (78, 30, 46)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (79, 31, 47)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (80, 32, 48)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (81, 33, 49)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (82, 34, 50)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (83, 35, 51)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (84, 36, 52)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (85, 37, 53)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (86, 38, 54)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (87, 39, 55)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (88, 40, 56)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (89, 41, 57)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (90, 42, 58)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (91, 43, 59)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (92, 44, 60)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (93, 45, 61)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (94, 46, 62)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (95, 47, 63)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (96, 48, 64)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (97, 49, 65)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (98, 50, 66)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (99, 51, 67)
GO
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (100, 52, 68)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (101, 53, 69)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (102, 54, 70)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (103, 55, 71)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (104, 56, 72)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (105, 57, 73)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (106, 58, 74)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (107, 59, 75)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (108, 60, 76)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (109, 61, 77)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (110, 62, 78)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (111, 63, 79)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (112, 64, 80)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (113, 65, 81)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (114, 66, 82)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (115, 67, 83)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (116, 68, 84)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (117, 68, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (118, 68, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (119, 68, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (120, 69, 84)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (121, 69, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (122, 69, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (123, 69, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (124, 70, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (125, 70, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (126, 70, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (127, 70, 88)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (128, 71, 89)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (129, 71, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (130, 71, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (131, 72, 90)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (132, 72, 91)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (133, 72, 92)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (134, 72, 93)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (135, 72, 94)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (136, 72, 95)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (137, 72, 96)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (138, 72, 97)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (139, 72, 98)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (140, 72, 99)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (141, 72, 100)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (142, 72, 101)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (143, 72, 102)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (144, 73, 103)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (145, 73, 104)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (146, 73, 105)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (147, 73, 106)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (148, 73, 16)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (149, 73, 107)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (150, 73, 108)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (151, 74, 3)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (152, 74, 109)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (153, 74, 20)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (154, 74, 110)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (155, 74, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (156, 74, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (157, 74, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (158, 74, 111)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (159, 75, 112)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (160, 75, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (161, 75, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (162, 75, 113)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (163, 75, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (164, 75, 102)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (165, 75, 114)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (166, 75, 111)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (167, 75, 115)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (168, 76, 116)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (169, 76, 92)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (170, 76, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (171, 76, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (172, 76, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (173, 76, 102)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (174, 76, 114)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (175, 76, 111)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (176, 76, 115)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (177, 77, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (178, 77, 86)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (179, 77, 85)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (180, 77, 117)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (181, 77, 87)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (182, 77, 102)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (183, 77, 114)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (184, 77, 111)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (185, 77, 115)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (186, 78, 107)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (187, 79, 31)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (188, 79, 118)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (189, 80, 4)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (190, 80, 91)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (191, 80, 119)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (192, 80, 120)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (193, 80, 121)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (194, 80, 122)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (195, 80, 123)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (196, 80, 124)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (197, 81, 125)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (198, 82, 126)
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (199, 83, 127)
GO
INSERT [dbo].[MuesliIngredient] ([Id], [MuesliId], [IngredientId]) VALUES (200, 84, 128)
SET IDENTITY_INSERT [dbo].[MuesliIngredient] OFF
GO
SET IDENTITY_INSERT [dbo].[MuesliMix] ON 

INSERT [dbo].[MuesliMix] ([Id], [Name], [CreatedDate], [UserId], [Price]) VALUES (1025, N'FavuriteMuesli', CAST(N'2021-10-23T08:46:07.767' AS DateTime), 2, 6.01)
INSERT [dbo].[MuesliMix] ([Id], [Name], [CreatedDate], [UserId], [Price]) VALUES (1026, N'ChocoNutsMuesli', CAST(N'2021-10-23T08:46:42.670' AS DateTime), 2, 8.61)
INSERT [dbo].[MuesliMix] ([Id], [Name], [CreatedDate], [UserId], [Price]) VALUES (1027, N'MySpecialMuesli', CAST(N'2021-10-23T08:47:04.217' AS DateTime), 2, 7.03)
SET IDENTITY_INSERT [dbo].[MuesliMix] OFF
GO
SET IDENTITY_INSERT [dbo].[MuesliMixMuesli] ON 

INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1068, 1025, 2, 496)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1069, 1025, 10, 50)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1070, 1025, 11, 10)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1071, 1025, 12, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1072, 1025, 79, 4)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1073, 1025, 80, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1074, 1026, 3, 390)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1075, 1026, 10, 50)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1076, 1026, 11, 10)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1077, 1026, 12, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1078, 1026, 13, 10)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1079, 1026, 14, 25)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1080, 1026, 16, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1081, 1026, 53, 30)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1082, 1026, 54, 30)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1083, 1026, 60, 15)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1084, 1027, 9, 531)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1085, 1027, 79, 4)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1086, 1027, 80, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1087, 1027, 81, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1088, 1027, 82, 20)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1089, 1027, 83, 2)
INSERT [dbo].[MuesliMixMuesli] ([Id], [MuesliMixId], [MuesliId], [Grams]) VALUES (1090, 1027, 84, 3)
SET IDENTITY_INSERT [dbo].[MuesliMixMuesli] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (1, 2, 20.436666666666667, CAST(N'2021-10-18T11:22:47.993' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (2, 2, 20.436666666666667, CAST(N'2021-10-18T11:23:30.303' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (3, 2, 38.425416666666663, CAST(N'2021-10-18T11:23:37.817' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (4, 2, 20.436666666666667, CAST(N'2021-10-18T11:25:12.970' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (5, 2, 16.66125, CAST(N'2021-10-18T11:25:20.697' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (6, 2, 20.436666666666667, CAST(N'2021-10-18T11:25:50.530' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (7, 2, 57.746666666666663, CAST(N'2021-10-18T11:26:03.473' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (8, 2, 20.436666666666667, CAST(N'2021-10-18T11:26:43.400' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (9, 2, 20.436666666666667, CAST(N'2021-10-18T11:27:00.103' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (10, 2, 16.66125, CAST(N'2021-10-18T11:27:04.887' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (11, 2, 20.436666666666667, CAST(N'2021-10-18T11:27:28.383' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (12, 2, 57.746666666666663, CAST(N'2021-10-18T11:27:34.707' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (13, 2, 26.654999999999998, CAST(N'2021-10-18T11:27:45.033' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (14, 2, 71.954999999999984, CAST(N'2021-10-18T11:30:15.907' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (15, 2, 42.644999999999996, CAST(N'2021-10-18T12:16:24.317' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (16, 2, 26.321875, CAST(N'2021-10-18T12:35:02.390' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (17, 2, 71.954999999999984, CAST(N'2021-10-18T12:40:43.127' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (1002, 2, 53.3, CAST(N'2021-10-22T17:13:22.777' AS DateTime))
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [OrderDate]) VALUES (1003, 2, 83.97, CAST(N'2021-10-23T08:47:24.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderMuesliMixes] ON 

INSERT [dbo].[OrderMuesliMixes] ([Id], [OrderId], [MuesliMixId]) VALUES (7, 1003, 1025)
INSERT [dbo].[OrderMuesliMixes] ([Id], [OrderId], [MuesliMixId]) VALUES (8, 1003, 1026)
INSERT [dbo].[OrderMuesliMixes] ([Id], [OrderId], [MuesliMixId]) VALUES (9, 1003, 1027)
SET IDENTITY_INSERT [dbo].[OrderMuesliMixes] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (1, N'Basics', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (2, N'Cereal', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (3, N'Fruit', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (4, N'Nuts & Co', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (5, N'Choco', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (6, N'Specials', NULL)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [Address], [PhoneNumber], [Email], [Zip], [City], [CountryId]) VALUES (2, N'Aboba', N'123', N'123', N'dgsadfasdf', N'+5234234234', N'fdfgsdgf@mail.ru', 420110, N'Kazan', 19)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Muesli]  WITH CHECK ADD  CONSTRAINT [FK_Muesli_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Muesli] CHECK CONSTRAINT [FK_Muesli_Type]
GO
ALTER TABLE [dbo].[MuesliIngredient]  WITH CHECK ADD  CONSTRAINT [FK_MuesliIngredient_Ingredient] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[MuesliIngredient] CHECK CONSTRAINT [FK_MuesliIngredient_Ingredient]
GO
ALTER TABLE [dbo].[MuesliIngredient]  WITH CHECK ADD  CONSTRAINT [FK_MuesliIngredient_Muesli] FOREIGN KEY([MuesliId])
REFERENCES [dbo].[Muesli] ([Id])
GO
ALTER TABLE [dbo].[MuesliIngredient] CHECK CONSTRAINT [FK_MuesliIngredient_Muesli]
GO
ALTER TABLE [dbo].[MuesliMix]  WITH CHECK ADD  CONSTRAINT [FK_MuesliMix_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[MuesliMix] CHECK CONSTRAINT [FK_MuesliMix_User]
GO
ALTER TABLE [dbo].[MuesliMixMuesli]  WITH CHECK ADD  CONSTRAINT [FK_MuesliMixMuesli_Muesli] FOREIGN KEY([MuesliId])
REFERENCES [dbo].[Muesli] ([Id])
GO
ALTER TABLE [dbo].[MuesliMixMuesli] CHECK CONSTRAINT [FK_MuesliMixMuesli_Muesli]
GO
ALTER TABLE [dbo].[MuesliMixMuesli]  WITH CHECK ADD  CONSTRAINT [FK_MuesliMixMuesli_MuesliMix] FOREIGN KEY([MuesliMixId])
REFERENCES [dbo].[MuesliMix] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MuesliMixMuesli] CHECK CONSTRAINT [FK_MuesliMixMuesli_MuesliMix]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderMuesliMixes]  WITH CHECK ADD  CONSTRAINT [FK_OrderMuesliMixes_MuesliMix] FOREIGN KEY([MuesliMixId])
REFERENCES [dbo].[MuesliMix] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderMuesliMixes] CHECK CONSTRAINT [FK_OrderMuesliMixes_MuesliMix]
GO
ALTER TABLE [dbo].[OrderMuesliMixes]  WITH CHECK ADD  CONSTRAINT [FK_OrderMuesliMixes_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderMuesliMixes] CHECK CONSTRAINT [FK_OrderMuesliMixes_Order]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Country]
GO
