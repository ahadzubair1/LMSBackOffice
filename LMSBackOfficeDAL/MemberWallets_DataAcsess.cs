using System;
using System.Data.SqlClient;
using System.Data;

namespace LMSBackOfficeDAL
{
    public class MemberWallets_DataAcsess
    {
        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";

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
                        command.Parameters.Add("@@IN_IsActive", SqlDbType.SmallInt).Value = isActive;
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
