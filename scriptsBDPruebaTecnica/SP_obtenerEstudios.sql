USE pruebaTecnica
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE obtenerEstudios
AS
BEGIN
	SET NOCOUNT ON;

    SELECT id, estudio, detalle, estatus FROM estudios WHERE estatus = 1
END
GO
