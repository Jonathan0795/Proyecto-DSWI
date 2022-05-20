using appProyectoCibersalud.Models;

namespace appProyectoCibersalud.Models.Interface
{
    public interface ICategorias
    {
        List<Categorias> GetCategoriasTotal();
        List<Categorias> GetCategoriasById(int idcategorias);
        List<Categorias> GetCategoriasBydesccategoria(string desccategoria);
        List<Categorias> GetCategoriasPadres();
        List<Categorias> GetCategoriasPadresById(int idcategorias);
        List<Categorias> GetCategoriasHijosById(int idcategorias);
    }
}
