using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Net.Http;
using System.Text;
using LMSBackofficeDAL;

namespace LMSBackOfficeDAL
{
	public class Members_DataAccess
	{
        /* MAJOR API REQUIRED INSIDE CHECKOUT SYSTEM FOR
		  IN-ORDER, 
		  OUT-ORDER, 
		  OUT-TRANSACTION, 
		  ADDRESS-SYNCING, 
		  REBATE, BALANCE-HISTORY 
		  CALL-BACK (timer is callout/callback)
		  Utility-Class for Redis
		  From Redis to Method till MQ
		 */

        /// <summary>
        /// METHOD TO GET ALL THE MEMBERS INORDERS REQUESTS
        /// </summary>
        /// <returns></returns>
        //public static DataTable GetAllMembers()
        //{
        //	DataSet dsInOrders = null;
        //	try
        //	{
        //    	//var Constring = new System.Configuration.ConfigurationManager.ConnectionStrings["MerchantCheckOutConnectionString"].ConnectionString;
        //		//var  Constring = new SqlConnection(ConfigurationSettings.AppSettings["MerchantCheckOutConnectionString"]);
        //		//var Constring = new SqlConnection(ConfigurationManager.ConnectionStrings["MerchantCheckOutConnectionString"].ConnectionString);
        //		SqlConnection Connection = new SqlConnection("Data Source=15.184.218.35;Initial Catalog=OTC_TradingSystem;Persist Security Info=True;User ID=sa;Password=TC0qd8UiEqwP*xWB;Connect Timeout=30000");
        //		Connection.Open();
        //		SqlDataAdapter DataAdapter = new SqlDataAdapter("USP_FetchInOrders", Connection);

        //		//Set the command type as StoredProcedure.
        //		DataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
        //		DataAdapter.SelectCommand.CommandTimeout = 0;

        //		//Create a new DataSet to hold the records.
        //		dsInOrders = new DataSet();

        //		//Fill the DataSet 
        //		DataAdapter.Fill(dsInOrders, "dtInOrders");

        //		//Dispose of the DataAdapter.
        //		DataAdapter.Dispose();
        //		//Close the connection.
        //		Connection.Close();

        //		return dsInOrders.Tables["dtInOrders"];
        //	}
        //	catch (Exception ex)
        //	{
        //		dsInOrders.Dispose();
        //		throw new Exception("Error Occrred During IN-Order :   " + ex.Message);
        //	}
        //}

        private static string connectionString = "Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=iconxadmin;Password=nAn)m!T3$#31;Connect Timeout=30000";
        public static string AddMember(string name, string username,string email, string password, string referredByParentId,int position, string phone, string country)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("USP_AddMember", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    // Add parameters
                    var hashPassword = HashUtility.ComputeSHA512Hash(password);
                    Random rand = new Random();
                    int randomNumber = rand.Next(100000, 999999); // Adjust range as needed
                    string memberCode = "MEM_" + randomNumber.ToString("D6");
                    command.Parameters.Add("@IN_Member_FullName", SqlDbType.NVarChar).Value = name;
                    command.Parameters.Add("@IN_Member_Email", SqlDbType.NVarChar).Value = email;
                    command.Parameters.Add("@IN_Member_Password", SqlDbType.NVarChar).Value = hashPassword;
                    command.Parameters.Add("@IN_Member_Code", SqlDbType.NVarChar).Value =  memberCode; 
                    command.Parameters.Add("@IN_Member_Mobile", SqlDbType.NVarChar).Value = phone;
                    command.Parameters.Add("@IN_Member_CountryOfOrigin", SqlDbType.NVarChar).Value = country;
                    command.Parameters.Add("@IN_Member_UserName", SqlDbType.NVarChar).Value = username;
                    command.Parameters.Add("@IN_Member_RefferredBy", SqlDbType.NVarChar).Value = referredByParentId;
                    SqlParameter outParameter = command.Parameters.Add("@OUT_Member_ID", SqlDbType.NVarChar, 36); // Assuming 36 is the maximum length of a GUID represented as a string
                    outParameter.Direction = ParameterDirection.Output;
                    
                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        if (outParameter.Value != DBNull.Value && outParameter.Value != null)
                        {
                            //UtilMethods.SendEmail(name,"support@tradiix.com", phone);
                            var memberId = outParameter.Value.ToString();
                            string codeLeft = GenerateRandomAlphaNumericString(20);
                            string codeRight = GenerateRandomAlphaNumericString(20);
                            ReferralCodes_DataAccess.AddMemberReferralCodes(memberId,1, codeLeft);
                            ReferralCodes_DataAccess.AddMemberReferralCodes(memberId, 2, codeRight);
                            Network_DataAccess.AddMemberNetwork(memberId, referredByParentId, position);
                            Wallets_DataAccess.CreateMemberWallets(memberId);
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
        private static Random random = new Random();
        private static string GenerateRandomAlphaNumericString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringBuilder = new StringBuilder(length);
            for (int i = 0; i < length; i++)
            {
                stringBuilder.Append(chars[random.Next(chars.Length)]);
            }
            return stringBuilder.ToString();
        }
        /// <summary>
        /// METHOD TO ADD THE INORDERS
        /// </summary>
        /// <param name="objInOrders"></param>
        /// <returns></returns>
        //public static bool AddMembers(InOrders objInOrders)
        //{

        //	SqlConnection Connection = new SqlConnection("Data Source=15.184.218.35;Initial Catalog=OTC_TradingSystem;Persist Security Info=True;User ID=sa;Password=TC0qd8UiEqwP*xWB;Connect Timeout=30000");
        //	Connection.Open();
        //	SqlDataAdapter DataAdapter = new SqlDataAdapter("USP_InsertInOrders", Connection);


        //	using (SqlConnection objConn = new SqlConnection(connString))
        //	{
        //		objConn.Open();
        //		try
        //		{
        //			if (objLocationBO.LocationID != null)
        //			{
        //				objCommand = new SqlCommand("CRE_Update_Location", objConn);
        //				objCommand.CommandType = CommandType.StoredProcedure;
        //				objCommand.Parameters.Add(new SqlParameter("@LocationID", objLocationBO.LocationID));
        //			}
        //			else
        //			{
        //				objCommand = new SqlCommand("CRE_Insert_Location", objConn);
        //				objCommand.CommandType = CommandType.StoredProcedure;
        //				objCommand.Parameters.Add(new SqlParameter("@LocationCreationDate", objLocationBO.LocationCreationDate));
        //			}
        //			objCommand.Parameters.Add(new SqlParameter("@LocationName", objLocationBO.LocationName));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationCityID", objLocationBO.LocationCityID));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationTrecTransferFee", objLocationBO.LocationTrecTransferFee));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationAnnualMembershipFee", objLocationBO.LocationAnnualMembershipFee));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationHARTransferFee", objLocationBO.LocationHARTransferFee));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationProcessingFee", objLocationBO.LocationProcessingFee));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationTotalFee", objLocationBO.LocationTotalFee));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationIsActive", objLocationBO.LocationIsActive));
        //			objCommand.Parameters.Add(new SqlParameter("@LocationUpdateDate", objLocationBO.LocationUpdateDate));

        //			retLocationID = Convert.ToInt32(objCommand.ExecuteNonQuery());

        //		}
        //		catch (Exception ex)
        //		{
        //			throw new Exception(ex.Message);
        //		}
        //		finally
        //		{
        //			objCommand.Dispose();
        //			objConn.Close();
        //		}
        //		if (retLocationID != 0)

        //			return retLocationID;
        //		else
        //			return -1;

        //	}


        //	//-------------- HERE---------//
        //	bool addresponse = false;
        //	try
        //	{

        //		SqlConnection Connection = new SqlConnection("Data Source=15.184.218.35;Initial Catalog=OTC_TradingSystem;Persist Security Info=True;User ID=sa;Password=TC0qd8UiEqwP*xWB;Connect Timeout=30000");
        //		Connection.Open();
        //		SqlDataAdapter DataAdapter = new SqlDataAdapter("USP_InsertInOrders", Connection);

        //		//Set the command type as StoredProcedure.
        //		DataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
        //		DataAdapter.SelectCommand.CommandTimeout = 0;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Inner_FlowNumber", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@Inner_FlowNumber"].Value = objInOrders.Inner_FlowNumber;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_Quantity", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_Quantity"].Value = objInOrders.Order_Quantity;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_USDTAmount", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_USDTAmount"].Value = objInOrders.Order_USDTAmount;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_USDTAmount", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_USDTAmount"].Value = objInOrders.Order_USDTAmount;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_SourceCurrency", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@Order_SourceCurrency"].Value = objInOrders.Order_SourceCurrency;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_DestinationCurrency", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@Order_DestinationCurrency"].Value = objInOrders.Order_DestinationCurrency;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_Expense", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_Expense"].Value = objInOrders.Order_Expense;


        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_ExchangeRate", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_ExchangeRate"].Value = objInOrders.Order_ExchangeRate;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_FinalUSDTAmount", SqlDbType.Decimal));
        //		DataAdapter.SelectCommand.Parameters["@Order_FinalUSDTAmount"].Value = objInOrders.Order_FinalUSDTAmount;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Order_Status", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@Order_Status"].Value = objInOrders.Order_Status;

        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@IP_Address", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@IP_Address"].Value = objInOrders.IP_Address;


        //		DataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@InOrder_Desc", SqlDbType.NVarChar));
        //		DataAdapter.SelectCommand.Parameters["@InOrder_Desc"].Value = objInOrders.InOrder_Desc;
        //		//Create a new DataSet to hold the records.
        //		retLocationID = Convert.ToInt32(objCommand.ExecuteNonQuery());


        //		//Dispose of the DataAdapter.
        //		DataAdapter.Dispose();
        //		//Close the connection.
        //		Connection.Close();
        //		addresponse = true;
        //		return addresponse;
        //		//return dsInOrders.Tables["dtInOrders"];
        //	}
        //	catch (Exception ex)
        //	{
        //		//dsInOrders.Dispose();
        //		throw new Exception("Error Occrred During IN-Order :   " + ex.Message);
        //	}

        //	return addresponse;
        //}




    }
}
