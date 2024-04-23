
using LMSBackOfficeDAL;
using ServiceStack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer;
using System.Runtime.Remoting.Lifetime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using static LMSBackOfficeDAL.Countries_DataAccess;

namespace LMSBackOfficeWebApplication
{
    public partial class Profile : System.Web.UI.Page
    {
        private string _memberId;

        // Property to get and set MemberId
        public string MemberId
        {
            get { return _memberId; }
            set { _memberId = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                PopulateMember();
            }
        }

        [System.Web.Services.WebMethod]
        public static bool IsEmailUnique(string email)
        {
           
            return false;
        }
        private void PopulateMember()
        {
              List<Countries_DataAccess.Country> allCountries = Countries_DataAccess.GetAllCountries();

                    // Populate select element with countries
                    foreach (Countries_DataAccess.Country country in allCountries)
                    {
                        System.Web.UI.WebControls.ListItem item = new ListItem(country.CountryName, country.CountryID);
                        countries.Items.Add(item);
                    }

            if (Session["Username"] != null)
            {
                string userName = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(userName);


                if (member != null)
                {
                    
                    MemberId = member.Id;

                    //txtAddressLine1.Text = member.MemberAddress;
                    countries.SelectedValue = member.Country;
                    txtEmail.Text = member.Email;
                    txtfirstName.Text = member.MemberFullName;
                    txtMobileNumber.Text = member.Mobile;
                    lblEmail.Text = member.Email;
                    lblMembership.Text = member.MembershipName;
                    lblRank.Text = member.MemberRank;
                    lblUserName.Text = Session["Username"].ToString();


                    txtEmail.Enabled = false;
                    txtfirstName.Enabled = false;
                    txtMobileNumber.Enabled = false;
                    countries.Enabled = false;



                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string userName = Session["Username"].ToString();
            var memberToUpdate = Members_DataAccess.GetMemberInfo(userName);
            string memberId = memberToUpdate.Id.ToString();
                string fullName = txtfirstName.Text;
                string mobile = txtMobileNumber.Text;
            string email = txtEmail.Text;
                string countryOfOrigin = countries.SelectedValue;


            bool CheckEmailExists = Members_DataAccess.CheckEmailExists(email);
            if (CheckEmailExists && memberToUpdate.Email.ToLower().ToString()!=email.ToLower().ToString())
            {
                ResponseMessage.InnerText = "Email already Exists";
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#ff2600");

                return;
            }

            // Call the data access method to update the member
            bool updateSuccess = Members_DataAccess.UpdateMember(memberToUpdate.Id.ToString(), fullName, mobile, email, countryOfOrigin);

                if (updateSuccess)
                {
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#e012ee");
                // Display success message
                ResponseMessage.InnerText="Member details updated successfully.";
                }
                else
                {
                // Display error message
                ResponseMessage.InnerText = "Failed to update member details. Please try again.";
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#ff2600");
            }
            

        }

        protected void test_Click(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtEmail.Enabled = true;
            txtfirstName.Enabled = true;
            txtMobileNumber.Enabled = true;
            countries.Enabled = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            PopulateMember();
        }
    }
}