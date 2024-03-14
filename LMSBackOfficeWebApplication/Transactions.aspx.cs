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
    public partial class Transactions : System.Web.UI.Page
    {
        protected DataTable dt { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userName = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(userName);    
                dt = Transactions_DataAcsess.GetAllTransaction(member.Id);
            }
            
        }
    }
}