using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class venta
    {
        [Required, Display(Name = "Id Venta")] public int idVenta { get; set; }
    }
}
