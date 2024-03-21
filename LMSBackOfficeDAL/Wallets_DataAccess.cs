using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMSBackOfficeDAL
{
    public static class Wallets_DataAccess
    {
        private static string connectionString = DatabaseConnection.GetConnectionString();
        public static void CreateMemberWallets(string memberId)
        {
            bool networkSuccess = false;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_CreateMemberWallets", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    // Add parameters
                    command.Parameters.Add("@IN_Member_ID", SqlDbType.NVarChar).Value = memberId;
                    
                    try
                    {
                        connection.Open();
                        var result = command.ExecuteScalar();
                        if (result != null && result != DBNull.Value)
                        {
                            networkSuccess = Convert.ToBoolean(result);
                        }

                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                    }
                }
            }
        }

    }
}
