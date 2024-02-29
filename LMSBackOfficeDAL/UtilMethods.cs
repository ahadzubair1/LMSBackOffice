using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using Newtonsoft.Json;
using System.Collections;
using System.Xml.Linq;
//using System.Web.UI.WebControls.WebParts;
//using Microsoft.AspNetCore.Http;
//using System.Net.Http;
//using Microsoft.AspNetCore.Http;
//using System.Web.Helpers;
//using System.Web.HttpContext.Current;

namespace LMSBackofficeDAL
{
	public static class UtilMethods
	{
		public static string retResponse = string.Empty;
		public static List<string> lstVA = new List<string>();
		public static int retVisitor = 0;

		public static int GrabVisitorInfo()
		{
		
			try
			{
				//User_IPAddress
				//User_Country
				//User_City
				//User_TimeZone
				//Current Page_Name
				//User_Browser
				//User_OS
				//Is_Crawler

				lstVA = FetchIPfromAPI();

				//Adding Page Name
				lstVA.Add(Convert.ToString(HttpContext.Current.Server.HtmlEncode(HttpContext.Current.Request.RawUrl)));

                //Adding User-Browser Info.
                lstVA.Add(Convert.ToString(HttpContext.Current.Request.Browser.Browser.ToString()));

				//Adding User-OS Info.
				lstVA.Add(Convert.ToString(HttpContext.Current.Request.UserAgent.ToString()));


				//Adding Crawler Flag
				lstVA.Add(Convert.ToString(HttpContext.Current.Request.Browser.Crawler.ToString()));
				retResponse = SaveVisitorAnalytics(lstVA);
				if (retResponse == "Success")
				{
					//"Congrats ! Your Response has been Successfully Registered in our Database.";
					retVisitor = 1;
                }
				else
				{
					retVisitor = -1;
	    			//"Exception Occurred: Kindly Refresh and Try Again";
				}
			}
			catch(Exception ex)
			{
				throw ex;

			}
			finally
			{

			}
			return retVisitor;


		}


		/// <summary>
		/// METHOD TO FETCH THE IPADDRESS OF VISITOR - FROM API TO DEFAULT METHODS
		/// </summary>
		/// <returns></returns>
		public static List<string> FetchIPfromAPI()
		{
			
			string IPAddr = string.Empty;
			List<string> lstVisitorAnalytics = new List<string>();
			var url = String.Format("http://ip-api.com/json/");
			var httpRequest = (HttpWebRequest)WebRequest.Create(url);
			httpRequest.Method = "GET";
			httpRequest.ContentType = "application/json";
			string usrCountry = string.Empty;
			var httpResponse = (HttpWebResponse)httpRequest.GetResponse();
			using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
			{
				var rslt = streamReader.ReadToEnd();

				if (rslt != null)
				{
					dynamic result = JsonConvert.DeserializeObject(rslt);
					if (result != null)
					{
						IPAddr = Convert.ToString(result["query"]); //IP-Address
						lstVisitorAnalytics.Add(Convert.ToString(IPAddr)); 
						lstVisitorAnalytics.Add(Convert.ToString(result["country"])); //Country
						lstVisitorAnalytics.Add(Convert.ToString(result["city"])); //City
						lstVisitorAnalytics.Add(Convert.ToString(result["timezone"])); //Time-Zone
					

					}
				}
				else
				{
					string hostName = System.Net.Dns.GetHostName();
					IPHostEntry usrIP = Dns.GetHostEntry(hostName);
					if (!String.IsNullOrEmpty(Convert.ToString(usrIP)))
						IPAddr = Convert.ToString(usrIP.AddressList[1].ToString());
					else
						IPAddr = Convert.ToString(HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]);


					lstVisitorAnalytics.Add(IPAddr);
					lstVisitorAnalytics.Add("Country-Not-Available"); //Country
					lstVisitorAnalytics.Add("City-Not-Available"); //City
					lstVisitorAnalytics.Add("TimeZone-Not-Available"); //Time-Zone
				}
			}
			return lstVisitorAnalytics;
		}



		/// <summary>
		/// METHOD TO INSERT THE VISITOR ANALYTICS INFORMATION
		/// </summary>
		/// <param name="lstVstAly"></param>
		/// <returns></returns>
		public static string SaveVisitorAnalytics(List<string> lstVstAly)
		{
			string result = string.Empty;
			if (lstVstAly.Count > 0 && (lstVstAly != null) && (lstVstAly.Any()))
			{
				SqlConnection con = null;
				try
				{
                    con = new SqlConnection("Data Source=iconx.c3iqk6wiqyda.me-central-1.rds.amazonaws.com;Initial Catalog=LMSBackOffice;Persist Security Info=True;User ID=sa;Password=capslock2019;Connect Timeout=30000");
                    //con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSBOConnectionString"].ToString());
					SqlCommand cmd = new SqlCommand("USP_InsertVisitorAnalytics", con);
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.Parameters.AddWithValue("@IPAddress", Convert.ToString(lstVstAly[0]));
					cmd.Parameters.AddWithValue("@UserCountry", Convert.ToString(lstVstAly[1]));
					cmd.Parameters.AddWithValue("@UserCity", Convert.ToString(lstVstAly[2]));
					cmd.Parameters.AddWithValue("@UserTimeZone", Convert.ToString(lstVstAly[3]));
					cmd.Parameters.AddWithValue("@PageName", Convert.ToString(lstVstAly[4]));
					cmd.Parameters.AddWithValue("@UserBrowser", Convert.ToString(lstVstAly[5]));
					cmd.Parameters.AddWithValue("@UserOS", Convert.ToString(lstVstAly[6]));
					cmd.Parameters.AddWithValue("@IsCrawler", Convert.ToString(lstVstAly[7]));
					con.Open();
					result = cmd.ExecuteScalar().ToString();
					return result;

				}
				catch
				{
					return result = "Failure";
				}
				finally
				{
					con.Close();
				}


			}
			return result;

		}


		/// <summary>
		/// METHOD TO SEND EMAIL ON NEWSLETTER //
		/// </summary>
		public static void SendEmail(string senderName, string senderEmail, string senderPhone )
		{
			string toEmail = string.Empty;
			string toEmailHash = string.Empty;
			string fromEmail = string.Empty;
			string subjectEmail = "NewsLetter Query - Email";
			string emailHost = string.Empty;
			//string senderName = string.Empty;
			//string phoneNumber = string.Empty;
			Int16 hostPort = 0;

			senderName = Convert.ToString(senderName);
			toEmail = ConfigurationManager.AppSettings["ReceiverEmail"].ToString(); //To address
			toEmailHash = ConfigurationManager.AppSettings["ReceiverHash"].ToString();
			emailHost = ConfigurationManager.AppSettings["EmailHost"].ToString(); //SMTP
			hostPort = Convert.ToInt16(ConfigurationManager.AppSettings["HostPort"]);
			fromEmail = Convert.ToString(senderEmail); //From address    
			MailMessage message = new MailMessage(fromEmail, toEmail);

			string mailbody = Convert.ToString(subjectEmail + "<br> <strong>Contact #: </strong>  " + Convert.ToString(senderPhone));
			message.Subject = Convert.ToString(subjectEmail);
			message.Body = "<strong>Email By:</strong> " + senderName.ToUpper() + " (" + fromEmail + ") " + "<br> <strong>Email Subject:</strong> " + message.Subject + "</br><br> <strong>Email Attachments:</strong> " + message.Attachments.Count() + "</br><br> <strong>Email Message:</strong> " + mailbody;
			message.BodyEncoding = Encoding.UTF8;
			message.IsBodyHtml = true;

			//SmtpClient client = new SmtpClient(Convert.ToString(emailHost), hostPort); //Gmail SMTP   
			SmtpClient client = new SmtpClient(); //Gmail SMTP   

			client.Host = Convert.ToString(emailHost);
			client.Port = Convert.ToInt16(hostPort);
			client.UseDefaultCredentials = false;
			System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential(toEmail, toEmailHash);
			client.Credentials = basicCredential1;
			client.EnableSsl = true;
			client.DeliveryMethod = SmtpDeliveryMethod.Network;

			client.Timeout = 200000;
			message.Priority = MailPriority.High;
			try
			{
				System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls11;
				client.Send(message);
				//pFlag.InnerText = "Email Sent";
			}

			catch (Exception ex)
			{
				//pFlag.InnerText = "Exception Occurred: " + Convert.ToString(ex.Message) + " - Kindly Refresh and Try Again";
				throw ex;
			}

		}


	}
}