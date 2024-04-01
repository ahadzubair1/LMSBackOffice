using DocumentFormat.OpenXml.Wordprocessing;
using LMSBackofficeDAL;
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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Reset(object sender, EventArgs e)
        {
            string email = this.reg_email.Value;
                // Process the form data (e.g., save to database, send email, etc.)
                // You can write your logic here
                bool CheckEmailExists = Members_DataAccess.CheckEmailExists(email);
                if (!CheckEmailExists)
                {
                    ResponseMessage.InnerText = "Email does not Exists";
                    ResponseMessage.Style.Add("display", "block");
                    ResponseMessage.Style.Add("color", "#ff2600");
                }
                else
                {
                // UtilMethods.SendEmailForgotPassword(email, name, memberCode, currentDomainUrl);
                }

            
        }
    }
}