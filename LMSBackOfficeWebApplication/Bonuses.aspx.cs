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
        protected decimal networkWalletBalance;
        protected int networkBonus;
        protected DataTable dtNetworkBonusTable { get; set; }

        protected DataTable dtMemberWalletBalances { get; set; }
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

                //directWalletBalance = 0; // Example value, you can set it as per your requirement
                //networkWalletBalance = 0;

                string userName = Session["Username"].ToString();
                var member = LMSBackOfficeDAL.Members_DataAccess.GetMemberInfo(userName);
                memberId = member.Id; // Store the member ID
                BindGridView(memberId);

                txtCryptoAddress_direct.Text = member.MemberAddress;
                txtCryptoAddress_network.Text = member.MemberAddress;

                if (member.KYCRequired)
                {
                    kycmessage.Visible = true;
                    btnwithdraw_Direct.Visible = false;
                    btnwithdraw_network.Visible = false;
                }
                else if (member.KYCRequired == false)
                {
                    kycmessage.Visible = false;
                    btnwithdraw_Direct.Visible = true;
                    btnwithdraw_network.Visible = true;
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
                                                withdrawalDescription, isActive, "direct");

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
            catch (Exception ex)
            {

            }
        }
        protected void btnWithDraw_network_Click(object sender, EventArgs e)
        {
            // Server-side logic for withdrawal
            // This method will be called only if client-side validation succeeds

            InitiateNetworkWithdrawl();

            txtAmount_network.Text = "";
            txtFees_network.Text = "";
        }
        private void BindGridView(string memberId)
        {
            dtMemberWalletBalances = Bonus_DataAccess.GetMemberWalletsByMemberId(memberId);
            dtNetworkBonusTable = Bonus_DataAccess.GetNetworkBonusByMemberId(memberId);
            dtDirectBonusTable = Bonus_DataAccess.GetDirectBonusByMemberId(memberId);


            gvNetworkBonus.DataSource = dtNetworkBonusTable;
            gvNetworkBonus.DataBind();

            if (dtNetworkBonusTable.Rows.Count > 0)
                headerTitleNetworkBonusAmount += dtMemberWalletBalances.Rows[0]["network_wallet_balance"].ToString();


            gvDirectBonus.DataSource = dtDirectBonusTable;
            gvDirectBonus.DataBind();

            if (dtMemberWalletBalances.Rows.Count > 0)
            {
                headerTitleDirectBonusAmount += dtMemberWalletBalances.Rows[0]["direct_wallet_balance"].ToString();
                directWalletBalance = Convert.ToDecimal(dtMemberWalletBalances.Rows[0]["direct_wallet_balance"].ToString());
                networkWalletBalance = Convert.ToDecimal(dtMemberWalletBalances.Rows[0]["network_wallet_balance"].ToString());




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
            txtAmount_direct.Text = "";
            txtFees_direct.Text = "";

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
                decimal amounttosend = (withdrawalAmount * 0.97m);

                dtDirectBonusTable = Bonus_DataAccess.GetMemberWalletsByMemberId(member2.Id);

                if (dtDirectBonusTable.Rows.Count > 0)
                {
                    directWalletBalance = Convert.ToDecimal(dtDirectBonusTable.Rows[0]["direct_wallet_balance"].ToString());
                    networkWalletBalance = Convert.ToDecimal(dtDirectBonusTable.Rows[0]["network_wallet_balance"].ToString());
                }
                decimal withdrawlBalnce = directWalletBalance - withdrawalAmount;


                if (withdrawalAmount <= 5000 && withdrawalAmount >= 50 && withdrawalAmount <= directWalletBalance)
                {




                    // Call WithdrawRequest function
                    string result = Bonus_DataAccess.WithdrawRequest(Convert.ToInt32("12345"), member2.Id, txtCryptoAddress_direct.Text, withdrawalAmount,
                                                    withdrawlBalnce, "Pending", "Tradiix",
                                                    "Direct Bonus Amount withdraw request", true, "direct");





                    string body = $@"<div>
            <div>
                <div>
                    <table border=0 cellpadding=0 cellspacing=0 width=100% align='center' style='max-width:800px;margin:0 auto;background:#121925'>
                        <tr>
                            <td style='border:4px solid #d014e4'>
                                <table border=0 cellpadding=25 cellspacing=0 width=100%>
                                    <tbody>
                                        <tr>
                                            <td colspan=2 align=left style=padding-top:5.25%;padding-right:5.25%;padding-bottom:5.25%;padding-left:5.25%>
                                                <p style=margin:0>
                                                    <img title='A Global Education & Research Ltd' border=0 src='https://tradiix.com/Content/images/logo-v-dark.png' style='width:150px'>
                                                <tr>
                                                    <td colspan=2 align='center' style='font-weight:700;font-size:25px;color:#d014e4;font-family:open sans,Calibri,Tahoma,sans-serif'>
                                                        Bonus Withdrawl Request
                                                <tr>
                                                    <td colspan=2>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            Dear Admin,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            

                                                           Member: {member2.UserName}, Email: {member2.Email}, Original Amount (as a Direct Bonus): {withdrawalAmount} at Date: {System.DateTime.Now.ToString()}. Member Crypto Address: {txtCryptoAddress_direct.Text} , Crypto-Wallet-Type: {ddlWalletTypeDB.SelectedItem.Value}. Amount after deducting the 3% fees: {amounttosend} .
                                                <tr>
                                                    <td>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            If you have any questions, please feel free to contact us.
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            Best regards,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;margin:30px 0 10px 0;font-weight:400'>
                                                            Team Tradiix.
                                                <hr style='border:0;border-top:1px solid #c7c7c7;line-height:1px;margin:25px 0 20px 0'>
                                                <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#6a7070;font-size:12px;line-height:1.33;margin:0'>
                                                    © Tradiix
                                </table>
                            <td>
                        </table>
                    </div>
                </div>
            </div>";
                    //signup @tradiix.com;

                    UtilMethods.SendEmail("signup@tradiix.com", "Direct Bonus Withdrawal Request by User: " + member2.UserName + " ", body);


                    if (result == "Success")
                    {
                        statusLabel.Visible = true;
                        statusLabel.Text = "Bonus Withdrawal has been initiated. You will receive the Amount within 48 Hours";
                        BindGridView(member2.Id);
                    }
                    else
                    {
                        statusLabel.Visible = true;
                        statusLabel.Text = "Please try again";
                        BindGridView(member2.Id);
                    }
                }
                else
                {
                    if (withdrawalAmount > directWalletBalance)
                        statusLabel.Text = "Total withdrawal amount should be less than the direct wallet balance.";

                    else if (withdrawalAmount > 5000)
                        statusLabel.Text = "Withdrawl amount should be less than equal to 5000";
                    else if (withdrawalAmount < 50)
                        statusLabel.Text = "Withdrawl amount should be greater than equal to 50";
                    else
                        statusLabel.Text = "Please retry";

                    statusLabel.Visible = true;
                    BindGridView(member2.Id);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }


        private void InitiateNetworkWithdrawl()
        {
            try
            {
                // Provide values to initialize the function
                string user2 = Session["Username"].ToString();

                //string abc = "ajshdjhdil";
                var member2 = LMSBackOfficeDAL.Members_DataAccess.GetMemberInfo(user2);


                decimal withdrawalAmount = Convert.ToDecimal(txtAmount_network.Text);
                decimal amountTosend = (withdrawalAmount * 0.97m);

                dtDirectBonusTable = Bonus_DataAccess.GetMemberWalletsByMemberId(member2.Id);

                if (dtDirectBonusTable.Rows.Count > 0)
                {
                    networkWalletBalance = Convert.ToDecimal(dtDirectBonusTable.Rows[0]["network_wallet_balance"].ToString());
                }
                decimal withdrawlBalnce = networkWalletBalance - withdrawalAmount;


                if (withdrawalAmount <= 5000 && withdrawalAmount >= 50 && withdrawalAmount <= networkWalletBalance)
                {




                    // Call WithdrawRequest function
                    string result = Bonus_DataAccess.WithdrawRequest(Convert.ToInt32("12345"), member2.Id, txtCryptoAddress_network.Text, withdrawalAmount,
                                                    withdrawlBalnce, "Pending", "Tradiix",
                                                    "Bonus Amount withdraw request", true, "network");





                    string body = $@"<div>
            <div>
                <div>
                    <table border=0 cellpadding=0 cellspacing=0 width=100% align='center' style='max-width:800px;margin:0 auto;background:#121925'>
                        <tr>
                            <td style='border:4px solid #d014e4'>
                                <table border=0 cellpadding=25 cellspacing=0 width=100%>
                                    <tbody>
                                        <tr>
                                            <td colspan=2 align=left style=padding-top:5.25%;padding-right:5.25%;padding-bottom:5.25%;padding-left:5.25%>
                                                <p style=margin:0>
                                                    <img title='A Global Education & Research Ltd' border=0 src='https://tradiix.com/Content/images/logo-v-dark.png' style='width:150px'>
                                                <tr>
                                                    <td colspan=2 align='center' style='font-weight:700;font-size:25px;color:#d014e4;font-family:open sans,Calibri,Tahoma,sans-serif'>
                                                        Bonus Withdrawl Request
                                                <tr>
                                                    <td colspan=2>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            Dear Admin,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                           Member: {member2.UserName}, Email: {member2.Email}, Original Amount (as a Network Bonus): {withdrawalAmount} at Date: {System.DateTime.Now.ToString()}. Member Crypto Address: {txtCryptoAddress_network.Text} , Crypto-Wallet-Type: {ddlWalletTypeNB.SelectedItem.Value}. Amount after deducting the 3% fees: {amountTosend} .
                                                <tr>
                                                    <td>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            If you have any questions, please feel free to contact us.
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            Best regards,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;margin:30px 0 10px 0;font-weight:400'>
                                                            Team Tradiix.
                                                <hr style='border:0;border-top:1px solid #c7c7c7;line-height:1px;margin:25px 0 20px 0'>
                                                <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#6a7070;font-size:12px;line-height:1.33;margin:0'>
                                                    © Tradiix
                                </table>
                            <td>
                        </table>
                    </div>
                </div>
            </div>";

                    UtilMethods.SendEmail("signup@tradiix.com", "Network Bonus Withdrawal Request by User: " + member2.UserName + " ", body);


                    if (result == "Success")
                    {
                        statusLabel.Visible = true;
                        statusLabel.Text = "Bonus Withdrawal has been initiated. You will receive the Amount within 48 Hours";
                        BindGridView(member2.Id);
                    }
                    else
                    {
                        statusLabel.Visible = true;
                        statusLabel.Text = "Please try again";
                    }
                }
                else
                {
                    if (withdrawalAmount > networkWalletBalance)
                        statusLabel.Text = "Total Withdrawl Amount should be less than network wallet balance";

                    else if (withdrawalAmount > 5000)
                        statusLabel.Text = "Withdrawl amount should be less than equal to 5000";
                    else if (withdrawalAmount < 50)
                        statusLabel.Text = "Withdrawl amount should be greater than equal to 50";
                    else
                        statusLabel.Text = "Please retry";




                    statusLabel.Visible = true;
                    BindGridView(member2.Id);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }




    }
}
