USE [RetosDB]
GO
/****** Object:  Table [dbo].[restostbl]    Script Date: 31/05/2021 21:26:55 ******/
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
