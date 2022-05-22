using appProyectoCibersalud.Models;
using Microsoft.AspNetCore.Mvc;

namespace appProyectoCibersalud.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(usuarios usu)
        {
            return View();
        } 
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ProductoListar()
        {
            return View();
        }
        public IActionResult ProductoObtener()
        {
            return View();
        }
        public IActionResult ProductoGrabar()
        {
            return View();
        }

    }
}
