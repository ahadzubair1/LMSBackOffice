using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Net.Http;
using System.Text;

namespace LMSBackOfficeDAL
{
	public class Network_DataAccess
	{
        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";
        public static bool AddMemberNetwork(string memberId, string referredByParentId,int Position)
        {
            bool networkSuccess = false;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_AddMemberNetwork", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    // Add parameters
                    command.Parameters.Add("@IN_Member_ID", SqlDbType.NVarChar).Value = memberId;
                    command.Parameters.Add("@IN_ReferredBy", SqlDbType.NVarChar).Value = referredByParentId;
                    command.Parameters.Add("@IN_Position", SqlDbType.NVarChar).Value = Position;

                    
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
                        return false;
                    }
                }
            }
            return networkSuccess;
        }
        


    }
}
