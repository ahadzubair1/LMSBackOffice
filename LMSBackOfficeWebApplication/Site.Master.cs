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
using System.Web.Services;
using Irony.Parsing;
using System.Data;
using DocumentFormat.OpenXml.Bibliography;
using DocumentFormat.OpenXml.Wordprocessing;
using LMSBackofficeDAL;

namespace LMSBackOfficeWebApplication
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if it's a postback caused by the anchor click
            if (Request.Form["__EVENTTARGET"] == AIcopyTradingLi.UniqueID)
            {
                // Execute server-side code
                AIcopyTradingLink_Click(sender, e);
            }
            if (Session["Username"] == null)
            {
                // Session has expired, redirect to login page
                Response.Redirect("~/Login.aspx");
            }
            decimal balanceAmount = Wallets_DataAccess.FetchCdtWalletBalanceForUsername(Session["username"].ToString());
            creditbalance.InnerText = balanceAmount.ToString();
            decimal balanceBonusAmount = Wallets_DataAccess.FetchBonusWalletBalanceForUsername(Session["username"].ToString());
           bonusbalance.InnerText = balanceBonusAmount.ToString();
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
            bool membershipExist = Memberships_DataAccess.CheckMembershipExist(Session["Username"].ToString());

            ShowHideAICopyTrading(membershipExist);
           


            // Check if it's a postback and the action parameter is 'changePassword'
            //if (Request.HttpMethod == "POST" && Request.Form["action"] == "ChangePassword" && !Request.Url.AbsolutePath.ToLower().Contains("/login.aspx"))
            //{
            //    // Call your change password function here
            //    ChangePassword();
            //}
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear all session variables
            Session.Clear();

            // Redirect the user to the login page
            Response.Redirect("Login.aspx");
        }

        private void ShowHideAICopyTrading(bool enableAICopyTrading )
        {
            if (!enableAICopyTrading)
            {
                
                AIcopyTradingLink.Attributes["onclick"] = "return false;";
                AIcopyTradingLink.Style.Add("pointer-events", "none"); // Disable pointer events to prevent click
                AIcopyTradingLink.Style.Add("color", "gray"); // Optionally change the color to indicate disabled state
                comingsoonspan.Visible = true;
            }
            else
            {
       
                comingsoonspan.Visible = false;
            }


        }

        protected void AIcopyTradingLink_Click(object sender, EventArgs e)
        {
            // Server-side code to execute when the anchor is clicked
            // For example, you can perform any server-side logic here

            UtilMethods.SendEmail("signup@tradiix.com", "User: " + Session["Username"] + " has clicked AI Copy Trading Page", "");
            Response.Redirect("AICopyTrading.aspx");
        }

        public void ChangePassword()
        {
            // Clear all session variables
            Session.Clear();
            Response.Redirect("http://yahoo.com",true);
            string username = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(username);
            
            string MemberCode = member.MemberCode;

            Response.Redirect("ResetPassword.aspx?token=" + MemberCode);
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