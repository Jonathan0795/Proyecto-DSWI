using appProyectoCibersalud.Models;

namespace appProyectoCibersalud.Models.Interface
{
    public interface IProducto
    {
        List<Producto> GetProducto(string nombre);
        Producto GetProductoById(int IdProducto);
        List<Producto> GetProductoByIdCategoria(int IdCategoria);
    }
}
