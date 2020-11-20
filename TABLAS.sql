CREATE DATABASE EXAMENANGULAR
GO
USE EXAMENANGULAR
GO
create table Categoria(
idCategoria int identity(1,1) not null primary key,
nombre varchar(100),
)

create table producto(
idProducto int identity(1,1) not null,
nombre varchar(100),
modelo varchar(100),
precio int,
imagen varchar(150),
primary key(idProducto)
)

CREATE TABLE PRODUCTO_CATEGORIA
(
id int identity(1,1) not null,
idProducto int,
idCategoria int,
primary key(id),
foreign key(idProducto) references producto(idProducto),
foreign key(idCategoria) references categoria(idCategoria)
)

/*PUEDE QUE ESTA TABLA ESTÁ DE DEMAS*/
create table detalleVenta(
id int identity(1,1) not null,
idProducto int,
cantidad int,
primary key(id),
foreign key(idProducto) references producto(idProducto)
)
/*-------------------------------------*/

CREATE TABLE USUARIO(
idUsuario int identity (1,1) not null,
firstName varchar(150),
lastName varchar(150),
userName varchar(100),
email varchar(150),
pass varchar(150),
primary key(idUsuario) 
)

CREATE TABLE USUARIO_PRODUCTO(
idUsuario int,
idProducto int,
foreign key(idUsuario) references USUARIO(idUsuario),
foreign key(idProducto)references producto(idProducto)
)