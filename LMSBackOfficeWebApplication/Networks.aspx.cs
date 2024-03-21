using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LMSBackOfficeDAL; // Make sure to include the necessary namespace

namespace LMSBackOfficeWebApplication
{
    public partial class Networks : System.Web.UI.Page
    {
        protected DataTable referrelsTable { get; set; }
        protected DataTable networkTreeTable { get; set; }

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
                networkTreeTable = NetworkTree_DataAccess.GetNetworkTree(member.Id);

                // Generate HTML only once during the initial load
                string generatedHtml = GenerateHTML(networkTreeTable);
                litGeneratedHtml.Text = generatedHtml;
            }
        }

        private string GenerateHTML(DataTable dataTable)
        {
            StringBuilder sb = new StringBuilder();


            string userName = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(userName);
            // Get root nodes (Position = 0)
            DataRow[] rootNodes = dataTable.Select($"Member_Id = '{member.Id}'");

            // Start the parent node
            sb.AppendLine("<ul class=\"parent-node\">");
            //sb.AppendLine("    <li>");


            string memberUserName = rootNodes[0]["Member_UserName"].ToString();
            string position = rootNodes[0]["Position"].ToString();
            string country = rootNodes[0]["CountryOfOrigin"].ToString(); // Add country data

            // Start the list item for the current node
            sb.AppendLine("<li>");
            // Generate HTML for the current node
            sb.AppendLine("<a href=\"#\" class=\"platinum\">");
            sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">{memberUserName}</span>
                        <span class=""node-detail"">
                            <label>Username: {memberUserName}</label>
                            <label>Position: {position}</label>
                            <label>Country: {country}</label>
                        </span>
                    </a>");



            sb.AppendLine("        <ul class=\"child-node\">");

            foreach (DataRow rootNode in rootNodes)
            {
                string memberId = rootNode["Member_ID"].ToString();
                // Generate HTML for the root node and its children recursively
                sb.Append(GenerateNodeHtml(dataTable, memberId));
            }
            sb.AppendLine("    </ul>");
            sb.AppendLine("</li>");
            sb.AppendLine("</ul>");


            return sb.ToString();
        }

        private string GenerateNodeHtmlTest(DataTable dataTable, string parentId)
        {
            StringBuilder sb = new StringBuilder();

            // Get the current node and its children
            DataRow[] childRows = dataTable.Select($"Parent_MemberId = '{parentId}'");
            if (childRows.Length > 0)
            {
                foreach (DataRow row in childRows)
                {
                    string memberUserName = row["Member_UserName"].ToString();
                    string position = row["Position"].ToString();
                    string country = row["CountryOfOrigin"].ToString(); // Add country data

                    // Start the list item for the current node
                    sb.AppendLine("<li>");
                    // Generate HTML for the current node
                    sb.AppendLine("<a href=\"#\" class=\"platinum\">");
                    sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">{memberUserName}</span>
                        <span class=""node-detail"">
                            <label>Username: {memberUserName}</label>
                            <label>Position: {position}</label>
                            <label>Country: {country}</label>
                        </span>
                    </a>");
                    // Check if there are child nodes for the current node
                    string memberId = row["Member_ID"].ToString();
                    string childHtml = GenerateNodeHtml(dataTable, memberId);
                    if (!string.IsNullOrEmpty(childHtml))
                    {
                        // Start the child node
                        sb.AppendLine("<ul class=\"child-node\">");
                        sb.AppendLine(childHtml);
                        // End the child node
                        sb.AppendLine("</ul>");

                    }
                    // End the list item for the current node
                    sb.AppendLine("</li>");
                }

            }

            return sb.ToString();
        }


        private string GenerateNodeHtml(DataTable dataTable, string parentId)
        {
            StringBuilder sb = new StringBuilder();

            // Get the current node and its children
            DataRow[] leftChildRows = dataTable.Select($"Parent_MemberId = '{parentId}' and Position=1");
            if (leftChildRows.Length > 0)
            {


                string memberUserName = leftChildRows[0]["Member_UserName"].ToString();
                string position = leftChildRows[0]["Position"].ToString();
                string country = leftChildRows[0]["CountryOfOrigin"].ToString(); // Add country data

                // Start the list item for the current node
                sb.AppendLine("<li>");
                // Generate HTML for the current node
                sb.AppendLine("<a href=\"#\" class=\"platinum\">");
                sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">{memberUserName}</span>
                        <span class=""node-detail"">
                            <label>Username: {memberUserName}</label>
                            <label>Position: {position}</label>
                            <label>Country: {country}</label>
                        </span>
                    </a>");
                // Check if there are child nodes for the current node
                string memberId = leftChildRows[0]["Member_ID"].ToString();
                if(Int32.Parse(leftChildRows[0]["Level"].ToString())<=3)
                {
                    string childHtml = GenerateNodeHtml(dataTable, memberId);
                    if (!string.IsNullOrEmpty(childHtml))
                    {
                        // Start the child node
                        sb.AppendLine("<ul class=\"child-node\">");
                        sb.AppendLine(childHtml);
                        // End the child node
                        sb.AppendLine("</ul>");

                    }
                }
                
                // End the list item for the current node
                sb.AppendLine("</li>");


            }
            else
            {

                // Start the list item for the current node
                sb.AppendLine("<li>");
                // Generate HTML for the current node
                sb.AppendLine("<a href=\"#\" class=\"platinum\">");
                sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">No Member</span>
                        <span class=""node-detail"">
                            <label>Username: No User</label>
                            <label>Position: NA</label>
                            <label>Country: NA</label>
                        </span>
                    </a>");
 
                
                // End the list item for the current node
                sb.AppendLine("</li>");


            }

            DataRow[] RightChildRows = dataTable.Select($"Parent_MemberId = '{parentId}' and Position=2");
            if (RightChildRows.Length > 0)
            {


                string memberUserName = RightChildRows[0]["Member_UserName"].ToString();
                string position = RightChildRows[0]["Position"].ToString();
                string country = RightChildRows[0]["CountryOfOrigin"].ToString(); // Add country data

                // Start the list item for the current node
                sb.AppendLine("<li>");
                // Generate HTML for the current node
                sb.AppendLine("<a href=\"#\" class=\"platinum\">");
                sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">{memberUserName}</span>
                        <span class=""node-detail"">
                            <label>Username: {memberUserName}</label>
                            <label>Position: {position}</label>
                            <label>Country: {country}</label>
                        </span>
                    </a>");
                // Check if there are child nodes for the current node
                string memberId = RightChildRows[0]["Member_ID"].ToString();
                if (Int32.Parse(RightChildRows[0]["Level"].ToString()) <= 3)
                {
                    string childHtml = GenerateNodeHtml(dataTable, memberId);
                    if (!string.IsNullOrEmpty(childHtml))
                    {
                        // Start the child node
                        sb.AppendLine("<ul class=\"child-node\">");
                        sb.AppendLine(childHtml);
                        // End the child node
                        sb.AppendLine("</ul>");

                    }
                }
                // End the list item for the current node
                sb.AppendLine("</li>");


            }
            else
            {

                // Start the list item for the current node
                sb.AppendLine("<li>");
                // Generate HTML for the current node
                sb.AppendLine("<a href=\"#\" class=\"platinum\">");
                sb.AppendLine($@"
                        <img class=""user-rank"" src=""Content/images/user/avatar-2.jpg"" data-toggle=""tooltip"" data-placement=""top"" title=""Platinum"">
                        <img class=""user-avatar"" src=""Content/images/user/avatar-2.jpg"">
                        <span class=""user-name"">No Member</span>
                        <span class=""node-detail"">
                            <label>Username: No User</label>
                            <label>Position: NA</label>
                            <label>Country: NA</label>
                        </span>
                    </a>");


                // End the list item for the current node
                sb.AppendLine("</li>");


            }

            return sb.ToString();
        }
    }
}