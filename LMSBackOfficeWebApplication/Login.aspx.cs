﻿using System;
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
            bool loginSuccess = Login_DataAccess.CheckLogin(username, password);
            if (loginSuccess)
            {
                this.successMessage.Value = "true";
                Session["Username"] = username;
                Login_DataAccess.AddLogin(username, password);
                Response.Redirect("~/Default.aspx");
                
            }
            else
            {
                this.successMessage.Value = "false";
                Response.AddHeader("REFRESH", "5;URL=Login.aspx");
                ResponseMessage.InnerText = "Login Failed";
                ResponseMessage.Style.Add("display", "block");
                ResponseMessage.Style.Add("color", "#e012ee");
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