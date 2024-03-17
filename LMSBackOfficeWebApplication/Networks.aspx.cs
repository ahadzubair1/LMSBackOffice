using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMSBackOfficeWebApplication
{
    public partial class Networks : System.Web.UI.Page
    {
        protected DataTable referrelsTable { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }

                string userName = Session["Username"].ToString();
                var member = Members_DataAccess.GetMemberInfo(userName);
                referrelsTable = Members_DataAccess.GetReferrelsByMemberId(member.Id);

            }

            if (!IsPostBack)
            {
                string generatedHtml = GenerateHTML(); // Call the method to generate HTML
                litGeneratedHtml.Text = generatedHtml; // Set the generated HTML to the Literal control
            }
        }
        private string GenerateHTML()
        {
            StringBuilder sb = new StringBuilder();

            // Appending HTML structure
            sb.AppendLine("<ul class=\"parent-node\">");
            sb.AppendLine("    <li>");
            sb.Append(GenerateUserHtml("Anas AORH7", "EWGRR", "Morocco", "Platinum", "02/02/2024 23:59:02"));
            sb.AppendLine("        <ul class=\"child-node\">");
            sb.AppendLine("            <li>");
            sb.Append(GenerateUserHtml("Ahmed AEPNJ", "AORH7", "Egypt", "Platinum", "02/02/2024 23:59:02"));
            sb.AppendLine("                <ul>");
            sb.AppendLine("                    <li>");
            sb.Append(GenerateUserHtml("Omar MDTA4", "AORH7", "Morocco", "Premium", "02/03/2024 01:44:12"));
            sb.AppendLine("                    <ul>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("ANAS OK7PM", "AORH7", "Morocco", "Starter", "02/03/2024 02:05:12"));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("bougouttaia HDWGT", "MDTA4", "Morocco", "Starter", "02/03/2024 02:05:12"));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                    </ul>");
            sb.AppendLine("                </li>");
            sb.AppendLine("                <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", "02/03/2024 01:44:12"));
            sb.AppendLine("                    <ul>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", ""));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", ""));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                    </ul>");
            sb.AppendLine("                </li>");
            sb.AppendLine("            </ul>");
            sb.AppendLine("        </li>");
            sb.AppendLine("        <li>");
            sb.Append(GenerateUserHtml("ANAS 5YABF", "AORH7", "Morocco", "Platinum", "02/02/2024 23:59:02"));
            sb.AppendLine("            <ul>");
            sb.AppendLine("                <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", "02/03/2024 00:27:21"));
            sb.AppendLine("                    <ul>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", ""));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", ""));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                    </ul>");
            sb.AppendLine("                </li>");
            sb.AppendLine("                <li>");
            sb.Append(GenerateUserHtml("Abdessamad A7AFX", "AORH7", "Netherlands", "Starter", "02/03/2024 00:27:21"));
            sb.AppendLine("                    <ul>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("No User", "", "AE", "NA", "02/26/2024 02:29:08"));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li>");
            sb.Append(GenerateUserHtml("ANMAR 5NICM", "AORH7", "Iraq", "Starter", "02/26/2024 02:29:08"));
            sb.AppendLine("                        </li>");
            sb.AppendLine("                    </ul>");
            sb.AppendLine("                </li>");
            sb.AppendLine("            </ul>");
            sb.AppendLine("        </li>");
            sb.AppendLine("    </ul>");
            sb.AppendLine("</li>");
            sb.AppendLine("</ul>");

            return sb.ToString();
        }


        public string GenerateUserHtml(string userName, string sponsor, string country, string spotLicense, string subsDate)
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine("<a href=\"\" class=\"platinum\"\">");
            sb.AppendLine($@"
            
                <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Gold"">
                <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                <span class=""user-name"">{userName}</span>
                <span class=""node-detail"">
                    <label>Username: {userName}</label>
                    <label>Sponsor: {sponsor}</label>
                    <label>Country: {country}</label>
                    <label>Spot License: {spotLicense}</label>
                    <label>Subs. Date: {subsDate}</label>
                </span>
            </a>
        ");

            return sb.ToString();
        }

    }
}