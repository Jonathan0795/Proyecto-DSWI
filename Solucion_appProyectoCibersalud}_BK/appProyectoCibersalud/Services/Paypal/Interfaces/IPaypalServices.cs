using PayPal.Api;

namespace appProyectoCibersalud.Services.Paypal.Interfaces
{
    public interface IPaypalServices
    {
        Payment crearVentaPayPal(IConfiguration configuration,decimal? amount, string returnUrl, string cancelUrl, string intent);

        Payment ExecutePayment(string paymentId, string payerId);
    }
}
