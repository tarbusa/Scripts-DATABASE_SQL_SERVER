ALTER PROCEDURE [dbo].[PA_GET_PRODUCTOS_FILTER]
(
	@pi_tipo VARCHAR(50) --H(HOMBRE), N(NI�O), M(MUJER)
)
AS
BEGIN
	SELECT 
		DISTINCT(P.idProducto) AS IdProducto,
		P.NOMBRE AS Producto,
		P.MODELO AS Modelo,
		P.PRECIO AS Precio,
		P.IMAGEN as Imagen
	FROM CATEGORIA C WITH(NOLOCK)
		INNER JOIN PRODUCTO_CATEGORIA PC WITH(NOLOCK)
		ON PC.idCategoria = C.idCategoria 
		INNER JOIN PRODUCTO P WITH(NOLOCK)
		ON P.IDPRODUCTO = PC.IDPRODUCTO
	WHERE (C.tipo = @pi_tipo OR @pi_tipo = '')
END