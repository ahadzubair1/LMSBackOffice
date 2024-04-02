﻿using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LMSBackOfficeWebApplication
{
    public partial class RanksRewards : System.Web.UI.Page
    {
        protected DataTable dtRanksTable { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BinGridView();

            }

        }

        private void BinGridView()
        {
            string userName = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(userName);


            dtRanksTable = Ranks_DataAccess.GetAllRanks(member.Id);
            gvRanks.DataSource = dtRanksTable;
            gvRanks.DataBind();
        }
     

        protected void gvRanks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvRanks_SelectedIndexChanging(object sender, GridViewPageEventArgs e)
        {
           
        }

        protected void gvRanks_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvRanks.PageIndex = e.NewPageIndex;
            // Call the method to rebind the GridView data here
            BinGridView(); // You need to implement this method to bind data to the GridView
        }
    }
}