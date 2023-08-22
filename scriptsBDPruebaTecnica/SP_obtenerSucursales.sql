USE pruebaTecnica
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE obtenerSucursales
AS
BEGIN
	SET NOCOUNT ON;

    SELECT id, ubicacion, sucursal, estatus FROM sucursales WHERE estatus = 1
END
GO