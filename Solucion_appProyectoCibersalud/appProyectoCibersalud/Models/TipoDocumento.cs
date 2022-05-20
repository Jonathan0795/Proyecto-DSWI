using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class tipodocumento
    {
        [Required, Display(Name = "Id Documento")] public int iddoc { get; set; } 
        [Required, Display(Name = "Descripcion")] public string? descdoc { get; set; }
    }
}
