
using LMSBackOfficeDAL;
using ServiceStack;
using System;
using System.Collections.Generic;
using System.Globalization;
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
        protected void rbGender_CheckedChanged(object sender, EventArgs e)
        {
            if (rbMale.Checked)
            {
                // Male option is selected
                // Perform actions specific to male selection
            }
            else if (rbFemale.Checked)
            {
                // Female option is selected
                // Perform actions specific to female selection
            }
        }
        private void PopulateMember()
        {
              List<Countries_DataAccess.Country> allCountries = Countries_DataAccess.GetAllCountries();

                    // Populate select element with countries
                    foreach (Countries_DataAccess.Country country in allCountries)
                    {
                        System.Web.UI.WebControls.ListItem item = new ListItem(country.CountryName, country.CountryID);
                        countries.Items.Add(item);

                System.Web.UI.WebControls.ListItem item2 = new ListItem(country.CountryName, country.CountryID);
                nationalities.Items.Add(item2);
            }



            if (Session["Username"] != null)
            {
                string userName = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(userName);


                if (member != null)
                {
                    
                    MemberId = member.Id;
                    txtUserName.Text = member.UserName;
                    //txtAddressLine1.Text = member.MemberAddress;
                    countries.SelectedValue = member.Country;
                    countries.Enabled = false;

                    if(member.Nationality!=null)
                    {
                        nationalities.SelectedValue = member.Nationality;
                    }
                    txtDate.Text = Convert.ToString(member.DOB);
                    txtDate.Enabled = false;

                    txtEmail.Text = member.Email;
                    txtfirstName.Text = member.MemberFullName;
                    txtMobileNumber.Text = member.Mobile;
                    lblEmail.Text = member.Email;
                    lblMembership.Text = member.MembershipName;
                    lblRank.Text = member.MemberRank;
                    lblUserName.Text = Session["Username"].ToString();
                    if (Convert.ToString(member.Gender) == "male")
                    {
                        rbMale.Checked = true;
                    }
                    else if (Convert.ToString(member.Gender) == "female")
                    {
                        rbFemale.Checked = true;
                    }

                    string imagePath = GetMembershipImagePath(member.MembershipName);

                    // Set the ImageUrl property
                    imgMembership.ImageUrl = imagePath;

                    txtUserName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtfirstName.Enabled = false;
                    txtMobileNumber.Enabled = false;
                    countries.Enabled = false;
                    rbFemale.Enabled = false;
                    rbMale.Enabled = false;
                    btnCancel.Enabled = false;
                    btnUpdate.Enabled = false;

                    



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
            DateTime dob = !string.IsNullOrEmpty(txtDate.Text) ? DateTime.ParseExact(txtDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture) : new DateTime(1900, 1, 1);

            string countryOfOrigin = countries.SelectedValue;
            string nationality=nationalities.SelectedValue;
            string gender = "";
            if (rbMale.Checked)
                gender = "male";
            if (rbFemale.Checked)
                gender = "female";

            string walletType=ddlWalletType.SelectedValue;
            string walletAddress=txtWalletAddress.Text;


            bool CheckEmailExists = Members_DataAccess.CheckEmailExists(email);
            if (CheckEmailExists && memberToUpdate.Email.ToLower().ToString()!=email.ToLower().ToString())
            {
                ResponseMessage.InnerText = "Email already Exists";
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#ff2600");

                return;
            }

            // Call the data access method to update the member
            bool updateSuccess = Members_DataAccess.UpdateMember(memberToUpdate.Id.ToString(), fullName, mobile, email, countryOfOrigin,gender,dob,nationality,walletType, walletAddress);

                if (updateSuccess)
                {
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#e012ee");
                // Display success message
                ResponseMessage.InnerText="Member details updated successfully.";
                PopulateMember();
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

        // Example method to retrieve the image path from server-side logic
        private string GetMembershipImagePath(string membership)
        {


            switch (membership)
            {
                case "Pioneer":
                    // Code for handling the "Pioneer" membership
                    return "Content/images/Memberships/4.png";
                case "Infinite":
                    // Code for handling the "Infinite" membership
                    return "Content/images/Memberships/5.png";
                case "Connector-X":
                     return "Content/images/Memberships/6.png";
                case "Partner":
                    return "Content/images/Memberships/2.png";
                case "Elite":

                    return "Content/images/Memberships/1.png";
                case "Explorer":
                    return "Content/images/Memberships/1.png";
                default:
                    return "Content/images/Memberships/6.png";
                   
            }



            // Your server-side logic to determine the image path goes here
            // For example, you can fetch it from a database or calculate it based on some condition

            // Return the image path

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //txtEmail.Enabled = true;
             txtfirstName.Enabled = true;
            txtMobileNumber.Enabled = true;
            txtDate.Enabled = true;
            nationalities.Enabled = true;   
            countries.Enabled = true;

            rbFemale.Enabled = true;
            rbMale.Enabled = true;
            btnCancel.Enabled = true;
            btnUpdate.Enabled = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            PopulateMember();
        }
    }
}