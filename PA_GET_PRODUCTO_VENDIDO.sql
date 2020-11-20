ALTER PROCEDURE [dbo].[PA_GET_PRODUCTO_VENDIDO]
AS
BEGIN
	SELECT 
		P.idProducto as IdProducto,
		p.nombre as Nombre,
		p.modelo as Modelo,
		p.precio as Precio,
		p.imagen as Imagen,
		dv.cantidad as Cantidad
	FROM [dbo].[producto] P
	INNER JOIN [dbo].[detalleVenta] DV
	ON DV.idProducto = P.idProducto
END