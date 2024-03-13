using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using LMSBackOfficeDAL.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            string username = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(username);

            var queryParameters = CreateQueryParameters(member, amount);
            var redirectUrl = UtilMethods.AddQueryString(Configurations.CoinPaymentUrl, queryParameters);

            Response.Redirect(redirectUrl);
        }

        private IDictionary<string, string> CreateQueryParameters(Member member, decimal amount)
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