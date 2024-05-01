using LMSBackofficeDAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMSBackOfficeDAL
{
    public static class KYC_DataAccess
    {

        private static string connectionString = ConfigurationManager.ConnectionStrings["LMSBackOfficeConnectionString"].ConnectionString;
        public static string AddKYCDocument(
        Guid Document_ID,
        Guid Member_ID,
        string Document_NICPath,
        DateTime? Document_NICExpiryDate,
        string Document_PassportPath,
        string Document_PassportName,
        DateTime? Document_PassportExpiryDate,
        short? Is_Active,
        DateTime? Created_Date,
        string Created_By,
        DateTime? Updated_Date,
        string Updated_By)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_AddKYCDocument", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@Document_ID", SqlDbType.UniqueIdentifier).Value = Document_ID;
                    command.Parameters.Add("@Member_ID", SqlDbType.UniqueIdentifier).Value = Member_ID;
                    command.Parameters.Add("@Document_NICPath", SqlDbType.NVarChar, 2000).Value = Document_NICPath;
                    command.Parameters.Add("@Document_NICExpiryDate", SqlDbType.DateTime).Value = (object)Document_NICExpiryDate ?? DBNull.Value;
                    command.Parameters.Add("@Document_PassportPath", SqlDbType.NVarChar, 2000).Value = Document_PassportPath;
                    command.Parameters.Add("@Document_PassportName", SqlDbType.NVarChar, 100).Value = Document_PassportName;
                    command.Parameters.Add("@Document_PassportExpiryDate", SqlDbType.DateTime).Value = (object)Document_PassportExpiryDate ?? DBNull.Value;
                    command.Parameters.Add("@Is_Active", SqlDbType.SmallInt).Value = (object)Is_Active ?? DBNull.Value;
                    command.Parameters.Add("@Created_Date", SqlDbType.DateTime).Value = (object)Created_Date ?? DBNull.Value;
                   
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

