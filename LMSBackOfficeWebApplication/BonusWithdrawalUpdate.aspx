<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BonusWithdrawalUpdate.aspx.cs" Inherits="LMSBackOfficeWebApplication.BonusWithdrawalUpdate" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <div class="offcanvas pc-announcement-offcanvas offcanvas-end" tabindex="-1" id="announcement" aria-labelledby="announcementLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="announcementLabel">What's new?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <p class="text-span">Today</p>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                            <div class="badge bg-light-success f-12">Big News</div>
                            <p class="mb-0 text-muted">2 min ago</p>
                            <span class="badge dot bg-warning"></span>
                        </div>
                        <h5 class="mb-3">Forex Today</h5>
                        <p class="text-muted">Forex Today: The Dollar looks at NFP for fresh oxygen</p>
                        <img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />
                        <div class="row">
                            <div class="col-12">
                                <div class="d-grid">
                                    <a
                                        class="btn btn-outline-secondary"
                                        href="#"
                                        target="_blank">Check Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                            <div class="badge bg-light-success f-12">Big News</div>
                            <p class="mb-0 text-muted">2 min ago</p>
                            <span class="badge dot bg-warning"></span>
                        </div>
                        <h5 class="mb-3">Forex Today</h5>
                        <p class="text-muted">Forex Today: The Dollar looks at NFP for fresh oxygen</p>
                        <img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />
                        <div class="row">
                            <div class="col-12">
                                <div class="d-grid">
                                    <a
                                        class="btn btn-outline-secondary"
                                        href="#"
                                        target="_blank">Check Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <p class="text-span mt-4">Yesterday</p>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                            <div class="badge bg-light-success f-12">Big News</div>
                            <p class="mb-0 text-muted">2 min ago</p>
                            <span class="badge dot bg-warning"></span>
                        </div>
                        <h5 class="mb-3">Forex Today</h5>
                        <p class="text-muted">Forex Today: The Dollar looks at NFP for fresh oxygen</p>
                        <img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />
                        <div class="row">
                            <div class="col-12">
                                <div class="d-grid">
                                    <a
                                        class="btn btn-outline-secondary"
                                        href="#"
                                        target="_blank">Check Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                            <div class="badge bg-light-success f-12">Big News</div>
                            <p class="mb-0 text-muted">2 min ago</p>
                            <span class="badge dot bg-warning"></span>
                        </div>
                        <h5 class="mb-3">Forex Today</h5>
                        <p class="text-muted">Forex Today: The Dollar looks at NFP for fresh oxygen</p>
                        <img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />
                        <div class="row">
                            <div class="col-12">
                                <div class="d-grid">
                                    <a
                                        class="btn btn-outline-secondary"
                                        href="#"
                                        target="_blank">Check Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Header ] end -->

        <!-- [ Main Content ] start -->
        <div class="pc-container">
            <div class="pc-content vh-100">
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-12 text-center">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Bonus Withdrawal Status Update</a></li>
                                </ul>
                            </div>
                                                      <asp:Label ID="statusLabel" Visible="false" CssClass="alert alert-danger d-block py-1 mb-0 mt-2" runat="server"></asp:Label>
          
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <div class="text-center">
                    <div class="card w-75 d-inline-block m-auto">
                        <div class="card-header">
                            <h4 class="m-0 text-white">Bonus Withdrawal Status Update</h4>
                        </div>
                        <div class="card-body text-start">
                            <form method="post" id="bonusForm">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="currentDate" class="form-label">Current Date</label>
                                            <input type="text" class="form-control mw-100" id="currentDate" name="" readonly value="07/05/2024" />
                                        </div>
                                        <div class="form-group">
                                            <label for="bonusType" class="form-label">Type of Bonus</label>
                                            <select class="form-control mw-100" id="bonusType" name="bonusType">
                                                <option value="Direct Bonus">Direct Bonus</option>
                                                <option value="Network Bonus">Network Bonus</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="upload" class="form-label">Upload Excel File</label>
                                            <%--<input type="file" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" name="upload" required />--%>
                                             <asp:FileUpload ID="fileUpload" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <%--<input type="submit" name="submitWithdraw" value="Update Status" class="btn btn-tr no-hover" id="submitButton" />--%>
                                                <asp:Button ID="btnUpload" runat="server" CausesValidation="false" Text="Upload" class="btn btn-tr no-hover" OnClick="btnUpload_Click" />
                                                <asp:Button ID="btnCancel" runat="server" CausesValidation="false" Text="Cancel" class="btn btn-tr no-hover" OnClick="btnCancel_Click" />
        </div>
                                        <%--    <span class="btn btn-outline-danger m-l-10">Reset</span>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <img src="Content/images/withdraw.gif" width="170" class="img-fluid" alt="" />
                                    </div>
                                </div>
                            </form>
                            <div id="message"></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- [ Main Content ] end -->
        </div>
        <!-- [ Main Content ] end -->
        <footer class="pc-footer">
            <div class="footer-wrapper container-fluid">
                <div class="row flex-md-row flex-column">
                    <div class="col my-1">
                        <p class="m-0">
                            Copyright &#169; 2024 <a href="https://tradiix.com/" target="_blank">Tradiix.com - A Global Education & Research Ltd</a>
                        </p>
                    </div>
                    <div class="col-auto my-1">
                        <ul class="list-inline footer-link mb-0">
                            <li class="list-inline-item"><a href="#">Terms & Conditions</a></li>
                            <li class="list-inline-item"><a href="#" target="_blank">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="#" target="_blank">Support</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <script>
                document.getElementById("bonusForm").addEventListener("submit", function (event) {
                    event.preventDefault(); // Prevent the form from submitting normally

                    // Display message
                    document.getElementById("message").innerHTML = "Form submitted successfully!";
                });
            </script>
        </footer>
    </main>

</asp:Content>
