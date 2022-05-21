using Microsoft.AspNetCore.Mvc;

namespace appProyectoCibersalud.Controllers
{
    public class ProductoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
