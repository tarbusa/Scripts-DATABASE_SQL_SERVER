-- INSERTAR A LA TABLA CATEGORIA
INSERT INTO [dbo].[Categoria](nombre)
values('HOMBRE'),('MUJER'),('NIÑO')

-- INSERTAR A LA TABLA PRODUCTO
INSERT INTO [dbo].[producto] ([nombre],[modelo],[precio],[imagen])
VALUES
('BOLSO MUJER', 'DE CUERO', 340, 'assets/img/bolsoMujer.png'),
('TOMATODO', 'BOTELLA PLASTICO', 35, 'assets/img/botella.png'),
('CAJA MISTERIOSA', 'MISTERIO', 146, 'assets/img/caja.jpg'),
('CELULAR', 'CELULAR', 459, 'assets/img/celular.png'),
('DINOSAURIO', 'DINO', 39, 'assets/img/dino.PNG'),
('PANTALON HOMBRE', 'JEANS', 189,'assets/img/pantalonesHombre.PNG'),
('ROBOT PERRO', 'ROBOT', 299, 'assets/img/robot.jpg'),
('ROBOT R2D1', 'ROBOT', 169, 'assets/img/robotR.jpg'),
('SCOTTER', 'XIAOMI', 899, 'assets/img/scotter.jpg'),
('TACONES', 'CALZADO', 300, 'assets/img/tacones.PNG'),
('MEMORIA USB', 'ELECTRONICA', 50, 'assets/img/usb.jpg'),
('ZAPATILLA HO', 'CALZADO', 259, 'assets/img/zapatilla.PNG'),
('ZAPARILLA RD', 'CALZADO', 349, 'assets/img/ZapatillaRojo.PNG')

--INSERTAR A LA TABLA PRODUCTO_CATEGORIA
INSERT INTO [dbo].[PRODUCTO_CATEGORIA]([idProducto],[idCategoria])
VALUES
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(10, 2),
(11, 2),
(5, 3),
(7, 3),
(8, 3)

INSERT INTO [dbo].[USUARIO]
(firstName, lastName, userName, email, pass) VALUES
('TONY', 'TAFUR', 'tarbusa', 'tarbusa@gmail.com','1234'),
('ALEX', 'BUSTAMANTE', 'XANT', 'alex@gmail.com', '1111')

INSERT INTO [dbo].[USUARIO_PRODUCTO]
(idUsuario, idProducto) VALUES
(1, 3),
(1, 4),
(1, 9),
(1,11),
(2, 1),
(2, 10),
(2, 2)
