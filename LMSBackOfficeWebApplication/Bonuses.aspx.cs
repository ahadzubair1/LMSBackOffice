using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using LMSBackOfficeWebApplication.Models;
using System.Net.PeerToPeer;
using DocumentFormat.OpenXml.Wordprocessing;



namespace LMSBackOfficeWebApplication
{
    public partial class Bonuses : System.Web.UI.Page
    {
        protected int MaxWithdrawalLimit;
        protected int minWithdrawlLimit;
        protected decimal directWalletBalance;
        protected int networkBonus;
        protected DataTable dtNetworkBonusTable { get; set; }
        protected DataTable dtDirectBonusTable { get; set; }
        public string memberId; // Member ID field to store the current member ID

        protected string headerTitleDirectBonusAmount { get; set; }
        protected string headerTitleNetworkBonusAmount { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    // Initialize variables
                MaxWithdrawalLimit = 5000; // Example value, you can set it as per your requirement
                minWithdrawlLimit = 50; // Example value, you can set it as per your requirement
                directWalletBalance = 0; // Example value, you can set it as per your requirement

                networkBonus = 410;
                string userName = Session["Username"].ToString();
                var member = LMSBackOfficeDAL.Members_DataAccess.GetMemberInfo(userName);
                memberId = member.Id; // Store the member ID
                BindGridView(memberId);

               if( member.KYCRequired)
                {
                    kycmessage.Visible = true;
                }
               else if(member.KYCRequired==false)
                {
                    kycmessage.Visible = false;
                }

            }


        }
        protected void btnWithDraw_Click(object sender, EventArgs e)
        {
            try
            {
                string userkaName = Session["Username"].ToString();
                var memberka = LMSBackOfficeDAL.Members_DataAccess.GetMemberInfo(userkaName);
                int transactionId = 12345;
               
                string walletNumber = Convert.ToString("wwwwwwww");
                decimal withdrawalAmount = Convert.ToDecimal(txtAmount_direct.Text);
                decimal withdrawalBalance = Convert.ToDecimal(txtFees_direct.Text);
                string withdrawalStatus = "Pending";
                string tradingPlatform = "PlatformX";
                string withdrawalDescription = "Bonus withdrawal";
                bool isActive = true;

                // Call WithdrawRequest function
                string result = Bonus_DataAccess.WithdrawRequest(transactionId, memberka.Id, walletNumber, withdrawalAmount,
                                                withdrawalBalance, withdrawalStatus, tradingPlatform,
                                                withdrawalDescription, isActive);

                // Handle the result, for example:
                if (result == "Success")
                {
                    // MessageBox.Show("Withdrawal request initiated successfully.");
                }
                else
                {
                    //MessageBox.Show("Error: " + result);
                }
            }
            catch(Exception ex)
            {

            }
        }
        protected void btnWithDraw_network_Click(object sender, EventArgs e)
        {
            // Server-side logic for withdrawal
            // This method will be called only if client-side validation succeeds
        }
        private void BindGridView(string memberId)
        {
            dtNetworkBonusTable = Bonus_DataAccess.GetNetworkBonusByMemberId(memberId);
            dtDirectBonusTable = Bonus_DataAccess.GetDirectBonusByMemberId(memberId);  
            

            gvNetworkBonus.DataSource = dtNetworkBonusTable;
            gvNetworkBonus.DataBind();

            if (dtNetworkBonusTable.Rows.Count > 0)
                headerTitleNetworkBonusAmount += dtNetworkBonusTable.Rows[0]["BonusAmount"].ToString();


            gvDirectBonus.DataSource = dtDirectBonusTable;
            gvDirectBonus.DataBind();

            if (dtDirectBonusTable.Rows.Count > 0)
            {
                headerTitleDirectBonusAmount += dtDirectBonusTable.Rows[0]["Bonus_Amount"].ToString();
                directWalletBalance = Convert.ToDecimal(dtDirectBonusTable.Rows[0]["Bonus_Amount"].ToString());


            }   

        }
        protected void gvNetworkBonus_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvNetworkBonus.PageIndex = e.NewPageIndex;
            BindGridView(memberId);
        }

        protected void gvDirectBonus_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDirectBonus.PageIndex = e.NewPageIndex;
            BindGridView(memberId);
        }
        protected string GetDefaultDirectBonusAmountFromServer()
        {
            // Your logic to fetch the default direct bonus amount from the server
            return "1002"; // Example value
        }

        protected string GetDefaultNetworkBonusAmountFromServer()
        {
            // Your logic to fetch the default network bonus amount from the server
            return "200"; // Example value
        }

        protected void btnwithdraw_Direct_Click(object sender, EventArgs e)
        {
            InitiateWithdrawl();

        }

        private void InitiateWithdrawl()
        {
            try
            {
                // Provide values to initialize the function
                string user2 = Session["Username"].ToString();

                //string abc = "ajshdjhdil";
                var member2 = LMSBackOfficeDAL.Members_DataAccess.GetMemberInfo(user2);


                decimal withdrawalAmount = Convert.ToDecimal(txtAmount_direct.Text);
                decimal withdrawalAmount_afterFees = (withdrawalAmount * 1.03m);
                decimal withdrawlBalnce = directWalletBalance - withdrawalAmount_afterFees;

                dtDirectBonusTable = Bonus_DataAccess.GetDirectBonusByMemberId(member2.Id);

                if(dtDirectBonusTable.Rows.Count > 0)
                {
                    directWalletBalance = Convert.ToDecimal(dtDirectBonusTable.Rows[0]["Bonus_Amount"].ToString());
                }


                if (withdrawalAmount < 5000 && withdrawalAmount > 50 && withdrawalAmount_afterFees < directWalletBalance)
                {




                    // Call WithdrawRequest function
                    string result = Bonus_DataAccess.WithdrawRequest(Convert.ToInt32("12345"), member2.Id, txtCryptoAddress_direct.Text, withdrawalAmount,
                                                    withdrawlBalnce, "Pending", "Tradiix",
                                                    "Bonus Amount withdraw request", true);


                    if (result == "Success")
                    {
                        statusLabel.Text = "Bonus Withdrwl Request has been initiated";
                        BindGridView(member2.Id);
                    }
                    else
                    {

                        statusLabel.Text = "Please try again";
                    }
                }
                else
                {


                    statusLabel.Text = "Withdrawl amount should be greater than 5000 less 50";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}