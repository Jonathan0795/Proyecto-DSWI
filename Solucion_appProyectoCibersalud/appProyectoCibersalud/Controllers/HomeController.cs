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
        public async Task<IActionResult> Index(int p = 0)
        {
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());

            IEnumerable<Producto> temporal = sProducto.GetProducto("");

            if (temporal.Count() > 0)
            {
                int f = 20;
                int c = temporal.Count();
                int nPags = (f % c != 0 ? c / f : c / f + 1);

                ViewBag.p = p;
                ViewBag.npags = nPags;
                //Nro de pagin
                return View(await Task.Run(() => temporal.Skip(f * p).Take(f)));
            }
            else
            {
                return View(await Task.Run(() => temporal));
            }
        }

        public async Task<IActionResult> Categoria(int cat, int p = 0)
        {
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());
            ViewBag.catFamilia = await Task.Run(() => sCategorias.GetCategoriasFamilia(cat));
            ViewBag.categoria = await Task.Run(() => sCategorias.GetCategoriasById(cat));

            IEnumerable<Producto> temporal = sProducto.GetProductoByIdCategoria(cat);

            if (temporal.Count() > 0)
            {
                int f = 20;
                int c = temporal.Count();
                int nPags = (f % c != 0 ? c / f : c / f + 1);

                ViewBag.p = p;
                ViewBag.npags = nPags;
                //Nro de pagin
                return View(await Task.Run(() => temporal.Skip(f * p).Take(f)));
            }
            else
            {
                return View(await Task.Run(() => temporal));
            }
        }
        public async Task<IActionResult> Producto(int id)
        {
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());
            return View(await Task.Run(() => sProducto.GetProductoById(id)));
        }

        [HttpPost]
        public JsonResult ProductoXNombre(string nombre="")
        { 
            return Json(sProducto.GetProducto(nombre));  
        } 
    }
}