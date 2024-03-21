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
            if (ccLink != null)
            {
                ccLink.ValidateCaptcha(txtCaptcha.Text.Trim());
            }
            // ccLink.ValidateCaptcha(txtCaptcha.Text.Trim());
            try
            {
                bool isMembershipExpired = false;
                if (ccLink.UserValidated)
                {
                    bool loginSuccess = Login_DataAccess.CheckLogin(username, password);
                    if (loginSuccess)
                    {
                        var memberInfo = Members_DataAccess.GetMemberInfo(username);
                        var isMembershipValid = Members_DataAccess.IsMembershipExpired(memberInfo.Id);
                        if (!isMembershipValid)
                        {
                            isMembershipExpired = true;
                        }

                        this.successMessage.Value = "true";
                        Session["LoggedIn"] = true;
                        Session["Username"] = username;
                        Session["MembershipExpired"] = isMembershipExpired;
                        Login_DataAccess.AddLogin(username, password);
                        Response.Redirect("~/Dashboard.aspx");
                    }
                    else
                    {
                        this.successMessage.Value = "false";
                        Response.AddHeader("REFRESH", "5;URL=Login.aspx");
                        ResponseMessage.InnerText = "Login Failed: Invalid Credentials";
                        ResponseMessage.Style.Add("display", "block");
                        ResponseMessage.Style.Add("color", "#ff2600");
                    }
                }
                else
                {
                    this.successMessage.Value = "false";
                    Response.AddHeader("REFRESH", "5;URL=Login.aspx");
                    ResponseMessage.InnerText = "Login Failed: Wrong Captcha";
                    ResponseMessage.Style.Add("display", "block");
                    ResponseMessage.Style.Add("color", "#ff2600");

                }
            }
            catch (Exception ex)
            {
                this.successMessage.Value = "false";
                ResponseMessage.InnerText = "Error Occurred:" + Convert.ToString(ex.Message);
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#ff2600");
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