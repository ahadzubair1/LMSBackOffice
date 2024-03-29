﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace LMSBackOfficeDAL
{
    public static class Memberships_DataAccess
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;
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

        public static bool CheckMembershipExist(string username)
        {
            bool membershipExists = false;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("CheckMembershipExists", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Input parameter
                    command.Parameters.AddWithValue("@username", username);

                    // Output parameter
                    SqlParameter membershipExistsParameter = new SqlParameter();
                    membershipExistsParameter.ParameterName = "@membershipExists";
                    membershipExistsParameter.SqlDbType = SqlDbType.Bit;
                    membershipExistsParameter.Direction = ParameterDirection.Output;
                    command.Parameters.Add(membershipExistsParameter);

                    connection.Open();
                    command.ExecuteNonQuery();

                    // Retrieve the output parameter value
                    membershipExists = (bool)membershipExistsParameter.Value;
                }
            }

            return membershipExists;
        }
    }
}
