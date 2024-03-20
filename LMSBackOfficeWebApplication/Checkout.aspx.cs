﻿using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using LMSBackOfficeDAL.Model;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMSBackOfficeWebApplication
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strResponse = Login_DataAccess.GetVisitorInfo();

                if (Session["Checkout"] != null)
                {
                    var checkout = Session["Checkout"] as CheckoutModel;

                    lblAmount.Text = $"{checkout.TotalAmount.ToString()} USD";
                    lblTotalAmount.Text = $"{checkout.TotalAmount.ToString()} USD";

                    txtMemberCode.Text = checkout.MemberFullName;
                    txtMemberFullName.Text = checkout.MemberFullName;
                    txtEmail.Text = checkout.Email;
                    //txtCurrency.Text = checkout.Currency;
                   // txtWalletAddress.Text = checkout.ToWalletAddress;
                }
            }
        }

        private IDictionary<string, string> CreateQueryParameters(CheckoutModel model)
        {
            string storeLocation = HttpContext.Current.Request.Url.AbsoluteUri;
            string authority = HttpContext.Current.Request.Url.Authority;
            var path = storeLocation.Split('/');
            var completeurl = $"{path[0]}://{path[2]}";
            
            string host = HttpContext.Current.Request.Url.Host;
            string orderNo = Guid.NewGuid().ToString();
            Uri uri = new Uri(storeLocation);
            Session["OrderNo"] = orderNo;
            var queryParameters = new Dictionary<string, string>()
            {
                //ipn settings
                ["ipn_version"] = "1.0",
                ["cmd"] = "_pay_auto",
                ["ipn_type"] = "simple",
                ["ipn_mode"] = "hmac",
                ["merchant"] = Configurations.MerchantId,
                ["allow_extra"] = "0",
                ["currency"] = "USD",
                ["amountf"] = model.TotalAmount.ToString("N2"),
                ["item_name"] = "totup",

               
                //IPN, success and cancel URL
                ["success_url"] = $"{completeurl}/SuccessHandler.aspx?orderNumber={orderNo}", // order summery page
                ["ipn_url"] = $"{completeurl}/IPNHandler.ashx",
                ["cancel_url"] = $"{completeurl}/CancelTransaction.aspx",

                //order identifier                
                ["custom"] = Guid.NewGuid().ToString(),

                //billing info
                ["first_name"] = model.MemberFullName,
                ["email"] = model.Email,

            };
            return queryParameters;
        }

        protected void CheckoutBtn_ServerClick(object sender, ImageClickEventArgs e)
        {
            if (Session["Checkout"] != null)
            {
                var checkout = Session["Checkout"] as CheckoutModel;
                checkout.TotalAmount = 1;
                checkout.ToWalletAddress = txtWalletAddress.Text;
                checkout.Currency = DropDownList1.SelectedValue.ToString();
                var queryParameters = CreateQueryParameters(checkout);
                var redirectUrl = UtilMethods.AddQueryString(Configurations.CoinPaymentUrl, queryParameters);

                Response.Redirect(redirectUrl);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Checkout"] != null)
            {
                var checkout = Session["Checkout"] as CheckoutModel;

                var queryParameters = CreateQueryParameters(checkout);
                var redirectUrl = UtilMethods.AddQueryString(Configurations.CoinPaymentUrl, queryParameters);

                Response.Redirect(redirectUrl);
            }
        }

        //protected void CheckoutBtn_ServerClick(object sender, ImageClickEventArgs e)
        //{
        //    if (Session["Checkout"] != null)
        //    {
        //        var checkout = Session["Checkout"] as CheckoutModel;

        //        var queryParameters = CreateQueryParameters(checkout);
        //        var redirectUrl = UtilMethods.AddQueryString(Configurations.CoinPaymentUrl, queryParameters);

        //        Response.Redirect(redirectUrl);
        //    }
        //}
    }
}