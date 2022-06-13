using appProyectoCibersalud.Models;
using appProyectoCibersalud.Models.Interface;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;

namespace appProyectoCibersalud.Models.Repository
{
    public class ProductoRepository : IProducto
    {
        public ProductoRepository(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        private IConfiguration Configuration;
        public List<Producto> GetProducto(string nombre)
        {
            List<Producto> temporal = new List<Producto>(); 
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Productos_x_Nombre", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Producto()
                    {
                        idproducto = dr.GetInt32(0), 
                        laboratorio = new Laboratorio() { idlaboratorio = dr.GetInt32(1) },
                        categoria = new Categorias() { idcategorias = dr.GetInt32(2) }, 
                        nombreproducto = dr.GetString(3),
                        detalleproducto = dr.GetString(4),
                        tipopresentacion = dr.GetString(5),
                        precioproducto = dr.GetDecimal(6),
                        stockproducto = dr.GetInt32(7),
                        urlproducto = dr.GetString(8),
                        idestado = dr.GetInt32(9)  
                    });
                }
            }
            return temporal; 
        }
        public Producto  GetProductoById(int IdProducto)
        {
            Producto temporal = new Producto();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Productos_x_IdProducto", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idproducto", IdProducto);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal = new Producto()
                    {
                        idproducto = dr.GetInt32(0),
                        laboratorio = new Laboratorio() { idlaboratorio = dr.GetInt32(1) },
                        categoria = new Categorias() { idcategorias = dr.GetInt32(2) },
                        nombreproducto = dr.GetString(3),
                        detalleproducto = dr.GetString(4),
                        tipopresentacion = dr.GetString(5),
                        precioproducto = dr.GetDecimal(6),
                        stockproducto = dr.GetInt32(7),
                        urlproducto = dr.GetString(8),
                        idestado = dr.GetInt32(9)
                    };
                }
            }
            return temporal;
        }
        public List<Producto> GetProductoByIdCategoria(int IdCategoria)
        {
            List<Producto> temporal = new List<Producto>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Productos_x_Categoria", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcategorias", IdCategoria);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Producto()
                    {
                        idproducto = dr.GetInt32(0),
                        laboratorio = new Laboratorio() { idlaboratorio = dr.GetInt32(1) },
                        categoria = new Categorias() { idcategorias = dr.GetInt32(2) },
                        nombreproducto = dr.GetString(3),
                        detalleproducto = dr.GetString(4),
                        tipopresentacion = dr.GetString(5),
                        precioproducto = dr.GetDecimal(6),
                        stockproducto = dr.GetInt32(7),
                        urlproducto = dr.GetString(8),
                        idestado = dr.GetInt32(9)
                    });
                }
            }
            return temporal;
        }
    }
}
