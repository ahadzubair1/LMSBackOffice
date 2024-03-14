using System;
using System.Data.SqlClient;
using System.Data;

namespace LMSBackOfficeDAL
{
    public class Transactions_DataAcsess
    {
        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";

        public static DataTable GetAllTransaction(string memberId)
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetAllTransactions", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("@IN_Member_ID", SqlDbType.UniqueIdentifier).Value = Guid.Parse(memberId);
                    try
                    {
                        connection.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(command))
                        {
                            da.Fill(dt);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                    }                 
                }
            }

            return dt;
        }

        public static string AddTransactions(string memberId, string orderId, string coinpaymentTransactionId,
                                            string transactionType, string fromCurrency, string toCurrency, string memberAddress, string toAddress, string fee, 
                                            string status, decimal amount, string redirectUrl, string successRedirectUrl, bool isCompleted)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_AddTransaction", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    Random rand = new Random();
                    int randomNumber = rand.Next(100000, 999999); // Adjust range as needed
                    string transactionCode = "TR_" + randomNumber.ToString("D6");

                    command.Parameters.Add("@IN_Transaction_Code", SqlDbType.NVarChar).Value = transactionCode;
                    command.Parameters.Add("@IN_Member_ID", SqlDbType.NVarChar).Value = memberId;
                    command.Parameters.Add("@IN_Transaction_OrderID", SqlDbType.NVarChar).Value = orderId;
                    command.Parameters.Add("@IN_Transaction_Type", SqlDbType.NVarChar).Value = transactionType;
                    command.Parameters.Add("@IN_Transaction_Amount", SqlDbType.Decimal).Value = amount;
                    command.Parameters.Add("@IN_Transaction_Currency", SqlDbType.NVarChar).Value = fromCurrency;
                    command.Parameters.Add("@IN_Transaction_SenderAddress", SqlDbType.NVarChar).Value = memberAddress;
                    command.Parameters.Add("@IN_Transaction_ReceiverAddress", SqlDbType.NVarChar).Value = toAddress;                    
                    command.Parameters.Add("@IN_Transaction_Status", SqlDbType.NVarChar).Value = status;
                    SqlParameter outParameter = command.Parameters.Add("@OUT_TransactionID", SqlDbType.NVarChar, 250); // Assuming 36 is the maximum length of a GUID represented as a string
                    outParameter.Direction = ParameterDirection.Output;

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        if (outParameter.Value != DBNull.Value && outParameter.Value != null)
                        {
                            //UtilMethods.SendEmail(name,"support@tradiix.com", phone);
                            var transactionId = outParameter.Value.ToString();
                           CoinPaymentTransactions_DataAcsess.AddCoinPaymentTransactions(memberId,transactionCode, coinpaymentTransactionId, transactionType,
                                                                    fromCurrency, toCurrency, memberAddress, status, amount, redirectUrl, successRedirectUrl, isCompleted);     
                        }
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



        public static void UpdateTransaction(string memberId, string fee, string status)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_UpdateTransaction", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    try
                    {
                        command.Parameters.Add("@IN_MemberId", SqlDbType.UniqueIdentifier).Value = Guid.Parse(memberId);
                        command.Parameters.Add("@IN_Status", SqlDbType.NVarChar).Value = status;
                        command.Parameters.Add("@IN_Fee", SqlDbType.Decimal).Value = Convert.ToDecimal(fee);
                        connection.Open();

                        command.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        // Log or handle the exception properly
                        Console.WriteLine("Error: " + ex.Message);
                    }
                }
            }
        }
    }
}
