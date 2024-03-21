using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMSBackOfficeDAL
{
    public static class Memberships_DataAccess
    {
        private static string connectionString = DatabaseConnection.GetConnectionString();
        public static DataTable GetMembershipDetails(string membershipCode)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_GetMembershipDetails", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IN_MembershipCode", SqlDbType.NVarChar).Value = membershipCode;

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
    }
}
