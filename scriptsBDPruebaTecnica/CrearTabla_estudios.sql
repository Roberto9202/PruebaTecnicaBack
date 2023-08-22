USE [pruebaTecnica]
GO

/****** Object:  Table [dbo].[estudios]    Script Date: 22/08/2023 01:47:17 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estudios]') AND type in (N'U'))
DROP TABLE [dbo].[estudios]
GO

/****** Object:  Table [dbo].[estudios]    Script Date: 22/08/2023 01:47:17 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[estudios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[estudio] [varchar](30) NOT NULL,
	[detalle] [varchar](255) NULL,
	[estatus] [bit] NOT NULL
) ON [PRIMARY]
GO


INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Laboratorio','Las pruebas de laboratorio examinan muestras de sangre, orina o tejidos corporales. Un técnico o el médico analizan las muestras para determinar si los resultados están dentro de los límites normales.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Ultrasonido','Estudios de ultrasonidos Consiste en el uso de ondas sonoras de alta frecuencia para crear imágenes de órganos y estructuras dentro del cuerpo.', 1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Lentes','Un examen de la vista o examen de ojos es una prueba breve que revisa principalemente qué tan bien puede ver las cosas de cerca y de lejos. En general, la prueba involucra leer letras en una tabla de visión ocular.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Rayos X','Estudios de rayos x producen imágenes como sombras de huesos y ciertos órganos y tejidos. Las radiografías son muy buenas para detectar problemas óseos.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Mastografía','La mastografía es el estudio radiográfico mediante el uso de equipo especializado llamado mastógrafo , se utiliza para buscar anormalidades en la mama, ayuda a detectar el cáncer en sus etapas iniciales',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Papanicolaou','El examen de Papanicolaou (también llamado citología vaginal) sirve para detectar cambios anormales en las células de tu cuello uterino.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Densitometría','Una densitometría ósea, también conocida como prueba DEXA, es un tipo de radiografía de dosis baja que mide el calcio y otros minerales en los huesos. La medición muestra la fuerza y la densidad (conocida como masa o densidad ósea) de los huesos.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Electrocardiograma','El electrocardiograma registra las señales eléctricas del corazón. Es una prueba común e indolora que se usa para detectar con rapidez problemas cardíacos y controlar la salud del corazón.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Tomografía','La tomografía computarizada, TC, es un procedimiento con imágenes que usa equipo especial de rayos X para crear imágenes detalladas, o exploraciones, de regiones internas del cuerpo.',1)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Nutrición','Estudio de Nutrición',0)
GO

INSERT INTO [dbo].[estudios] ([estudio],[detalle],[estatus])
     VALUES ('Resonancia magnética','Es un examen imagenológico que utiliza imanes y ondas de radio potentes para crear imágenes del cuerpo. No se emplea radiación ionizante (rayos X).',1)
GO


