using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using LMSBackOfficeDAL.Model;
using LMSBackOfficeWebApplication.Utitlity;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
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
                try
                {
                    string strResponse = Login_DataAccess.GetVisitorInfo();

                    if (Session["MembershipExpired"] != null)
                    {
                        var IsMembershipExpired = Convert.ToBoolean(Session["MembershipExpired"]);
                        if (IsMembershipExpired)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "HideSideBar();", true);
                        }
                    }

                    if (Session["Checkout"] != null)
                    {
                        var checkout = Session["Checkout"] as CheckoutModel;
                        var checkoutString = JsonConvert.SerializeObject(checkout);

                        WriteLog.LogInfo(checkoutString);

                        lblAmount.Text = $"{checkout.TotalAmount.ToString()} USD";
                        lblTotalAmount.Text = $"{checkout.TotalAmount.ToString()} USD";
                        DropDownList1.SelectedValue = "TRX";
                        txtMemberCode.Text = checkout.MemberCode;
                        txtMemberFullName.Text = checkout.MemberFullName;
                        txtEmail.Text = checkout.Email;
                        //txtCurrency.Text = checkout.Currency;
                        txtWalletAddress.Text = checkout.ToWalletAddress;
                    }
                }
                catch (Exception ex)
                {
                    WriteLog.LogError(ex);
                }
            }
        }

        private IDictionary<string, string> CreateQueryParameters(CheckoutModel model, string memberId)
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
                ["custom"] = $"{orderNo}|{memberId}",

                //billing info
                ["first_name"] = model.MemberFullName,
                ["email"] = model.Email,

            };
            return queryParameters;
        }

        protected void CheckoutBtn_ServerClick(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (Session["Checkout"] != null)
                {
                    var checkout = Session["Checkout"] as CheckoutModel;
                    checkout.TotalAmount = checkout.TotalAmount;
                    checkout.ToWalletAddress = txtWalletAddress.Text;
                    checkout.Currency = DropDownList1.SelectedValue.ToString();

                    string username = Session["Username"].ToString();
                    var member = Members_DataAccess.GetMemberInfo(username);
                    var queryParameters = CreateQueryParameters(checkout, member.Id);

                    var redirectUrl = UtilMethods.AddQueryString(Configurations.CoinPaymentUrl, queryParameters);

                  
                    //Update Balance in UserWallet table 
                    MemberWallets_DataAcsess.UpdateMemberWallet(member.Id, Convert.ToDecimal(checkout.TotalAmount), 0);

                    //Add Transaction and Coin PaymentTransaction
                    Transactions_DataAcsess.AddTransactions(member.Id, checkout.OrderId, "Topup", member.MemberCurrency, Configurations.ToCurrency,
                                                            member.MemberAddress, Configurations.CompanyCryptoWallet, CoinPaymentStatus.Pending.ToString(),
                                                            Convert.ToDecimal(checkout.TotalAmount));

                    Response.Redirect(redirectUrl, false);
                }
            }
            catch (Exception ex)
            {
                WriteLog.LogError(ex);
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