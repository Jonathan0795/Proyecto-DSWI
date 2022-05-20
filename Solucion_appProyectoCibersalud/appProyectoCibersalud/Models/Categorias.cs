using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class Categorias
    { 
        [Required, Display(Name = "Id Categoria")] public int idcategorias { get; set; }
        [Required, Display(Name = "Id Categoria Padre")] public int? idcategoriapadre { get; set; } 
        [Required, Display(Name = "Descripcion")] public string? desccategoria { get; set; } 
        [Display(Name = "Estado")] public int idestado { get; set; } 
        [Required, Display(Name = "Estado Descripcion")] public string estado { get { if (idestado == 1) return "Activo"; return "Inactivo"; } }

        public List<Categorias> CategoriasHijo { get; set; } = new List<Categorias>();    
    }
}
