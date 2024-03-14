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
    public partial class Networks : System.Web.UI.Page
    {
        protected DataTable referrelsTable { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }

                string userName = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(userName);
                referrelsTable = Members_DataAccess.GetReferrelsByMemberId(member.Id);

            }
        }
    }
}