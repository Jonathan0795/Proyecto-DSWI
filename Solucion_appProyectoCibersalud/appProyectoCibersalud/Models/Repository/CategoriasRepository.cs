using appProyectoCibersalud.Models;
using appProyectoCibersalud.Models.Interface;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Configuration;

namespace appProyectoCibersalud.Models.Repository
{
    public class CategoriasRepository : ICategorias
    { 
        public CategoriasRepository(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        private IConfiguration Configuration;

        public List<Categorias> GetCategoriasBydesccategoria(string desccategoria)
        {
            List<Categorias> temporal = new List<Categorias>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Categorias_x_Desc", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Desc", desccategoria);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Categorias()
                    { 
                        idcategorias = dr.GetInt32(0),
                        idcategoriapadre = dr.GetInt32(1),
                        desccategoria = dr.GetString(2), 
                        idestado = dr.GetInt32(3)
                    });
                }
            }
            return temporal;
        }

        public List<Categorias> GetCategoriasById(int idcategorias)
        {
            List<Categorias> temporal = new List<Categorias>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Categorias_X_Id", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcategorias", idcategorias);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Categorias()
                    {
                        idcategorias = dr.GetInt32(0),
                        idcategoriapadre = dr.GetInt32(1),
                        desccategoria = dr.GetString(2),
                        idestado = dr.GetInt32(3)
                    });
                }
            }
            return temporal;
        }

        public List<Categorias> GetCategoriasHijosById(int idcategorias)
        {
            List<Categorias> temporal = new List<Categorias>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Categorias_Hijos", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcategorias", idcategorias);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Categorias()
                    {
                        idcategorias = dr.GetInt32(0),
                        idcategoriapadre = dr.GetInt32(1),
                        desccategoria = dr.GetString(2),
                        idestado = dr.GetInt32(3)
                    });
                }
            }
            return temporal;
        }

        public List<Categorias> GetCategoriasPadres()
        {
            List<Categorias> temporal = new List<Categorias>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Categorias_Padre", cn);
                cmd.CommandType = CommandType.StoredProcedure; 
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Categorias()
                    {
                        idcategorias = dr.GetInt32(0), 
                        desccategoria = dr.GetString(2),
                        idestado = dr.GetInt32(3)
                    });
                }
            }
            return temporal;
        }

        public List<Categorias> GetCategoriasPadresById(int idcategorias)
        {
            List<Categorias> temporal = new List<Categorias>();
            using (SqlConnection cn = new SqlConnection(this.Configuration.GetConnectionString("ConexionCiberSalud")))
            {

                SqlCommand cmd = new SqlCommand("USP_Listar_Categorias_Obtener_Padre", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcategorias", idcategorias);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    temporal.Add(new Categorias()
                    {
                        idcategorias = dr.GetInt32(0),
                        idcategoriapadre = dr.GetInt32(1),
                        desccategoria = dr.GetString(2),
                        idestado = dr.GetInt32(3)
                    });
                }
            }
            return temporal;
        }

        public List<Categorias> GetCategoriasTotal()
        {
            List<Categorias> temporal = GetCategoriasPadres().ToList();
            foreach (Categorias item in temporal)
            {
                item.CategoriasHijo = GetCategoriasHijosById(item.idcategorias).ToList();
            } 
            return temporal;
        }
    }
}
