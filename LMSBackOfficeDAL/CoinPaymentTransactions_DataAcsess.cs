﻿using System;
using System.Data.SqlClient;
using System.Data;

namespace LMSBackOfficeDAL
{
    public class CoinPaymentTransactions_DataAcsess
    {
        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";

        public static string AddCoinPaymentTransactions(string transactionCode,string cpTransactionId, string transactionType,
                                                        string currency, string memberAddress,  string status, decimal amount,
                                                        string redirectUrl, string successRedirectUrl, bool isCompleted)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_AddCoinPaymentTransaction", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("@IN_Transaction_Code", SqlDbType.NVarChar).Value = transactionCode;
                    command.Parameters.Add("@IN_CPTransactionID", SqlDbType.NVarChar).Value = cpTransactionId;
                    command.Parameters.Add("@IN_Transaction_Type", SqlDbType.NVarChar).Value = transactionType;
                    command.Parameters.Add("@IN_Transaction_Amount", SqlDbType.Decimal).Value = amount;
                    command.Parameters.Add("@IN_Transaction_SenderAddress", SqlDbType.NVarChar).Value = memberAddress;
                    command.Parameters.Add("@IN_Transaction_Currency", SqlDbType.NVarChar).Value = currency;
                    command.Parameters.Add("@IN_Transaction_Status", SqlDbType.NVarChar).Value = status;
                    command.Parameters.Add("@IN_Private_Key", SqlDbType.NVarChar).Value = Configurations.PrivateKey;
                    command.Parameters.Add("@IN_Public_Key", SqlDbType.NVarChar).Value = Configurations.PublicKey;
                    command.Parameters.Add("@IN_Success_RedirectUrl", SqlDbType.NVarChar).Value = successRedirectUrl;
                    command.Parameters.Add("@IN_Redirect_Url", SqlDbType.NVarChar).Value = redirectUrl;
                    command.Parameters.Add("@Is_ProcessCompleted", SqlDbType.Bit).Value = isCompleted;
                   

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                       
                        return "Success";

                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                        return ex.Message;
                    }
                }
            }
        }
    }
}