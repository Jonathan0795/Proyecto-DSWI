using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class Producto
    {
        [Required, Display(Name = "Id Producto")] public int idproducto { get; set; }

        [Required, Display(Name = "Laboratirio")] public Laboratorio laboratorio { get; set; } =  new Laboratorio(); 

        [Required, Display(Name = "Categoria")] public Categorias categoria { get; set; } = new Categorias();

        [Required, Display(Name = "Nombre")] public string? nombreproducto { get; set; }

        [Required, Display(Name = "Descripcion")] public string? detalleproducto { get; set; }

        [Required, Display(Name = "Presentacion")] public string? tipopresentacion { get; set; }

        [Required, Display(Name = "precio"),DisplayFormat(DataFormatString = "{0:C}")] public decimal? precioproducto { get; set; }

        [Required, Display(Name = "stock")] public decimal? stockproducto { get; set; }

        [Required, Display(Name = "url")] public string? urlproducto { get; set; } 

        [Display(Name = "Estado")] public int idestado { get; set; }

        [Required, Display(Name = "Cantidad")] public int? cantidad { get; set; }

        [Required, Display(Name = "Estado Descripcion")] public string estado { get { if (idestado == 1) return "Activo"; return "Inactivo"; } }
    }
}
