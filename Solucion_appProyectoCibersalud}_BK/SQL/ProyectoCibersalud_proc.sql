use cibersalud
go
/*******************USP_Listar_Productos_x_IdProducto*************************/ 
create or alter proc USP_Listar_Productos_x_IdProducto
@idproducto int
as
select 
	p.idproducto,p.idlaboratorio,p.idcategorias,p.nombreproducto,
	p.detalleproducto,p.tipopresentacion,p.precioproducto,p.stockproducto,
	p.urlproducto,p.idestado 
	from tb_producto p with(nolock)
	where p.idproducto = @idproducto
go 
/*******************USP_Listar_Productos_x_Nombre*************************/ 
create or alter proc USP_Listar_Productos_x_Nombre 
@Nombre varchar(150)   
as
select 
	p.idproducto,p.idlaboratorio,p.idcategorias,p.nombreproducto,
	p.detalleproducto,p.tipopresentacion,p.precioproducto,p.stockproducto,
	p.urlproducto,p.idestado 
	from tb_producto p with(nolock)
	where p.nombreproducto like '%'+@Nombre+'%'
go 
/*******************USP_Listar_Productos_x_Categoria*************************/  
create or alter proc USP_Listar_Productos_x_Categoria 
@idcategorias INT
as
select 
	p.idproducto,p.idlaboratorio,p.idcategorias,p.nombreproducto,
	p.detalleproducto,p.tipopresentacion,p.precioproducto,p.stockproducto,
	p.urlproducto,p.idestado 
	from tb_producto p with(nolock)
	inner join tb_categorias c with(nolock)
	on p.idcategorias = c.idcategorias
	where c.idcategorias = @idcategorias or c.idcategoriapadre = @idcategorias 
go 
/*******************USP_Listar_Categorias*************************/ 
create or alter proc USP_Listar_Categorias_X_Id 
@idcategorias INT
as
select 
	c.idcategorias,c.idcategoriapadre,c.desccategoria,c.idestado  
	from tb_categorias c with(nolock) 
	where c.idcategorias = @idcategorias 
go  
/*******************USP_Listar_Categorias_x_Desc*************************/ 
create or alter proc USP_Listar_Categorias_x_Desc 
@Desc  varchar(150)   
as
select 
	c.idcategorias,c.idcategoriapadre,c.desccategoria,c.idestado  
	from tb_categorias c with(nolock) 
	where c.desccategoria = @Desc 
go   
/*******************USP_Listar_Categorias_Padre*************************/  
create or alter proc USP_Listar_Categorias_Padre  
as
select 
	c.idcategorias,c.idcategoriapadre,c.desccategoria,c.idestado  
	from tb_categorias c with(nolock) 
	where c.idcategoriapadre is null
go  
/*******************USP_Listar_Categorias_Obtener_Padre*************************/   
create or alter proc USP_Listar_Categorias_Obtener_Padre 
@idcategorias INT
as
select 
	p.idcategorias,p.idcategoriapadre,p.desccategoria,p.idestado  
	from tb_categorias p with(nolock) 
	where 
		p.idcategorias = iSnull(
			(select h.idcategoriapadre from tb_categorias h with(nolock) where h.idcategorias = @idcategorias)
		,@idcategorias)
go   
/*******************USP_Listar_Categorias_Hijos*************************/ 
create or alter proc USP_Listar_Categorias_Hijos 
@idcategorias INT
as
select 
	c.idcategorias,c.idcategoriapadre,c.desccategoria,c.idestado  
	from tb_categorias c with(nolock) 
	where c.idcategoriapadre = @idcategorias 
go   
 