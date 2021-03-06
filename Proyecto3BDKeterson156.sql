
/* Nombre:  Keterson Navarre,   Matricula: 16-SIIN-1-156     Secc 0541  */
/* Nombre:  Don Junior Mitial,  Matricula: 16-SIIN-1-077     Secc 0541  */




USE [master]
GO
/****** Object:  Database [GuarderiaDB]    Script Date: 4/15/2019 11:34:40 PM ******/
CREATE DATABASE [GuarderiaDB]
 
USE [GuarderiaDB]
GO
/****** Object:  Table [dbo].[Infantes]    Script Date: 4/15/2019 11:34:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infantes](
	[InfanteId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[TutorId] [int] NULL,
	[ResponsableId] [int] NULL,
	[Edad] [char](2) NULL,
 CONSTRAINT [PK_Infantes] PRIMARY KEY CLUSTERED 
(
	[InfanteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsables]    Script Date: 4/15/2019 11:34:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsables](
	[ResponsableId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[InfanteId] [int] NULL,
	[Telefono] [varchar](13) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Responsables] PRIMARY KEY CLUSTERED 
(
	[ResponsableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutores]    Script Date: 4/15/2019 11:34:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutores](
	[TutorId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](13) NULL,
 CONSTRAINT [PK_Tutores] PRIMARY KEY CLUSTERED 
(
	[TutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (1, N'Paula', 1, 1, N'1 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (2, N'Catrina', 2, 2, N'2 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (3, N'Mateo', 3, 3, N'1 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (4, N'Henry', 4, 4, N'5 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (5, N'Jean Alain', 5, 5, N'4 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (6, N'Maria', 6, 6, N'6 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (7, N'Pablo', 7, 7, N'3 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (8, N'Juan', 8, 8, N'2 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (9, N'Carina', 9, 9, N'1 ')
INSERT [dbo].[Infantes] ([InfanteId], [Nombre], [TutorId], [ResponsableId], [Edad]) VALUES (10, N'Ayiti', 10, 10, N'7 ')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (1, N'Richar D', 1, N'8095565655', N'Calle 3')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (2, N'Alix F', 2, N'8095565558', N'Calle 1 ')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (3, N'Maria L', 3, N'8095656565', N'C 3')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (4, N'Boby G', 4, N'8094747477', N'C 5')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (5, N'JJ L', 5, N'8092121266', N'C7')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (6, N'Canali G', 6, N'8956565656', N'C9')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (7, N'Iris M', 7, N'8956454544', N'Calle 43')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (8, N'Idalia L', 8, N'8095666666', N' Pintura')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (9, N'Caril', 9, N'8094545450', N'Calle 1ra')
INSERT [dbo].[Responsables] ([ResponsableId], [Nombre], [InfanteId], [Telefono], [Direccion]) VALUES (10, N'Mich B', NULL, N'8095656565', N'Calle 3')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (1, N'F Gordas', N'8090000001')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (2, N'M Richard', N'8095632214')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (3, N'C K', N'8095632255')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (4, N'Alix Faustin', N'8096566666')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (5, N'Maisi Ricardo', N'8095555555')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (6, N'JK Llili', N'8095556565')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (7, N'Siryl Z', N'8095545454')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (8, N'Alon Dreim', N'8955469854')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (9, N'Mireille Mhse', N'8095656565')
INSERT [dbo].[Tutores] ([TutorId], [Nombre], [Telefono]) VALUES (10, N'Billy Meiz', NULL)
ALTER TABLE [dbo].[Infantes]  WITH CHECK ADD  CONSTRAINT [FK_Infantes_Responsables] FOREIGN KEY([ResponsableId])
REFERENCES [dbo].[Responsables] ([ResponsableId])
GO
ALTER TABLE [dbo].[Infantes] CHECK CONSTRAINT [FK_Infantes_Responsables]
GO
ALTER TABLE [dbo].[Infantes]  WITH CHECK ADD  CONSTRAINT [FK_Infantes_Tutores] FOREIGN KEY([TutorId])
REFERENCES [dbo].[Tutores] ([TutorId])
GO
ALTER TABLE [dbo].[Infantes] CHECK CONSTRAINT [FK_Infantes_Tutores]
GO
USE [master]
GO
ALTER DATABASE [GuarderiaDB] SET  READ_WRITE 
GO
