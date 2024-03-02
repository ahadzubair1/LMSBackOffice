using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Net.Http;
using LMSBackOfficeDAL;
using LMSBackofficeDAL;


namespace LMSBackOfficeDAL
{

   

    public static class Login_DataAccess
    {
        static int retLogin = 0;



        public static int GetLoginResponse(string username, string emailAddress, string password, string userType)
        {


            return retLogin;
        }
        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";
        public static bool AddLogin(string username, string password)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_CheckLogin", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    Guid newGuid = Guid.NewGuid();
                    // Add parameters
                    command.Parameters.Add("@IN_LoginUserName", SqlDbType.NVarChar).Value = username;
                    command.Parameters.Add("@IN_LoginPassword", SqlDbType.NVarChar).Value = password;
                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        return true;
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Console.WriteLine("Error: " + ex.Message);
                        return false;
                    }
                }
            }
        }



        /// <summary>
        /// INSERTION OF VISITORS INFORMATION FROM ANY PAGE
        /// </summary>
        /// <returns></returns>
        public static string GetVisitorInfo()
        {
            string visitorResponse = string.Empty;

            int retVisitor = UtilMethods.GrabVisitorInfo();

            if (retVisitor==1)
            {
                //visitorResponse = "Visitor Response has been Successfully Saved";
                visitorResponse = "Success";
            }
            else
            {
                //visitorResponse = "Error Occurred while Saving the Visitor Response";
                visitorResponse = "Failure";
            }

            return visitorResponse;
        }
    }
}
