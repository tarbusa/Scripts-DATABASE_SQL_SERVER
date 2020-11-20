SELECT * FROM [dbo].[Categoria]
SELECT * FROM [dbo].[detalleVenta]
SELECT * FROM [dbo].[producto]
SELECT * FROM [dbo].[PRODUCTO_CATEGORIA]
SELECT * FROM [dbo].[USUARIO]
SELECT * FROM [dbo].[USUARIO_PRODUCTO]

INSERT INTO [dbo].[USUARIO]
(firstName, lastName, userName, email, pass) VALUES
('TONY', 'TAFUR', 'tarbusa', 'tarbusa@gmail.com','1234'),
('ALEX', 'BUSTAMANTE', 'XANT', 'alex@gmail.com', '1111')

SELECT
	U.idUsuario AS idUser,
	U.firstName AS NOMBRE,
	U.lastName AS APELLIDO,
	U.userName AS USERNAME,
	U.email AS EMAIL,
	U.pass AS CONTRASEÑA,
	P.idProducto AS IdProducto,
	P.nombre AS PRODUCTO,
	P.precio AS PRECIO,
	P.modelo as MODELO,
	P.imagen AS 'Ruta IMG'
FROM [dbo].[USUARIO] U
	INNER JOIN [dbo].[USUARIO_PRODUCTO] UP
	ON UP.idUsuario = U.idUsuario
	INNER JOIN [dbo].[producto] P
	ON p.idProducto = up.idProducto
ORDER BY NOMBRE DESC