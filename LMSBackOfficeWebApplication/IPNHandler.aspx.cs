using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMSBackOfficeWebApplication
{
    public partial class IPNHandler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            byte[] parameters;
            using (var stream = new MemoryStream())
            {
                Request.InputStream.CopyTo(stream);
                parameters = stream.ToArray();
            }
            var strRequest = Encoding.ASCII.GetString(parameters);
            var ipnSecret = Configurations.IpnSecret;

           

            if (CoinPaymentHelper.VerifyIpnResponse(strRequest, Request.Headers["hmac"], ipnSecret,
                out Dictionary<string, string> values))
            {
                values.TryGetValue("first_name", out string firstName);
                values.TryGetValue("last_name", out string lastName);
                values.TryGetValue("email", out string email);
                values.TryGetValue("amount1", out string amount1);
                values.TryGetValue("subtotal", out string subtotal);
                values.TryGetValue("status", out string status);
                values.TryGetValue("status_text", out string statusText);
                values.TryGetValue("txn_id", out string transactionid);
                values.TryGetValue("address", out string address);
                values.TryGetValue("currency1", out string currency1);
                values.TryGetValue("fee", out string fee);
                values.TryGetValue("custom", out string orderId);
                
                                var newPaymentStatus = CoinPaymentHelper.GetPaymentStatus(status, statusText);

                switch (newPaymentStatus)
                {
                    case PaymentStatus.Pending:
                        {
                            //TODO: update order status and use logging mechanism instead

                            //order is pending                            
                            Debug.WriteLine($"Order Status {newPaymentStatus}");
                        }
                        break;
                    case PaymentStatus.Authorized:
                        {
                            //order is authorized                            
                            Debug.WriteLine("Order is Authorized");
                        }
                        break;
                    case PaymentStatus.Paid:
                        {
                            //order is paid             
                            UpdateMemberWallets(amount1, orderId,transactionid, status, statusText, fee, currency1);
                            Debug.WriteLine("Order is Paid");
                        }
                        break;
                    default:
                        break;
                }
            }
            else
            {
                Debug.WriteLine("Issue Occurred with CoinPayments IPN");
            }
        }

        public void UpdateMemberWallets(string amount, string orderId, string transactionId, string status, string statusText, string fee, string currency)
        {
            string username = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(username);
            MemberWallets_DataAcsess.UpdateMemberWallet(member.Id, Convert.ToDecimal(amount));

            Transactions_DataAcsess.AddTransactions(member.Id, orderId, transactionId, "Topup", currency, member.MemberAddress, fee, statusText, Convert.ToDecimal(amount), string.Empty, string.Empty, true);
        }
    }
}