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

namespace LMSBackOfficeWebApplication
{
    public partial class _Dashboard : Page
    {
        DataTable dtBonusTypes = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                /*gvwBonusType.DataSource = null;*/
                ShowBonusTypes();
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
