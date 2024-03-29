﻿using System.Runtime.Serialization;

namespace LMSBackOfficeWebApplication.CoinPayment
{ 
    public class CreateTransactionResponse : ResponseModelFoundation<CreateTransactionResponse.Item>
    {
        [DataContract]
        public class Item
        {
            [DataMember(Name = "amount")]
            public decimal Amount { get; set; }
            [DataMember(Name = "address")]
            public string Address { get; set; }
            [DataMember(Name = "txn_id")]
            public string TxnId { get; set; }
            [DataMember(Name = "confirms_needed")]
            public string ConfirmsNeeded { get; set; }
            [DataMember(Name = "timeout")]
            public int Timeout { get; set; }
            [DataMember(Name = "status_url")]
            public string StatusUrl { get; set; }
            [DataMember(Name = "qrcode_url")]
            public string QrcodeUrl { get; set; }
        }
    }
}
