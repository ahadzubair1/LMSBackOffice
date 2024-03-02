using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LMSBackOfficeDAL;
using Microsoft.Ajax.Utilities;


namespace LMSBackOfficeWebApplication
{
    public partial class Login : Page
    {


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = this.username.Value;
            string password = this.password.Value;
            

            // Process the form data (e.g., save to database, send email, etc.)
            // You can write your logic here
            bool registrationSuccess = Login_DataAccess.AddLogin(username, password);
            if (registrationSuccess)
            {
                this.successMessage.Value = "true";
            }
            else
            {
                this.successMessage.Value = "false";
            }
        }
        /* protected void Page_Load(object sender, EventArgs e)
        {
                        
            if (!IsPostBack)
            {
                string strResponse = Login_DataAccess.GetVisitorInfo();
                lblVisitorResponse.Text = "";

                if (strResponse=="Success")
                {
                    lblVisitorResponse.Text = "Visitor Response has been Successfully Saved";
                }
                else
                {
                    lblVisitorResponse.Text = "Error Occurred while Saving the Visitor Response";

                }
            }

        }*/
    }
}