using appProyectoCibersalud.Models;

namespace appProyectoCibersalud.Models.Interface
{
    public interface IProducto
    {
        List<Producto> GetProducto(string nombre);
        List<Producto> GetProductoByIdCategoria(int IdCategoria);
    }
}
