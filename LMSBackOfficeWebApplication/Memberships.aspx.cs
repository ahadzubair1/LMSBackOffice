using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Data;
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
                // Process the form submission
                // For example, you can access form fields using Request.Form collection
                string amount = Request.Form["amount"];
                string membershipCode = Request.Form["membershipCode"];

                DataTable membershipResult = Memberships_DataAccess.GetMembershipDetails(membershipCode);
                if (membershipResult != null && membershipResult.Rows.Count > 0)
                {
                    DataRow row = membershipResult.Rows[0];
                    string MembershipId = row["Membership_ID"].ToString();
                    double MembershipAmount = Convert.ToDouble(row["Membership_Amount"]);
                    double ActivationFees = Convert.ToDouble(row["Membership_ActivationFees"]);
                }

                 // Assuming the form submission is successful
                 // You can perform further processing here, such as saving data to a database

                 // After processing, determine whether the submission was successful
                 bool success = true; // Example: Assuming success

                // Redirect to the appropriate page based on success or failure
                if (success)
                {
                    Response.Redirect("PurchaseResponse.aspx?success=1");
                }
                else
                {
                    Response.Redirect("PurchaseResponse.aspx?success=0");
                }
            }
        }
    }
}