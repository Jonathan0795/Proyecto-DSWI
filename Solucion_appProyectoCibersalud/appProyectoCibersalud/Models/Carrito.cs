using System.ComponentModel.DataAnnotations;

namespace appProyectoCibersalud.Models
{
    public class Carrito
    {
        [Required, Display(Name = "Id Producto")] public int idproducto { get; set; }

        [Required, Display(Name = "Laboratirio")] public Laboratorio? laboratorio { get; set; }

        [Required, Display(Name = "Categoria")] public Categorias? categoria { get; set; }

        [Required, Display(Name = "Nombre")] public string? nombreproducto { get; set; }

        [Required, Display(Name = "Descripcion")] public string? detalleproducto { get; set; }

        [Required, Display(Name = "Presentacion")] public string? tipopresentacion { get; set; }

        [Required, Display(Name = "precio")] public decimal? precioproducto { get; set; }

        [Required, Display(Name = "stock")] public decimal? stockproducto { get; set; }

        [Required, Display(Name = "url")] public string? urlproducto { get; set; }

        [Required, Display(Name = "Cantidad")] public int? cantidad { get; set; }

        [Required, Display(Name = "Sub Total")] public decimal? subTotal { get { return cantidad * precioproducto; } }

        [Display(Name = "Estado")] public int idestado { get; set; }

        [Required, Display(Name = "Estado Descripcion")] public string estado { get { if (idestado == 1) return "Activo"; return "Inactivo"; } }

        public Carrito() { 
        }
        public Carrito(Producto prod)
        {
            this.idproducto = prod.idproducto;
            this.laboratorio = prod.laboratorio;
            this.categoria = prod.categoria;
            this.nombreproducto = prod.nombreproducto;
            this.detalleproducto = prod.detalleproducto;
            this.tipopresentacion = prod.tipopresentacion;
            this.precioproducto = prod.precioproducto;
            this.stockproducto = prod.stockproducto;
            this.urlproducto = prod.urlproducto; 
            this.cantidad = prod.cantidad;  
            this.idestado = prod.idestado;
        }
    }
}
