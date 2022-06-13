use master
go 
DROP DATABASE IF EXISTS cibersalud
go
create database cibersalud
go
use cibersalud
go 
/****************************************/
create table tb_laboratorio
(
idlaboratorio int IDENTITY(1,1) NOT NULL,
deslaboratorio varchar(60),
idestado int check(idEstado in(1,2,3)) default 1,
-- fechacreacion datetime,
-- usuariocreacion int,
-- fechamodificacion datetime,
-- usuariomodificacion int,
primary key (idlaboratorio)
);
/********************************************************/
create table tb_ubigeos
(
idUbigeo char(6),
departamento varchar(30),
provincia varchar(30),
distrito varchar(30),
primary key (idUbigeo)
);
/********************************************************/
create table tb_categorias
(
idcategorias int ,
idcategoriapadre int null,
desccategoria varchar(40),
idestado int check(idestado in(1,2,3)) default 1,
-- fechacreacion datetime,
-- usuariocreacion int,
-- fechamodificacion datetime,
-- usuariomodificacion int,
primary key(idCategorias)
);

ALTER TABLE tb_categorias
ADD FOREIGN KEY (idcategoriapadre) REFERENCES tb_categorias(idcategorias);

/********************************************************/
create table tb_producto
(
idproducto int IDENTITY(1,1) NOT NULL,
idlaboratorio int,
idcategorias int,
nombreproducto varchar(70),
detalleproducto varchar(600),
tipopresentacion varchar(50),
precioproducto decimal(8,2) not null,
stockproducto int default 20,
urlproducto varchar(200),
idestado int check(idestado in(1,2,3))default 1,
-- fechacreacion datetime,
-- usuariocreacion int,
-- fechamodificacion datetime,
-- usuariomodificacion int,
primary key (idproducto),
foreign key (idlaboratorio)references tb_laboratorio(idlaboratorio),
foreign key (idcategorias)references tb_categorias(idcategorias)
); 
/********************************************************/
create table tb_tipodocumento
(
iddoc int,
descdoc varchar(40),
primary key(iddoc)
);
/******************************************/
create table tb_usuarios
(
idUsuario int IDENTITY(1,1) NOT NULL,
tipoUsuario char(3)check(tipoUsuario in('ADM','VEN')), 
iddoc int,
nroDoc char(8),
nombre varchar(50),
direccion varchar(200),
idUbigeo char(6),
apellidoPat varchar(50),
apellidoMat varchar(50),
usuario varchar(60) unique,
clave varchar(25),
tipoSexo char(10) check (tipoSexo in('Masculino','Femenino')),
fechaNac date,
idEstado int check(idEstado in(1,2,3)),
fechaCreacion datetime,
usuarioCreacion int,
fechaModificacion datetime,
usuarioModificacion int,
primary key(idUsuario),
foreign key (iddoc)references tb_tipodocumento(iddoc), 
foreign key (idUbigeo)references tb_ubigeos(idUbigeo)
);
/******************************************/
create table tb_cliente
(
idcliente int IDENTITY(1,1) NOT NULL,
apellidopat varchar(50) null,
apellidomat varchar(50) null,
nombre varchar(50) not null,
iddoc int,
documento char(8) not null,
fechnac date not null,
tiposexo char(11) check(tiposexo in('M','F'))not null,
usuario varchar(60) unique,
clave varchar(25) not null,
direccion varchar(200) null,
idUbigeo char(6) null,
-- idEstado int check(IdEstado in(1,2,3)),
-- fechaCreacion datetime,
-- usuarioCreacion int,
-- fechaModificacion datetime,
-- usuarioModificacion int,
primary key(idcliente),
foreign key (iddoc)references tb_tipodocumento(iddoc),
foreign key (idUbigeo)references tb_ubigeos(idUbigeo)
);
/******************************************/
create table tb_venta
(
idVenta int IDENTITY(1,1) NOT NULL, 
idcliente int,
idUsuario int,
fechaPedido datetime,
montoTotal decimal(18,2),
idEstado int check(idEstado in(1,2,3)),
fechaCreacion datetime,
usuarioCreacion int,
fechaModificacion datetime,
usuarioModificacion int,
primary key(idVenta), 
foreign key (idcliente)references tb_cliente(idcliente),
foreign key (idUsuario)references tb_usuarios(idUsuario)
);
create table tb_detalleVenta
(
iddetalleVenta int IDENTITY(1,1) NOT NULL,
idVenta int,
idProducto int,
cantidad int,
nomto decimal(18,2),
idEstado int check(idEstado in(1,2,3)),
fechaCreacion datetime,
usuarioCreacion int,
fechaModificacion datetime,
usuarioModificacion int,
primary key (iddetalleVenta),
foreign key (idVenta)references tb_venta(idVenta),
foreign key (idProducto)references tb_producto(idProducto)
);



