using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LMSBackOfficeDAL;
using System.Xml.Linq;
using static LMSBackOfficeDAL.Countries_DataAccess;
using System.Web.Security;
using System.Web.Services.Description;


namespace LMSBackOfficeWebApplication
{
    public partial class PurchaseResponse : Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            string success = Request.QueryString["success"];
            if (Convert.ToInt32(success)==1)
            {
                // Display message dynamically
                messageLabel.Text = HttpUtility.UrlDecode("Membership Purchase Successfull");
            }
            else
            {
                messageLabel.Text = HttpUtility.UrlDecode("Membership Purchase Failed");
            }

            // Redirect back to memberships page after 5 seconds
            Response.AppendHeader("Refresh", "5;url=memberships.aspx");


        }

       


    }
}