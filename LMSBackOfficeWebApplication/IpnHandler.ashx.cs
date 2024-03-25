using LMSBackOfficeDAL;
using LMSBackOfficeWebApplication;
using LMSBackOfficeWebApplication.Ipns;
using LMSBackOfficeWebApplication.Utitlity;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.PeerToPeer;
using System.Web;

namespace Coinpayments.Example
{
    /// <summary>
    /// IPN Handler for Coinpayments, see https://www.coinpayments.net/merchant-tools-ipn
    /// </summary>
    public class IpnHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {          
            try
            {
                var req = IpnBase.Parse<IpnApi>(context.Request.Form);

                var requestString = JsonConvert.SerializeObject(req);
                WriteLog.LogInfo(requestString);

                var hmac = context.Request.Headers["HMAC"];
                WriteLog.LogInfo($"Hmac is {hmac}");
                if (hmac == null || !req.SigIsValid(hmac))
                {                   
                    response(context, HttpStatusCode.BadRequest, "Invalid HMAC / MerchantId");
                    return;
                }

                WriteLog.LogInfo($"Status is {req.SuccessStatusLax()}");
                if (req.Status >= 100 || req.Status == 2 || req.Status == 1)
                {
                    string memberId = string.Empty;
                    if(HttpContext.Current.Session["Username"] != null)
                    {
                        string username = HttpContext.Current.Session["Username"].ToString();
                        var member = Members_DataAccess.GetMemberInfo(username);
                        memberId = member.Id;
                    }
                    else
                    {
                        var custom = req.Custom.Split('|');
                        if(custom.Length > 1)
                        {
                            memberId = custom[1];
                        }
                    }
                    WriteLog.LogInfo($"Current LoggedIn user Id : {memberId}");
                    
                    MemberWallets_DataAcsess.UpdateMemberWallet(memberId, Convert.ToDecimal(req.Amount1), 1);
                    WriteLog.LogInfo($"Status Code Is : {req.StatusText}");
                    //Update Transaction on success
                    var transactionCode = Transactions_DataAcsess.UpdateTransaction(memberId, req.Fee, CoinPaymentStatus.Complete.ToString());

                    CoinPaymentTransactions_DataAcsess.UpdateCoinPaymentTransaction(req.TxnId, transactionCode, req.SendTx, req.Status, req.StatusText);
                }
               
                response(context, HttpStatusCode.OK, "1");
            }
            catch (Exception ex)
            {
                WriteLog.LogError(ex);
            }
        }


        private void response(HttpContext context, HttpStatusCode statusCode, string text)
        {
            WriteLog.LogInfo($"Error message : {text}");
            context.Response.StatusCode = (int)statusCode;
            context.Response.ContentType = "text/plain";
            context.Response.Write(text);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}