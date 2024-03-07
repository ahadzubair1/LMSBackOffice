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


namespace LMSBackOfficeWebApplication
{
    public partial class Register : Page
    {



         protected void Page_Load(object sender, EventArgs e)
         {

            /*if (!IsPostBack)
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
            }*/

            if (!IsPostBack)
            {
                List<Countries_DataAccess.Country> allCountries = Countries_DataAccess.GetAllCountries();

                // Populate select element with countries
                foreach (Countries_DataAccess.Country country in allCountries)
                {
                    ListItem item = new ListItem(country.CountryName, country.CountryID);
                    countries.Items.Add(item);
                }
            }



        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = this.fullname.Value; 
            string email = this.email.Value;
            string password = this.password.Value;
            string confirmpassword = this.confirmpassword.Value;
            string refcode = this.refcode.Value;
            string phone = this.phone.Value;
            string countries = this.countries.SelectedValue;
            string username = this.username.Value;
            
            // Process the form data (e.g., save to database, send email, etc.)
            // You can write your logic here
            DataTable resultTable = ReferralCodes_DataAccess.CheckParentReferral(refcode);
            if (resultTable != null && resultTable.Rows.Count > 0)
            {
                DataRow row = resultTable.Rows[0];
                string referredByParentId = row["Member_ID"].ToString();
                int Position = (int)row["NetworkPosition"];
                string registrationSuccess = Members_DataAccess.AddMember(name, username, email, password, referredByParentId, phone, countries);
                if (registrationSuccess == "Success")
                {
                    // Display success message
                    this.fullname.Value = "";
                    this.email.Value = "";
                    this.password.Value = "";
                    this.confirmpassword.Value = "";
                    this.refcode.Value = "";
                    this.phone.Value = "";
                    this.username.Value = "";// Assuming you have a server-side control for the success message
                    ResponseMessage.InnerText = "Registration Successfull";
                    ResponseMessage.Style.Add("display", "block");
                    ResponseMessage.Style.Add("color", "#e012ee");
                    Response.AddHeader("REFRESH", "5;URL=Login.aspx");
                }
                else
                {
                    ResponseMessage.InnerText = "Registration Failed";
                    ResponseMessage.Style.Add("display", "block");
                    ResponseMessage.Style.Add("color", "#ff2600");
                }


            }
            else
            {
                ResponseMessage.InnerText = "Invalid Referral Code";
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#ff2600");
            }

        }

        protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string password = txtPassword.Text;

            // Check for length
            if (password.Length < 8)
            {
                args.IsValid = false;
                return;
            }

            // Check for at least 1 uppercase letter
            if (!password.Any(char.IsUpper))
            {
                args.IsValid = false;
                return;
            }

            // Check for at least 1 lowercase letter
            if (!password.Any(char.IsLower))
            {
                args.IsValid = false;
                return;
            }

            // Check for at least 1 digit
            if (!password.Any(char.IsDigit))
            {
                args.IsValid = false;
                return;
            }

            // Check for at least 1 special character
            if (!password.Any(c => !char.IsLetterOrDigit(c)))
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }





    }
}