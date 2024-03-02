using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LMSBackOfficeDAL;
using System.Xml.Linq;


namespace LMSBackOfficeWebApplication
{
    public partial class Register : Page
    {



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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = this.fullname.Value; 
            string email = this.email.Value;
            string password = this.password.Value;
            string confirmpassword = this.confirmpassword.Value;
            string refcode = this.refcode.Value;
            string phone = this.phone.Value;
            string countries = this.countries.Value;
            string username = this.username.Value;

            // Process the form data (e.g., save to database, send email, etc.)
            // You can write your logic here
            bool registrationSuccess = Members_DataAccess.AddMember(name, username,email, password, refcode, phone, countries);
            if (registrationSuccess)
            {
                // Display success message
                this.successMessage1.Visible = true;
                this.successMessage.Value = "true"; 
                this.fullname.Value = "";
                this.email.Value = "";
                this.password.Value = "";
                this.confirmpassword.Value = "";
                this.refcode.Value = "";
                this.phone.Value = "";
                this.username.Value = "";
                this.countries.Value = "";// Assuming you have a server-side control for the success message
            }
        }
    }
}