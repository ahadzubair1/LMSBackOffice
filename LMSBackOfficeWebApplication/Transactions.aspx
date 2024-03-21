﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Transactions.aspx.cs" Inherits="LMSBackOfficeWebApplication.Transactions" %>

<asp:Content ID="TransactionContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!-- [ Main Content ] start -->
        <div class="pc-container">
            <div class="pc-content">
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-12">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Transactions</a></li>
                                </ul>
                            </div>
                            <div class="col-md-12">
                                <div class="page-header-title">
                                    <h2 class="mb-0">Transactions</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <div class="col-md-8 order-md-1">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="keyword">Keyword</label>
                            <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2 mb-3">
                              <label for="button"></label>
 <button class="btn btn-primary btn-lg btn-block" type="submit">Search</button>
 </div>
                    </div>
                   
                    
                    
                </div>
                <div class="tab-content pb-5" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                        <div class="card">
                            <div class="card-body">
                                <table id="" class="table table-striped" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>Transaction Code</th>
                                            <th>Transaction_Type</th>
                                            <th>Amount</th>
                                            <%-- <th>Receiver Address</th>--%>
                                            <th>Currency</th>
                                            <th>Fee</th>
                                            <th>Transaction Date</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%if (dt != null && dt.Rows.Count > 0)
                                            { %>

                                        <%foreach (System.Data.DataRow dr in this.dt.Rows)
                                            {%>
                                        <tr>
                                            <%foreach (System.Data.DataColumn dc in this.dt.Columns)
                                                {%>
                                            <td>
                                                <%=dr[dc.ColumnName]%>
                                            </td>
                                            <%} %>
                                        </tr>
                                        <%} %>

                                        <%} %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- [ Main Content ] end -->
        </div>
     <!-- [ Main Content ] end -->
        <footer class="pc-footer">
            <div class="footer-wrapper container-fluid">
                <div class="row">
                    <div class="col my-1">
                        <p class="m-0">
                            Copyright &#169; 2024 <a href="https://tradiix.com/" target="_blank">Tradiix.com</a>
                        </p>
                    </div>
                    <div class="col-auto my-1">
                        <ul class="list-inline footer-link mb-0">
                            <li class="list-inline-item"><a href="">Terms & Conditions</a></li>
                            <li class="list-inline-item"><a href="" target="_blank">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="" target="_blank">Support</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </main>
</asp:Content>
