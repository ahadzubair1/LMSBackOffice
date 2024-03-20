using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMSBackOfficeDAL.Model
{
    public class MemberInfo
    {
        public string Id { get; set; }
        public string UserName { get; set; }
        public string MemberFullName { get; set; }
        public string MemberCode { get; set; }
        public string Email { get; set; }
        public string MemberAddress { get; set; }
        public string MemberWalletBalance { get; set; }
        public string MemberWalletCurrency { get; set; }
        public string MemberCurrency { get; set; } = "USD";
    }

    public class CheckoutModel
    {
        public string MemberFullName { get; set; }
        public string Email { get; set; }
        public decimal TotalAmount { get; set; }
        public string Currency { get; set; }
        public string ToWalletAddress { get; set; }
    }
}
