USE pruebaTecnica;
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE agregarEstudio
@Estudio varchar(30), 
@detalle varchar(255),
@estatus BIT
AS
BEGIN
	INSERT INTO estudios (estudio, detalle, estatus) VALUES (@Estudio, @detalle, @estatus)
END
GO
