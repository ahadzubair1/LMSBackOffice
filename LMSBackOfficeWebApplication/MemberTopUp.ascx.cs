using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using LMSBackOfficeDAL.Model;
using LMSBackOfficeWebApplication.Utitlity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace LMSBackOfficeWebApplication
{
    public partial class MemberTopUp : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string strResponse = Login_DataAccess.GetVisitorInfo();
        }

        protected void TotpUp_Click(object sender, EventArgs e)
        {
            decimal amount = 0;
            if (txtAmount.Text != "")
            {
                amount = Convert.ToDecimal(txtAmount.Text);
            }
            try
            {
                string username = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(username);

                var api = new CoinPayment.CoinPaymentService();
                var orderId = Guid.NewGuid().ToString();
                string storeLocation = HttpContext.Current.Request.Url.AbsolutePath;
                string ipn_url = $"{storeLocation}/CoinPayments/IPNHandler";
                var response = api.CreateTransaction(amount, "USD", Configurations.ToCurrency, Configurations.CompanyCryptoWallet, member.MemberFullName,
                                                    member.Email, ipn_url, null, orderId).GetAwaiter().GetResult();
                if (response.IsSuccess)
                {
                    var responseBody = CryptoUtil.ConvertQueryStringToObject(response.HttpResponse.RequestBody);
                    var StatusCode = (int)response.HttpResponse.StatusCode;

                    //Update Balance in UserWallet table 
                    MemberWallets_DataAcsess.UpdateMemberWallet(member.Id, Convert.ToDecimal(amount), 0);

                    //Add Transaction and Coin PaymentTransaction
                    Transactions_DataAcsess.AddTransactions(member.Id, orderId, response.Result.TxnId, "Topup", member.MemberCurrency, Configurations.ToCurrency,
                                                            member.MemberAddress, Configurations.CompanyCryptoWallet, null, CoinPaymentStatus.Pending.ToString(),
                                                            Convert.ToDecimal(amount), string.Empty, string.Empty, false);

                    lblMessage.Text = $"Your topup request sent successfully ";
                    lblMessage.ForeColor = Color.Green;
                }
                else
                {
                    lblMessage.Text = response.Error.ToString();
                    lblMessage.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message.ToString();
                lblMessage.ForeColor = Color.Red;
            }
        }

        private IDictionary<string, string> CreateQueryParameters(MemberInfo member, decimal amount)
        {
            //get store location
            //var storeLocation = $"{HttpContext.Current.U}://{Request.Host}{Request.PathBase}";
            string storeLocation = HttpContext.Current.Request.Url.AbsolutePath;
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
                ["amountf"] = amount.ToString("N2"),
                ["item_name"] = "totup",

                //IPN, success and cancel URL
                ["success_url"] = $"{storeLocation}/CoinPayments/SuccessHandler?orderNumber={Guid.NewGuid().ToString()}", // order summery page
                ["ipn_url"] = $"{storeLocation}/CoinPayments/IPNHandler",
                ["cancel_url"] = $"{storeLocation}/CoinPayments/CancelOrder",

                //order identifier                
                ["custom"] = Guid.NewGuid().ToString(),

                //billing info
                ["first_name"] = member.MemberFullName,
                ["email"] = member.Email,

            };
            return queryParameters;
        }
    }
}