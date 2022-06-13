using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class Laboratorio
    {
        [Required, Display(Name = "Id Laboratorio")] public int idlaboratorio { get; set; }

        [Required, Display(Name = "Nombre")] public string? deslaboratorio { get; set; }

        [Display(Name = "Estado")] public int idestado { get; set; }

        [Required, Display(Name = "Estado Descripcion")] public string estado { get { if (idestado == 1) return "Activo"; return "Inactivo"; }  } 
    }
}
