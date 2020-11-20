-------------------------------
-- AUTOR: TONY TAFUR
-- CORREO: tarbusa@gmail.com
-------------------------------

ALTER PROCEDURE [dbo].[PA_GUARDAR_VENTA]
(
	@xml NTEXT 
	/*
	LA ENTRADA ES UN TEXTO EN FORMATO XML 
	PARA HACER UN INSERCION MASIVA SOBRE LA TABLA [dbo].[detalleVenta]
	*/
)
AS
BEGIN
	DECLARE @idoc INT
	
	--SE DECLARA UN VARIABLE TIPO TABLA CON LOS MISMOS CAMPOS QUE LA TABLA [dbo].[detalleVenta]
	DECLARE @T_VENTA TABLE(
		x_idProducto INT,
		x_cantidad INT
	)
	
	--PRODCEDIMIENTO PROPIO DE SQL SERVER PARA LEER EL TEXTO EN FORMATO XML
	EXEC sp_xml_preparedocument @idoc OUTPUT,
	@xml

	--SE COPIA TODO EL TEXTO XML A LA VARIABLE TIPO TABLA
	INSERT INTO @T_VENTA(x_idProducto, x_cantidad)
	SELECT 
		x_idProducto,
		x_cantidad
	FROM OPENXML (@idoc, 'compra/venta',1)
	WITH(
			x_idProducto INT,
			x_cantidad INT
		 )

	--AHORA SE PASA TODA LA VARIABLE DE TIPO TABLA A LA TABLA [dbo].[detalleVenta]
	--Y ASI SE LOGRA INSERTAR DATA DE MANERA MASIVA
	INSERT INTO [dbo].[detalleVenta](
						[idProducto], 
						[cantidad])
	SELECT 
		x_idProducto, 
		x_cantidad
	FROM @T_VENTA
	
END