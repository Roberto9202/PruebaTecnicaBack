USE [pruebaTecnica]
GO

/****** Object:  Table [dbo].[sucursales]    Script Date: 22/08/2023 01:48:35 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sucursales]') AND type in (N'U'))
DROP TABLE [dbo].[sucursales]
GO

/****** Object:  Table [dbo].[sucursales]    Script Date: 22/08/2023 01:48:35 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sucursales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ubicacion] [varchar](max) NOT NULL,
	[sucursal] [varchar](50) NOT NULL,
	[estatus] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


INSERT INTO [dbo].[sucursales] ([ubicacion],[sucursal],[estatus])
     VALUES ('Sinaloa','001',1)
GO

INSERT INTO [dbo].[sucursales] ([ubicacion],[sucursal],[estatus])
     VALUES ('Sinaloa','002',0)
GO
