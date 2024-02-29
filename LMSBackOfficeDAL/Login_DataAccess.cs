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
