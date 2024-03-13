using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMSBackOfficeWebApplication
{
    public partial class Memberships : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string amount = Request.Form["amount"];
                string membershipCode = Request.Form["membershipCode"];
                string membershipName = Request.Form["membershipName"];

                // Process the form data as needed
                // For example, you can store the data in a database, send emails, etc.

                // Respond with a JSON message indicating success or failure
                Response.ContentType = "application/json";
                if (!string.IsNullOrEmpty(amount) && !string.IsNullOrEmpty(membershipCode))
                {
                    // Form data is valid, perform necessary actions
                    Response.Write("{\"success\": true, \"message\": \"Membership form submitted successfully.\"}");
                }
                else
                {
                    // Form data is invalid
                    Response.Write("{\"success\": false, \"message\": \"Failed to submit membership form. Please try again.\"}");
                }
                Response.End();
            }
        }
    }
}