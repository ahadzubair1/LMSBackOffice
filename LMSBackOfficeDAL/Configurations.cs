using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMSBackOfficeDAL
{
    public static class Configurations
    {
        public static string CoinPaymentUrl = ConfigurationManager.AppSettings["CoinPaymentUrl"].ToString();
        public static string PublicKey = ConfigurationManager.AppSettings["PublicKey"].ToString();
        public static string PrivateKey = ConfigurationManager.AppSettings["PrivateKey"].ToString();
        public static string MerchantId = ConfigurationManager.AppSettings["MerchantId"].ToString();
        public static string IpnSecret = ConfigurationManager.AppSettings["IpnSecret"].ToString();
    }
}
