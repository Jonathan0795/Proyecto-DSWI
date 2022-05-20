using Microsoft.AspNetCore.Mvc;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.AspNetCore.Session;
using Newtonsoft.Json; //serializar en formato de cadena json
using appProyectoCibersalud.Models;
using appProyectoCibersalud.Models.Interface;
using appProyectoCibersalud.Models.Repository;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace appProyectoCibersalud.Controllers
{
    public class HomeController : Controller
    { 
        IProducto sProducto;
        ICategorias sCategorias;

        public HomeController(IConfiguration configuration)
        { 
            sProducto = new ProductoRepository(configuration);
            sCategorias = new CategoriasRepository(configuration);
        }  
        public async Task<IActionResult> Index()
        {
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());
            return View(await Task.Run(() => sProducto.GetProducto("")));
        }


    }
}