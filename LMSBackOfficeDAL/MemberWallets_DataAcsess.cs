﻿using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LMSBackOfficeDAL
{
    public class MemberWallets_DataAcsess
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;

        public static void UpdateMemberWallet(string userId, decimal amount, int isActive)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_UpdateMemberBalance", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    try
                    {
                        command.Parameters.Add("@IN_MemberId", SqlDbType.UniqueIdentifier).Value = Guid.Parse(userId);
                        command.Parameters.Add("@IN_Balance", SqlDbType.Decimal).Value = amount;
                        command.Parameters.Add("@IN_IsActive", SqlDbType.SmallInt).Value = isActive;
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

        public static DataTable GetMemberWalletBalance(string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("[USP_GetMemberCreditWalletBalance]", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IN_Member_Username", SqlDbType.NVarChar).Value = username;

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

        public static DataTable GetMemberCreditWallets(string memberId)
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetUserCreditWallet", connection))
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
    }
}
