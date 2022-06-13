using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class cliente
    {
        [Required, Display(Name = "Id Cliente")] public int idCliente { get; set; }

    }
}
