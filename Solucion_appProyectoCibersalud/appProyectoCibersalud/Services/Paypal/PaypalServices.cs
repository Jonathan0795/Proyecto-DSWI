﻿using appProyectoCibersalud.Services.Paypal.Interfaces;
using appProyectoCibersalud.Services.Paypal.ConfigOptions;
using Microsoft.Extensions.Options;
using PayPal.Api; 
using System;
using System.Collections.Generic;
namespace appProyectoCibersalud.Services.Paypal
{
    public class PaypalServices : IPaypalServices
    {
        private readonly PayPalAuthOptions _options;

        public PaypalServices(IOptions<PayPalAuthOptions> options)
        {
            _options = options.Value;
        }
         
        public Payment crearVentaPayPal(IConfiguration configuration, decimal? amount, string returnUrl, string cancelUrl, string intent)
        {
            var apiContext = new APIContext(new OAuthTokenCredential(_options.PayPalClientId, _options.PayPalClientSecret).GetAccessToken());

            var payment = new Payment()
            {
                intent = intent,
                payer = new Payer() { payment_method = "paypal" },
                transactions = GetTransactionsList(configuration,amount),
                redirect_urls = new RedirectUrls()
                {
                    cancel_url = cancelUrl,
                    return_url = returnUrl
                }
            };

            var createdPayment = payment.Create(apiContext);

            return createdPayment;
        }


        private List<Transaction> GetTransactionsList(IConfiguration configuration, decimal? amount)
        {
            var transactionList = new List<Transaction>();

            transactionList.Add(new Transaction()
            {
                description = "Transaction description.",
                invoice_number = GetRandomInvoiceNumber(),
                amount = new Amount()
                {
                    currency = "USD",
                    total = amount.ToString(),
                    details = new Details()
                    {
                        tax = "0",
                        shipping = "0",
                        subtotal = amount.ToString()
                    }
                },
                item_list = new ItemList()
                {
                    items = new List<Item>()
                    {
                        new Item()
                        {
                            name = "Payment",
                            currency = "USD",
                            price = amount.ToString(),
                            quantity = "1",
                            sku = "sku"
                        }
                    }
                },
                payee = new Payee
                { 
                    email = configuration["PayPalClientID"], 
                    merchant_id = configuration["PayPalClientSecret"]
                }
            });

            return transactionList;
        }

        public Payment ExecutePayment(string paymentId, string payerId)
        {
            var apiContext = new APIContext(new OAuthTokenCredential(_options.PayPalClientId, _options.PayPalClientSecret).GetAccessToken());

            var paymentExecution = new PaymentExecution() { payer_id = payerId };

            var executedPayment = new Payment() { id = paymentId }.Execute(apiContext, paymentExecution);

            return executedPayment;
        }

        private string GetRandomInvoiceNumber()
        {
            return new Random().Next(999999999).ToString();
        }
    }
}
