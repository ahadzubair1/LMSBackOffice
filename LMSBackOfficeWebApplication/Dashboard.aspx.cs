using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using LMSBackOfficeDAL;
using LMSBackofficeDAL;
using LMSBackOfficeDAL.Model;
using System.Net.PeerToPeer;

namespace LMSBackOfficeWebApplication
{
    public partial class Dashboard : Page
    {
        DataTable dtBonusTypes = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["MembershipExpired"] != null)
                {
                    var IsMembershipExpired = Convert.ToBoolean(Session["MembershipExpired"]);
                    if (IsMembershipExpired)
                    {                       
                        var message = "Your annual memships is expired, please renew your membership for continue";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "ShowMessage('" + message + "')", true);
                        // ClientScript.RegisterStartupScript(this.GetType(), "UpdateTime", "ShowMessage('" + message + "')", true);
                        // ScriptManager.RegisterStartupScript(this.Page, typeof(Page), "text", "ShowMessage('" + message + "')", true);
                        //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "MyFun1", "ShowMessage('" + message + "');", true);
                    }
                    else
                    {
                        /*gvwBonusType.DataSource = null;*/
                        ShowBonusTypes();
                    }
                }
                DataTable referralCodesTable = ReferralCodes_DataAccess.FetchReferralCodesForUsername(Session["Username"].ToString());
                if (referralCodesTable != null && referralCodesTable.Rows.Count >= 2)
                {
                    if (referralCodesTable != null && referralCodesTable.Rows.Count >= 2)
                    {
                        string leftReferralCode = null;
                        string rightReferralCode = null;

                        // Iterate through the rows of the DataTable
                        foreach (DataRow referralCodeRow in referralCodesTable.Rows)
                        {
                            // Assuming network position is in the first column (index 0) and code is in the second column (index 1)
                            int networkPosition = Convert.ToInt32(referralCodeRow[1]);
                            string code = referralCodeRow[0].ToString();

                            // Check network position and assign the code accordingly
                            if (networkPosition == 1)
                            {
                                leftReferralCode = "https://tradiix.com/Register?referralcode=" + code;
                            }
                            else if (networkPosition == 2)
                            {
                                rightReferralCode = "https://tradiix.com/Register?referralcode=" + code;
                            }

                            // Break the loop if both left and right referral codes are found
                            if (leftReferralCode != null && rightReferralCode != null)
                            {
                                break;
                            }
                        }

                        // Display the referral codes
                        if (leftReferralCode != null)
                        {
                            leftReferralCodeSpan.InnerText = leftReferralCode;
                            leftReferralCodeSpan.Attributes["title"] = leftReferralCode;
                        }
                        if (rightReferralCode != null)
                        {
                            rightReferralCodeSpan.InnerText = rightReferralCode;
                            rightReferralCodeSpan.Attributes["title"]= rightReferralCode;
                        }
                    }
                    else
                    {
                        // Handle case when there are not enough referral codes returned
                        // Or handle when the DataTable is null
                    }
                }

            }
            if (Session["LoggedIn"] == null || !(bool)Session["LoggedIn"])
            {
                // Redirect back to login page if not authenticated
                Response.Redirect("Login.aspx");
            }

        }


        public void ShowBonusTypes()
        {
            dtBonusTypes = LMSBackOfficeDAL.Setup_DataAccess.GetAllBonusTypes();

            
            if (dtBonusTypes.Rows.Count > 0)
            {
                gvwBonusType.DataSource = dtBonusTypes;
                gvwBonusType.DataBind();
            }

            string strResponse = Login_DataAccess.GetVisitorInfo();
            Label lblVisitorResponse = new Label();
            lblVisitorResponse.Text = "";

            if (strResponse == "Success")
            {
                lblVisitorResponse.Text = "Visitor Response has been Successfully Saved";
            }
            else
            {
                lblVisitorResponse.Text = "Error Occurred while Saving the Visitor Response";

            }

            //LMSBackofficeDAL.UtilMethods.SendEmail("Ahad Zubair", "ahadzubair@gmail.com", "0501271NNNN");

        }


    }
}
