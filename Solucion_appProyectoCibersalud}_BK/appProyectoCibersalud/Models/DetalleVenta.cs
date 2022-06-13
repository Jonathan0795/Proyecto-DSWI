using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class detalleVenta
    {
        [Required, Display(Name = "Id Venta Detalle")] public int iddetalleVenta { get; set; }
    }
}
