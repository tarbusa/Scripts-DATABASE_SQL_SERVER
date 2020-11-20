CREATE PROCEDURE [dbo].[PA_GET_PRODUCTS_OF_USER](
	@pi_user varchar(150),
	@pi_pass varchar(100)
)
AS
BEGIN
	SELECT
		P.idProducto AS IdProducto,
		P.nombre AS Producto,
		P.precio AS Precio,
		P.modelo as Modelo,
		P.imagen AS Imagen
	FROM [dbo].[USUARIO] U WITH(NOLOCK)
		INNER JOIN [dbo].[USUARIO_PRODUCTO] UP WITH(NOLOCK)
		ON UP.idUsuario = U.idUsuario
		INNER JOIN [dbo].[producto] P WITH(NOLOCK)
		ON p.idProducto = up.idProducto
	WHERE 
		(U.userName = @pi_user or U.email = @pi_user) AND
		(U.pass = @pi_pass)
END