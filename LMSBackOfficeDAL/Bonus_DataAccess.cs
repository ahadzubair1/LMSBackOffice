using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Net.Http;
using System.Text;
using LMSBackOfficeDAL;

namespace LMSBackOfficeDAL
{
	public class Bonus_DataAccess
	{
        private static string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;
      
        public static DataTable GetDirectBonusByMemberId(string memberId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetDirectBonusByMember_tradiix", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@MemberId", SqlDbType.NVarChar).Value = memberId;
                    try
                    {
                        connection.Open();
                        DataTable resultTable = new DataTable();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(resultTable);
                        }
                        return resultTable;
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                        return null; // Or throw an exception
                    }
                }
            }
        }



        public static DataTable GetMemberWalletsByMemberId(string memberId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetMemberWalletBalances", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@MemberId", SqlDbType.NVarChar).Value = memberId;
                    try
                    {
                        connection.Open();
                        DataTable resultTable = new DataTable();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(resultTable);
                        }
                        return resultTable;
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                        return null; // Or throw an exception
                    }
                }
            }
        }



        public static DataTable GetNetworkBonusByMemberId(string memberId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetNetworkBonusByMemId_tradiix", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@MemberId", SqlDbType.NVarChar).Value = memberId;
                    try
                    {
                        connection.Open();
                        DataTable resultTable = new DataTable();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(resultTable);
                        }
                        return resultTable;
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                        return null; // Or throw an exception
                    }
                }
            }
        }



        public static string WithdrawRequest(int transactionId, string memberId, string walletNumber, decimal withdrawalAmount,
                                     decimal withdrawalBalance, string withdrawalStatus, string tradingPlatform, string withdrawalDescription,
                                     bool isActive,string bonusType)
        {
            try
            {
                // Call the stored procedure
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("USP_InitiateBonusWithDrawl", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        // Add parameters
                  
                        command.Parameters.Add("@Transaction_ID", SqlDbType.Int).Value = transactionId;
                        command.Parameters.Add("@Member_ID", SqlDbType.VarChar).Value = memberId;
                        command.Parameters.Add("@Wallet_Number", SqlDbType.VarChar).Value = walletNumber;
                        command.Parameters.Add("@Withdrawal_Amount", SqlDbType.Decimal).Value = withdrawalAmount;
                        command.Parameters.Add("@Withdrawal_Balance", SqlDbType.Decimal).Value = withdrawalBalance;
                        command.Parameters.Add("@Withdrawal_Status", SqlDbType.VarChar).Value = withdrawalStatus;
                        command.Parameters.Add("@Withdrawal_Description", SqlDbType.VarChar).Value = withdrawalDescription;
                        command.Parameters.Add("@Is_Active", SqlDbType.Bit).Value = isActive;
                        command.Parameters.Add("@BonusType", SqlDbType.VarChar).Value = bonusType;

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                return "Success";
            }
            catch (Exception ex)
            {
                // Handle exception
                    WriteLog.LogError(ex);
                return ex.Message;
            }
        }


    }
}
