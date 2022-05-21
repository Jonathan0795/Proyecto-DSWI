using appProyectoCibersalud.Models;

namespace appProyectoCibersalud.Models.Interface
{
    public interface ICategorias
    {
        List<Categorias> GetCategoriasTotal();
        Categorias GetCategoriasFamilia(int idcategorias);
        Categorias GetCategoriasById(int idcategorias);
        List<Categorias> GetCategoriasBydesccategoria(string desccategoria);
        List<Categorias> GetCategoriasPadres();
        Categorias GetCategoriasPadresById(int idcategorias);
        List<Categorias> GetCategoriasHijosById(int idcategorias); 
    }
}
