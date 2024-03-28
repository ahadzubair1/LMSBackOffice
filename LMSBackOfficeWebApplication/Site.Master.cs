using LMSBackOfficeDAL.Model;
using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using System.Net.PeerToPeer;
using static ServiceStack.Diagnostics.Events;

namespace LMSBackOfficeWebApplication
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                // Session has expired, redirect to login page
                Response.Redirect("~/Login.aspx");
            }
            decimal balanceAmount = Wallets_DataAccess.FetchCdtWalletBalanceForUsername(Session["username"].ToString());
            creditbalance.InnerText = balanceAmount.ToString();
            decimal balanceBonusAmount = Wallets_DataAccess.FetchBonusWalletBalanceForUsername(Session["username"].ToString());
           // bonusbalance.InnerText = balanceBonusAmount.ToString();
            if (!IsPostBack)
            {
                if (Session["MembershipExpired"] != null)
                {
                    var IsMembershipExpired = Convert.ToBoolean(Session["MembershipExpired"]);
                    if (IsMembershipExpired)
                    {
                        var currentPage = Request.Url.Segments[1];

                        if (currentPage.ToLower() != "checkout" && currentPage.ToLower() != "dashboard")
                        {
                            Response.Redirect("Checkout.aspx");
                        }
                    }
                }
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear all session variables
            Session.Clear();

            // Redirect the user to the login page
            Response.Redirect("Login.aspx");
        }



        protected void Renew_Click(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(username);

            var checkout = new CheckoutModel
            {
                MemberFullName = member.MemberFullName,
                MemberCode = member.MemberCode,
                Email = member.Email,
                TotalAmount = 50,
                Currency = Configurations.ToCurrency,
                ToWalletAddress = Configurations.CompanyCryptoWallet
            };

            Session["Checkout"] = checkout;

            Response.Redirect("Checkout.aspx");
        }

        protected void Close_Click(object sender, EventArgs e)
        {
            Session["LoggedIn"] = false;
            Session["Username"] = null;
            Session["MembershipExpired"] = false;
            Response.Redirect("~/Login.aspx");
        }
    }
}