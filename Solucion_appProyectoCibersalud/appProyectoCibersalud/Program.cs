using appProyectoCibersalud.Models.Repository;
using appProyectoCibersalud.Models.Interface;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddSingleton<ICategorias, CategoriasRepository>();
builder.Services.AddSingleton<ICliente, ClienteRepository>(); 
builder.Services.AddSingleton<IDetalleVenta, DetalleVentaRepository>();
builder.Services.AddSingleton<ILaboratorio, LaboratorioRepository>();
builder.Services.AddSingleton<IProducto, ProductoRepository>();
builder.Services.AddSingleton<ITipoDocumento, TipoDocumentoRepository>();
builder.Services.AddSingleton<IUsuarios, UsuariosRepository>();
builder.Services.AddSingleton<IVenta, VentaRepository>();

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
 
app.Run();
