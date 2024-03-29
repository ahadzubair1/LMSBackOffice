using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace LMSBackOfficeWebApplication
{
    public partial class AIcopyTrading : System.Web.UI.Page
    {
        protected bool MembershipExist { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                // Session has expired, redirect to login page
                Response.Redirect("~/Login.aspx");
            }
            // Check if membership exists and store the result in the property
            MembershipExist = Memberships_DataAccess.CheckMembershipExist(Session["Username"].ToString());

            // Register a startup script to define the MembershipExist variable in JavaScript
            ClientScript.RegisterStartupScript(this.GetType(), "membershipExistScript", "var MembershipExist = " + MembershipExist.ToString().ToLower() + ";", true);
        }

    }
}