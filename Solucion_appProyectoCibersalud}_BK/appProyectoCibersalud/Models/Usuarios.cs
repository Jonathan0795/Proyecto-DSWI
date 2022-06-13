using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class usuarios
    {
        [Required, Display(Name = "Id Usuario")] public int idUsuario { get; set; }  
    }
}
