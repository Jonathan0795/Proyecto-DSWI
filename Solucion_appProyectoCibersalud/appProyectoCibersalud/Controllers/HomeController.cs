using Microsoft.AspNetCore.Mvc;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.AspNetCore.Session;
using Newtonsoft.Json; //serializar en formato de cadena json
using appProyectoCibersalud.Models;
using appProyectoCibersalud.Models.Interface;
using appProyectoCibersalud.Models.Repository;
using Microsoft.AspNetCore.Mvc.Rendering;
using appProyectoCibersalud.Services.Paypal;
using PayPal.Api;
using appProyectoCibersalud.Services.Paypal.Interfaces;
using appProyectoCibersalud.Services.Paypal.ConfigOptions;
using Microsoft.Extensions.Options;

namespace appProyectoCibersalud.Controllers
{
    public class HomeController : Controller
    {
        private readonly IConfiguration Configuration;

        private IOptions<PayPalAuthOptions> PayPal;
        IProducto sProducto;
        ICategorias sCategorias;

        public HomeController(IConfiguration configuration)
        {
            sProducto = new ProductoRepository(configuration);
            sCategorias = new CategoriasRepository(configuration);
            Configuration = configuration;
        }
        public async Task<IActionResult> Index(int p = 0)
        {
            if (HttpContext.Session.GetString("Carrito") == null)
            {
                HttpContext.Session.SetString("Carrito", JsonConvert.SerializeObject(new List<Carrito>()));
            }
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
            if (HttpContext.Session.GetString("Carrito") == null)
            {
                HttpContext.Session.SetString("Carrito", JsonConvert.SerializeObject(new List<Carrito>()));
            }
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
            if (HttpContext.Session.GetString("Carrito") == null)
            {
                HttpContext.Session.SetString("Carrito", JsonConvert.SerializeObject(new List<Carrito>()));
            }
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());
            return View(await Task.Run(() => sProducto.GetProductoById(id)));
        }

        [HttpPost]
        public JsonResult ProductoXNombre(string nombre="")
        { 
            return Json(sProducto.GetProducto(nombre));  
        }


        [HttpPost]
        public async Task<IActionResult> Producto(int id, int cantidad)
        {
            //1.buscar el producto y almacenar el contenido en una instancia de registro
            Producto reg = sProducto.GetProductoById(id);
            Carrito item = new Carrito(reg) { 
                cantidad = cantidad
            };

            //2.deserializo el session canasta en una lista en una lista de registro
            List<Carrito> auxiliar = JsonConvert.DeserializeObject<List<Carrito>>(HttpContext.Session.GetString("Carrito"));
            //3.agregar item al auxiliar
            auxiliar.Add(item);

            //4.serializar el contenido de auxiliar almacenado en session canasta
            HttpContext.Session.SetString("Carrito", JsonConvert.SerializeObject(auxiliar));

            ViewBag.mensaje = "Producto Registrado";
            ViewBag.categorias = await Task.Run(() => sCategorias.GetCategoriasTotal());
            return View(await Task.Run(() => sProducto.GetProductoById(id)));
        }


        public IActionResult Canasta()
        {
            List<Carrito> temporal = JsonConvert.DeserializeObject<List<Carrito>>(HttpContext.Session.GetString("Carrito"));
            return View(temporal);
        }
        [HttpPost]
        public IActionResult Canasta(String urlRetorno)
        { 
            List<Carrito> temporal = JsonConvert.DeserializeObject<List<Carrito>>(HttpContext.Session.GetString("Carrito"));
            PayPal.Value.PayPalClientId= Configuration["PayPalClientID"];
            PayPal.Value.PayPalClientSecret = Configuration["PayPalClientSecret"];
            IPaypalServices pal = new PaypalServices(PayPal);
            Payment url = pal.crearVentaPayPal(Configuration, temporal.Sum(x => x.precioproducto), urlRetorno, urlRetorno, "order");
             
            return View(temporal);
        }
    }
}