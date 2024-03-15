using LMSBackOfficeDAL;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Net.PeerToPeer;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMSBackOfficeWebApplication
{
    public partial class Memberships : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Request.HttpMethod == "POST" && String.IsNullOrEmpty(Request.Headers["X-Requested-With"]))
                {
                // Process the form submission
                // For example, you can access form fields using Request.Form collection
                string amount = Request.Form["amount"];
                string membershipCode = Request.Form["membershipCode"];
                bool success = false;

                DataTable membershipResult = Memberships_DataAccess.GetMembershipDetails(membershipCode);
                if (membershipResult != null && membershipResult.Rows.Count > 0)
                {
                    DataRow row = membershipResult.Rows[0];
                    string MembershipId = row["Membership_ID"].ToString();
                    string MembershipName = row["Membership_Name"].ToString();
                    double MembershipAmount = Convert.ToDouble(row["Membership_Amount"]);
                    double ActivationFees = Convert.ToDouble(row["Membership_ActivationFees"]);
                    double TotalAmount = MembershipAmount + ActivationFees;
                    DataTable resultTable = MemberWallets_DataAcsess.GetMemberWalletBalance(Session["Username"].ToString());
                    if (resultTable != null && resultTable.Rows.Count > 0)
                    {
                        DataRow memberrow = resultTable.Rows[0];
                        string MemberId = memberrow["Member_ID"].ToString();
                        string Member_Code = memberrow["Member_Code"].ToString();
                        string WalletID = memberrow["Member_WalletID"].ToString();
                        string WalletCode = memberrow["Member_WalletCode"].ToString();
                        object walletBalance = memberrow["Wallet_Balance"];
                        double Balance=0.0;
                        if (walletBalance != DBNull.Value)
                        {
                            Balance = Convert.ToDouble(walletBalance);
                        }
   
                        if (Balance >= TotalAmount)
                        {
                            double newBalance = Balance - TotalAmount;
                            var orderId = Guid.NewGuid().ToString();
                            MemberWallets_DataAcsess.UpdateMemberWallet(MemberId, Convert.ToDecimal(newBalance), 0);
                            Transactions_DataAcsess.AddTransactions(MemberId, orderId, string.Empty, "Membership Purchase","USD", Configurations.ToCurrency,
                                                            string.Empty, Configurations.CompanyCryptoWallet, null, "Complete",
                                                            Convert.ToDecimal(amount), string.Empty, string.Empty, false);
                            var SuccessPurchase = Members_DataAccess.AddMembershipPurchase(MemberId, MembershipId, MembershipName, Convert.ToDecimal(MembershipAmount), Convert.ToDecimal(ActivationFees));
                            Network_DataAccess.AssignNetworkParent(MemberId);
                            if (SuccessPurchase=="Success")
                            {
                                Response.Redirect("PurchaseResponse.aspx?success=1");
                            }
                        }
                        else
                        {
                            Response.Redirect("PurchaseResponse.aspx?success=0");
                        }
                    }
                    else
                    {
                        Response.Redirect("PurchaseResponse.aspx?success=0");
                    }
                }
                else
                {
                    Response.Redirect("PurchaseResponse.aspx?success=0");
                }

            }
        }
    }
}