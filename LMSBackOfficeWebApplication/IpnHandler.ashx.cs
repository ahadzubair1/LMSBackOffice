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
                //if (hmac == null || !req.SigIsValid(hmac))
                //{
                //    response(context, HttpStatusCode.BadRequest, "Invalid HMAC / MerchantId");
                //    return;
                //}

                WriteLog.LogInfo($"Status is {req.SuccessStatusLax()}");
                if (req.Status >= 100 || req.Status == 2 || req.Status == 1)
                {
                    string memberId = string.Empty;
                    string orderId = string.Empty;
                    if (!string.IsNullOrEmpty(req.Custom))
                    {
                        var custom = req.Custom.Split('|');
                        if (custom.Length > 1)
                        {
                            memberId = custom[1];
                            orderId = custom[0];
                            WriteLog.LogInfo($"Current LoggedIn user Id : {memberId}");

                            MemberWallets_DataAcsess.UpdateMemberWallet(memberId, Convert.ToDecimal(req.Amount1), 1);
                            WriteLog.LogInfo($"Status Code Is : {req.StatusText}");
                            //Update Transaction on success
                            var transactionCode = Transactions_DataAcsess.UpdateTransaction(memberId, orderId, req.Fee, CoinPaymentStatus.Complete.ToString());
                            WriteLog.LogInfo($"Transaction Code : {transactionCode}");
                            CoinPaymentTransactions_DataAcsess.UpdateCoinPaymentTransaction(req.TxnId, orderId, req.SendTx, req.Status, req.StatusText);
                        }
                    }  
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