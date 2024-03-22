using LMSBackOfficeDAL;
using LMSBackOfficeWebApplication;
using LMSBackOfficeWebApplication.Ipns;
using LMSBackOfficeWebApplication.Utitlity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
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
                WriteLog.LogInfo(hmac);
                if (hmac == null || !req.SigIsValid(hmac))
                {
                    response(context, HttpStatusCode.BadRequest, "Invalid HMAC / MerchantId");
                    return;
                }

                if (req.SuccessStatusLax() && req.IpnType == "api")
                {
                    // TODO: Process payment as needed, release product
                    //Update Balance in UserWallet table 
                    string username = HttpContext.Current.Session["Username"].ToString();
                    var member = Members_DataAccess.GetMemberInfo(username);
                    MemberWallets_DataAcsess.UpdateMemberWallet(member.Id, Convert.ToDecimal(req.Amount1), 0);

                    //Update Transaction on success
                    Transactions_DataAcsess.UpdateTransaction(member.Id, req.Fee, CoinPaymentStatus.Complete.ToString());

                    CoinPaymentTransactions_DataAcsess.UpdateCoinPaymentTransaction(req.SendTx, req.StatusText);
                }

                WriteLog.LogInfo($"Status Code Is : {req.StatusText}" );
                WriteLog.LogInfo($"Reponse text : 1");
               // response(context, HttpStatusCode.OK, "1");
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