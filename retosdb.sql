USE [RetosDB]
GO
/****** Object:  Table [dbo].[restostbl]    Script Date: 31/05/2021 16:14:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restostbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](150) NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [PK_restostbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[restostbl] ON 

INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (1, N'Primer Reto', N'Ducharse en 5 min', CAST(N'2021-05-29T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (2, N'Segundo Reto', N'Usa bicicleta o camina', CAST(N'2021-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (3, N'Tercer Reto', N'Reutiliza tu botella plastica de agua', CAST(N'2021-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (4, N'Cuarto Reto', N'Separa la basura orgánica e inorgánica', CAST(N'2021-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (5, N'Quinto Reto', N'Utiliza bolsas ecológicas', CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (6, N'Sexto Reto', N'Utiliza pilas recargables', CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (7, N'Séptimo Reto', N'Apaga las luces y PC al salir de la habitación', CAST(N'2021-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (8, N'Octavo Reto', N'Desenchufa todos los aparatos eléctricos que no estés usando', CAST(N'2021-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (9, N'Noveno Reto', N'Cambia los focos normales por los ahorradores', CAST(N'2021-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[restostbl] ([ID], [nombre], [descripcion], [fecha_creacion]) VALUES (10, N'Décimo Reto', N'Comparte los retos y haz que otras personas tomen la iniciativa', CAST(N'2021-05-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[restostbl] OFF
GO
