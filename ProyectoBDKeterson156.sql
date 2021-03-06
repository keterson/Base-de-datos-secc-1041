
/* Nombre:  Keterson Navarre,   Matricula: 16-SIIN-1-156     Secc 0541  */
/* Nombre:  Don Junior Mitial,  Matricula: 16-SIIN-1-077     Secc 0541  */





USE [master]
GO
/****** Object:  Database [Biblioteca]    Script Date: 4/15/2019 4:09:52 PM ******/
CREATE DATABASE [Biblioteca]
 
USE [Biblioteca]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 4/15/2019 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[AutorId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Nacionalidad] [varchar](25) NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[AutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 4/15/2019 4:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[LibrosId] [int] NOT NULL,
	[AutorId] [int] NULL,
	[TopicoId] [int] NULL,
	[Año] [date] NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[LibrosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topico]    Script Date: 4/15/2019 4:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topico](
	[TopicoId] [int] NOT NULL,
	[Genero] [varchar](50) NULL,
	[Categoria] [varchar](50) NULL,
 CONSTRAINT [PK_Topico] PRIMARY KEY CLUSTERED 
(
	[TopicoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (1, N'Henry Taveras', N'DO')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (2, N'Sarling Germosen', N'DO')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (3, N'Miguel Angel', N'DO')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (4, N'Clifford Brangt', N'HT')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (5, N'Carmela Anger', N'HT')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (6, N'Johanne Paula', N'HT')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (7, N'Germain Dupuy', N'HT')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (8, N'Al Gore', N'US')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (9, N'Barak Obama', N'US')
INSERT [dbo].[Autores] ([AutorId], [Nombre], [Nacionalidad]) VALUES (10, N'Juan Bosh', NULL)
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (1, 1, 1, CAST(N'1986-12-13' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (2, 2, 2, CAST(N'1986-01-13' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (3, 3, 3, CAST(N'2015-12-05' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (4, 4, 5, CAST(N'2018-01-23' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (5, 5, 8, CAST(N'2015-02-28' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (6, 6, 7, CAST(N'2011-02-15' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (7, 7, 6, CAST(N'1970-08-09' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (8, 8, 4, CAST(N'1995-01-01' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (9, 9, 9, CAST(N'1995-01-02' AS Date))
INSERT [dbo].[Libros] ([LibrosId], [AutorId], [TopicoId], [Año]) VALUES (10, 10, 6, CAST(N'2019-01-08' AS Date))
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (1, N'Ciencia', N'Medicina')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (2, N'Ciencia', N'Fisica')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (3, N'Ciencia', N'Matematica')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (4, N'Ciencia', N'Astronomia')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (5, N'Biografia', N'Biografia')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (6, N'Revista', N'Autos')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (7, N'Revista', N'Sicologia')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (8, N'Literatura', N'Novela')
INSERT [dbo].[Topico] ([TopicoId], [Genero], [Categoria]) VALUES (9, N'Literatura', N'poesia')
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Autores] FOREIGN KEY([AutorId])
REFERENCES [dbo].[Autores] ([AutorId])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Autores]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Topico] FOREIGN KEY([TopicoId])
REFERENCES [dbo].[Topico] ([TopicoId])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Topico]
GO
USE [master]
GO
ALTER DATABASE [Biblioteca] SET  READ_WRITE 
GO
