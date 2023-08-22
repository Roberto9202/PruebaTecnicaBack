USE pruebaTecnica
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE buscarSucursal
@sucursal varchar(30)
AS
BEGIN
	IF EXISTS (SELECT id, ubicacion, sucursal, estatus FROM sucursales WHERE sucursal = @sucursal AND estatus = 1)
	BEGIN
		SELECT id, estudio, detalle, estatus FROM estudios WHERE estatus = 1
	END
END
GO
