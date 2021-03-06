
/* Nombre:  Keterson Navarre,   Matricula: 16-SIIN-1-156     Secc 0541  */
/* Nombre:  Don Junior Mitial,  Matricula: 16-SIIN-1-077     Secc 0541  */




USE [master]
GO
/****** Object:  Database [MelomaniaDB]    Script Date: 4/15/2019 10:55:21 PM ******/
CREATE DATABASE [MelomaniaDB]
 
USE [MelomaniaDB]
GO
/****** Object:  Table [dbo].[Aprendiz]    Script Date: 4/15/2019 10:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aprendiz](
	[AprendizId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Matricula] [varchar](8) NULL,
	[CursoId] [int] NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](80) NULL,
	[Telefono] [varchar](13) NULL,
 CONSTRAINT [PK_EstudianteId] PRIMARY KEY CLUSTERED 
(
	[AprendizId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 4/15/2019 10:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursoId] [int] NOT NULL,
	[Nombre] [varchar](25) NULL,
	[Tanda] [varchar](10) NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instrutores]    Script Date: 4/15/2019 10:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instrutores](
	[InstructorId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_InstrutorId] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 4/15/2019 10:55:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[NivelId] [int] NOT NULL,
	[SubjectId] [int] NULL,
	[EstudianteId] [int] NULL,
	[InstructorId] [int] NULL,
	[Nivel] [char](5) NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[NivelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 4/15/2019 10:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectId] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[CursoId] [int] NULL,
	[InstructorId] [int] NULL,
 CONSTRAINT [PK_SubjectId] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (1, N'Joel M', N'001', 1, N'M', NULL, N'8099581291')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (2, N'Carlos A', N'002', 2, N'M', NULL, N'8099955522')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (3, N'Anthony G', N'003', 3, N'M', NULL, N'8495512222')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (4, N'Charli R', N'004', 5, N'M', NULL, N'8096325695')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (5, N'KAtrina S', N'005', 4, N'F', NULL, N'8099520000')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (6, N'Ana R', N'006', 2, N'F', NULL, N'8092562222')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (7, N'Lisa X', N'008', 2, N'F', NULL, N'8095441222')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (8, N'Jean Alain', N'010', 3, N'M', NULL, N'8295552111')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (9, N'Michel R', N'056', 5, N'M', NULL, N'8292222222')
INSERT [dbo].[Aprendiz] ([AprendizId], [Nombre], [Matricula], [CursoId], [Sexo], [Direccion], [Telefono]) VALUES (10, N'CarinaN', N'012', 4, N'F', NULL, N'8295554111')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (1, N'Musica', N'mañana')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (2, N'Musica', N'tarde')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (3, N'Musica', N'noche')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (4, N'Canto', N'mañana')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (5, N'Canto', N'tarde')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (6, N'Canto', N'noche')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (7, N'Musica', N'tarde')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (8, N'Canto', N'Manana')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (9, N'Canto', N'Manana')
INSERT [dbo].[Cursos] ([CursoId], [Nombre], [Tanda]) VALUES (10, N'Musica', N'tarde')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (1, N'Luis Miguel', N'8099581291', N'asd@gmail.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (2, N'Ingrid Rosario', N'8098659899', N'sdsa@gmail.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (3, N'Andrea Bucelli', N'3177218355', N'bucelli@gmail.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (4, N'Christine D''Clario', N'3178598854', N'dclario@email.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (5, N'Mozart La Para', N'8099547785', N'mozart@email.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (6, N'Ivan martinez', N'8095544455', N'ivan@email.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (7, N'Germain Dupui', N'8099547888', N'germain@email.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (8, N'Hamilton Bliss', N'8095547855', N'dss@gmil.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (9, N'Macena F', N'8099554555', N'2145655@gmail.com')
INSERT [dbo].[Instrutores] ([InstructorId], [Nombre], [Telefono], [Email]) VALUES (10, N'K. L.', N'8495555555', N'edfasfs@gmail.com')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (1, 1, 1, 1, N'Ini  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (2, 2, 2, 2, N'Med  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (3, 3, 3, 3, N'Av   ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (4, 5, 4, 6, N'Ini  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (5, 5, 5, 9, N'Ini  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (6, 5, 5, 8, N'Av   ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (7, 2, 3, 9, N'Med  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (8, 7, 4, 4, N'Ini  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (9, 2, 4, 5, N'Med  ')
INSERT [dbo].[Nivel] ([NivelId], [SubjectId], [EstudianteId], [InstructorId], [Nivel]) VALUES (10, 4, 6, 6, N'Ini  ')
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (1, N'Piano', 1, 1)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (2, N'Guitarra', 2, 2)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (3, N'Bajo', 3, 3)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (4, N'Canto', 4, 4)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (5, N'Canto', 5, 5)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (6, N'Bateria', 6, 6)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (7, N'Violin', 5, 5)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (8, N'Piano', 4, 4)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (9, N'Guitarra', 5, 2)
INSERT [dbo].[Subjects] ([SubjectId], [Nombre], [CursoId], [InstructorId]) VALUES (10, N'Canto', 5, 4)
ALTER TABLE [dbo].[Aprendiz]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([CursoId])
GO
ALTER TABLE [dbo].[Aprendiz] CHECK CONSTRAINT [FK_Estudiantes_Cursos]
GO
ALTER TABLE [dbo].[Nivel]  WITH CHECK ADD  CONSTRAINT [FK_Nivel_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([SubjectId])
GO
ALTER TABLE [dbo].[Nivel] CHECK CONSTRAINT [FK_Nivel_Subjects]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([CursoId])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Cursos]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Instrutores] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instrutores] ([InstructorId])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Instrutores]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Instrutores1] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instrutores] ([InstructorId])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Instrutores1]
GO
USE [master]
GO
ALTER DATABASE [MelomaniaDB] SET  READ_WRITE 
GO
