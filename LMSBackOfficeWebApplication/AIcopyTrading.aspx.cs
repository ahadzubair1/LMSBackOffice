using LMSBackofficeDAL;
using LMSBackOfficeDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace LMSBackOfficeWebApplication
{
    public partial class AIcopyTrading : System.Web.UI.Page
    {
        protected bool MembershipExist { get; set; }

        protected void AIcopyTradingLink_Click(object sender, EventArgs e)
        {
            // Server-side code to execute when the anchor is clicked
            // For example, you can perform any server-side logic here

            var member = Members_DataAccess.GetMemberInfo(HttpContext.Current.Session["Username"].ToString());


            string body = $@"<div>
            <div>
                <div>
                    <table border=0 cellpadding=0 cellspacing=0 width=100% align='center' style='max-width:800px;margin:0 auto;background:#121925'>
                        <tr>
                            <td style='border:4px solid #d014e4'>
                                <table border=0 cellpadding=25 cellspacing=0 width=100%>
                                    <tbody>
                                        <tr>
                                            <td colspan=2 align=left style=padding-top:5.25%;padding-right:5.25%;padding-bottom:5.25%;padding-left:5.25%>
                                                <p style=margin:0>
                                                    <img title='A Global Education & Research Ltd' border=0 src='https://tradiix.com/Content/images/logo-v-dark.png' style='width:150px'>
                                                <tr>
                                                    <td colspan=2 align='center' style='font-weight:700;font-size:25px;color:#d014e4;font-family:open sans,Calibri,Tahoma,sans-serif'>
                                                        AI Copy Trading Page Access
                                                <tr>
                                                    <td colspan=2>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            Dear Admin,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            User: {member.UserName}, Email: {member.Email} has accessed the AI Copy Trading page at {System.DateTime.Now.ToString()}.
                                                <tr>
                                                    <td>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            If you have any questions, please feel free to contact us.
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            Best regards,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;margin:30px 0 10px 0;font-weight:400'>
                                                            Team Tradiix.
                                                <hr style='border:0;border-top:1px solid #c7c7c7;line-height:1px;margin:25px 0 20px 0'>
                                                <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#6a7070;font-size:12px;line-height:1.33;margin:0'>
                                                    © Tradiix
                                </table>
                            <td>
                        </table>
                    </div>
                </div>
            </div>";

            UtilMethods.SendEmail("signup@tradiix.com", "User: " + member.UserName + " accessed AI Copy Trading", body);
            Response.Redirect("AICopyTrading.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                // Session has expired, redirect to login page
                Response.Redirect("~/Login.aspx");
            }

            string userName = Session["Username"].ToString();
            var member = Members_DataAccess.GetMemberInfo(userName);

            // Get membership existence and highest membership amount

            bool membershipExist = Memberships_DataAccess.CheckMembershipExist(Session["Username"].ToString());
            decimal highestMembershipAmount = Memberships_DataAccess.GetHighestMembershipAmount(member.Id);

            // Register a startup script to define the MembershipExist and HighestMembershipAmount variables in JavaScript
            ClientScript.RegisterStartupScript(this.GetType(), "membershipVariablesScript",
                "var MembershipExist = " + membershipExist.ToString().ToLower() + ";" +
                "var HighestMembershipAmount = " + highestMembershipAmount.ToString() + ";", true);
     

            //if (membershipExist && highestMembershipAmount > 50)
            //{
            //    btnContinue.Enabled = true;
            //}
            //else
            //{
            //    btnContinue.Enabled = false;
            //}


            //if (membershipExist && highestMembershipAmount >= 50)
            //{
            //    btnContinue2.Enabled = true;
            //}
            //else
            //{

            //    btnContinue2.Enabled = false;
            //}
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {

            var member = Members_DataAccess.GetMemberInfo(HttpContext.Current.Session["Username"].ToString());


            string body = $@"<div>
            <div>
                <div>
                    <table border=0 cellpadding=0 cellspacing=0 width=100% align='center' style='max-width:800px;margin:0 auto;background:#121925'>
                        <tr>
                            <td style='border:4px solid #d014e4'>
                                <table border=0 cellpadding=25 cellspacing=0 width=100%>
                                    <tbody>
                                        <tr>
                                            <td colspan=2 align=left style=padding-top:5.25%;padding-right:5.25%;padding-bottom:5.25%;padding-left:5.25%>
                                                <p style=margin:0>
                                                    <img title='A Global Education & Research Ltd' border=0 src='https://tradiix.com/Content/images/logo-v-dark.png' style='width:150px'>
                                                <tr>
                                                    <td colspan=2 align='center' style='font-weight:700;font-size:25px;color:#d014e4;font-family:open sans,Calibri,Tahoma,sans-serif'>
                                                        AI Copy Trading Page Access
                                                <tr>
                                                    <td colspan=2>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            Dear Admin,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            User: {member.UserName}, Email: {member.Email} has accessed the AI Copy Trading page at {System.DateTime.Now.ToString()}.
                                                <tr>
                                                    <td>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            If you have any questions, please feel free to contact us.
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            Best regards,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;margin:30px 0 10px 0;font-weight:400'>
                                                            Team Tradiix.
                                                <hr style='border:0;border-top:1px solid #c7c7c7;line-height:1px;margin:25px 0 20px 0'>
                                                <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#6a7070;font-size:12px;line-height:1.33;margin:0'>
                                                    © Tradiix
                                </table>
                            <td>
                        </table>
                    </div>
                </div>
            </div>";

            UtilMethods.SendEmail("signup@tradiix.com", "User: " + member.UserName + " accessed AI Copy Trading", body);
            ;
            Response.Redirect("https://my.startrader.com/register/index?invitationCode=ZNGHAJG5&language=en");
        }


        protected void btnContinue2_Click(object sender, EventArgs e)
        {

            var member = Members_DataAccess.GetMemberInfo(HttpContext.Current.Session["Username"].ToString());


            string body = $@"<div>
            <div>
                <div>
                    <table border=0 cellpadding=0 cellspacing=0 width=100% align='center' style='max-width:800px;margin:0 auto;background:#121925'>
                        <tr>
                            <td style='border:4px solid #d014e4'>
                                <table border=0 cellpadding=25 cellspacing=0 width=100%>
                                    <tbody>
                                        <tr>
                                            <td colspan=2 align=left style=padding-top:5.25%;padding-right:5.25%;padding-bottom:5.25%;padding-left:5.25%>
                                                <p style=margin:0>
                                                    <img title='A Global Education & Research Ltd' border=0 src='https://tradiix.com/Content/images/logo-v-dark.png' style='width:150px'>
                                                <tr>
                                                    <td colspan=2 align='center' style='font-weight:700;font-size:25px;color:#d014e4;font-family:open sans,Calibri,Tahoma,sans-serif'>
                                                        AI Copy Trading Page Access
                                                <tr>
                                                    <td colspan=2>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            Dear Admin,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;font-weight:400;line-height:1;margin:0 0 20px 0'>
                                                            User: {member.UserName}, Email: {member.Email} has accessed the AI Copy Trading page at {System.DateTime.Now.ToString()}.
                                                <tr>
                                                    <td>
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            If you have any questions, please feel free to contact us.
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;font-weight:400'>
                                                            Best regards,
                                                        <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#fff;font-size:18px;line-height:1.5;margin:30px 0 10px 0;font-weight:400'>
                                                            Team Tradiix.
                                                <hr style='border:0;border-top:1px solid #c7c7c7;line-height:1px;margin:25px 0 20px 0'>
                                                <p style='font-family:open sans,Calibri,Tahoma,sans-serif;color:#6a7070;font-size:12px;line-height:1.33;margin:0'>
                                                    © Tradiix
                                </table>
                            <td>
                        </table>
                    </div>
                </div>
            </div>";

            UtilMethods.SendEmail("signup@tradiix.com", "User: " + member.UserName + " accessed AI Copy Trading", body);
            ;
            Response.Redirect("https://my.fxlvls.com/register?referral=15");
        }

        //protected void chk1_CheckedChanged(object sender, EventArgs e)
        //{
        //    if(chk1.Checked)
        //    {
        //        string userName = Session["Username"].ToString();
        //        var member = Members_DataAccess.GetMemberInfo(userName);
        //        bool membershipExist = Memberships_DataAccess.CheckMembershipExist(Session["Username"].ToString());
        //        decimal highestMembershipAmount = Memberships_DataAccess.GetHighestMembershipAmount(member.Id);

        //        if (membershipExist && highestMembershipAmount > 50)
        //            btnContinue.Enabled = true;
        //    }
        //}

        //protected void chk2_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (chk2.Checked)
        //    {
        //        string userName = Session["Username"].ToString();
        //        var member = Members_DataAccess.GetMemberInfo(userName);
        //        bool membershipExist = Memberships_DataAccess.CheckMembershipExist(Session["Username"].ToString());
        //        decimal highestMembershipAmount = Memberships_DataAccess.GetHighestMembershipAmount(member.Id);

        //        if (membershipExist && highestMembershipAmount > 50)
        //        btnContinue2.Enabled = true;
        //    }

        //}
    }
}