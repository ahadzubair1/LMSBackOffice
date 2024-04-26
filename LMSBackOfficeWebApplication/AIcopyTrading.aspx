<%@ Page Title="Tradix : A Global Education & Research Ltd" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AIcopyTrading.aspx.cs" Inherits="LMSBackOfficeWebApplication.AIcopyTrading" %>

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
            <div class="pc-content">
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <div class="page-header-title">
                                    <h2 class="mb-0">AI Copy Trading</h2>
                                </div>
                            </div>
                            <div class="col-md-6 text-end">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">AI Copy Trading</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->

                <ul class="nav nav-tabs mb-3" id="t_tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active text-uppercase" id="explorer-tab" data-bs-toggle="tab" href="#explorer" role="tab" aria-controls="explorer" aria-selected="true" style="font-weight:bold">Explorer AI Copy Trading</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-uppercase" id="pioneer-tab" data-bs-toggle="tab" href="#pioneer" role="tab" aria-controls="pioneer" aria-selected="false" style="font-weight:bold">Pioneer AI Copy Trading</a>
                    </li>
                    <li class="nav-item">
                        <%--<a class="nav-link text-uppercase" id="elite-tab" data-bs-toggle="tab" href="#elite" role="tab" aria-controls="elite" aria-selected="false">Elite AI Copy Trading</a>--%>
                        <a class="nav-link text-uppercase cursor-pointer" style="font-weight:bold">Elite AI Copy Trading <span class="badge bg-primary-t">Coming Up</span></a>
                    </li>
                    <li class="nav-item">
                        <%--<a class="nav-link text-uppercase" id="infinite-tab" data-bs-toggle="tab" href="#infinite" role="tab" aria-controls="infinite" aria-selected="false">Infinite AI Copy Trading</a>--%>
                        <a class="nav-link text-uppercase cursor-pointer" style="font-weight:bold">Infinite AI Copy Trading <span class="badge bg-primary-t">Coming Up</span></a>
                    </li>
                </ul>


                <div class="tab-content pb-5" id="myTabContent">
                    <div class="tab-pane fade show active" id="explorer" role="tabpanel" aria-labelledby="explorer-tab">
                        <div class="card">
                            <div class="card-body">
                                <div class="card p-4 mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-3">
                                            <img src="Content/images/Copy-Trading/Explorer-EA.png" class="img-fluid" alt="" />
                                        </div>
                                        <div class="col-md-4 d-flex flex-column">
                                            <div class="card h-100 mb-3">
                                                <div class="card-body">
                                                    <h5>Trading Statistics (Medium):</h5>
                                                    <div class="f-list">
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                        <span>Average Max Drawdown<span>3.82%</span></span>
                                                        <span>Equity Required<span>20%</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Master Trader Details:</h5>
                                                    <p class="m-0">The Explorer EA is a revolutionary trading algorithm that has been actively profiting from the market for over 12 years. It is designed and managed by one of our "Master Traders" and uses concepts such as breakouts, false breakouts, pattern recognition and time based exits.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Risk Settings:</h5>
                                                    <h6 class="font-bold">Low</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>10%</span></span>
                                                        <span>Average Annual Growth<span>28%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Medium</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>20%</span></span>
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Aggressive</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>30%</span></span>
                                                        <span>Average Annual Growth<span>84%*</span></span>
                                                    </div>
                                                    <p class="small m-0">* Excluding Compounding</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div onclick="AIcopyTradingLink_Click" runat="server" id="divtest" class="text-end pt-4 d-flex align-items-center justify-content-end gap-3">
                                        <div>
                                            <input id="agreement1" type="checkbox" name="agreement" value="" onchange="toggleButton()" />
                                            <%--<asp:CheckBox ID="chk1" runat="server" CausesValidation="false" AutoPostBack="True" OnCheckedChanged="chk1_CheckedChanged"  />--%>
                                            <label for="agreement1">Yes, I have read</label>
                                        </div>
                                        <%--<a id="continueLink1" class="btn btn-primary continueButton disabled" >Continue1</a>--%>
                                        <asp:Button ID="btnContinue" Text="Continue" class="btn btn-primary continueButton disabled" CausesValidation="false" runat="server" OnClick="btnContinue_Click"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pioneer" role="tabpanel" aria-labelledby="pioneer-tab">
                        <div class="card">
                            <div class="card-body">
                                <div class="card p-4 mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-3">
                                            <img src="Content/images/Copy-Trading/Pioneer-EA.png" class="img-fluid" alt="" />
                                        </div>
                                        <div class="col-md-4 d-flex flex-column">
                                            <div class="card h-100 mb-3">
                                                <div class="card-body">
                                                    <h5>Trading Statistics (Medium):</h5>
                                                    <div class="f-list">
                                                        <span>Average Annual Growth<span>108%*</span></span>
                                                        <span>Average Max Drawdown<span>10%</span></span>
                                                        <span>Equity Required<span>1%</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Master Trader Details:</h5>
                                                    <p class="m-0">
                                                        The Pioneer EA master trader makes use of ‘The Algo’ which is a proprietary trading software that uses an algorithmic trading approach, only trading during specific times of day, at certain algorithmic price levels and focuses on trading indices.
                                                    </p><br />
                                                    <p style="color:maroon">* Note: The statistics shown are based on recent-past performance and in no way act as a guarantee to future results and an independent financial advisor should be consulted. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Risk Settings:</h5>
                                                    <h6 class="font-bold">Low</h6>
                                                    <div class="f-list">
                                                        <span>Risk<span>0.5%</span></span>
                                                        <span>Average Annual Growth<span>54%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Medium</h6>
                                                    <div class="f-list">
                                                        <span>Risk<span>1%</span></span>
                                                        <span>Average Annual Growth<span>108%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Aggressive</h6>
                                                    <div class="f-list">
                                                        <span>Risk<span>2%</span></span>
                                                        <span>Average Annual Growth<span>216%*</span></span>
                                                    </div>
                                                    <p class="small m-0">* Excluding Compounding</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-end pt-4 d-flex align-items-center justify-content-end gap-3">
                                        <div>
                                            <input id="agreement2" type="checkbox" name="agreement" value="" />
                                            <label for="agreement2">Yes, I have read</label>
                                        </div>
                                        <%--<asp:CheckBox ID="chk2" runat="server" CausesValidation="false" AutoPostBack="True" OnCheckedChanged="chk2_CheckedChanged" />--%>
                                           
                                        <%--<a id="continueLink2"  class="btn btn-primary continueButton disabled">Continue</a>--%>
                                      <asp:Button ID="btnContinue2" Text="Continue" class="btn btn-primary continueButton disabled" CausesValidation="false" runat="server" OnClick="btnContinue2_Click"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="elite" role="tabpanel" aria-labelledby="elite-tab">
                        <div class="card">
                            <div class="card-body">
                                <div class="card p-4 mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-3">
                                            <img src="Content/images/Copy-Trading/Elite-EA.png" class="img-fluid" alt="" />
                                        </div>
                                        <div class="col-md-4 d-flex flex-column">
                                            <div class="card h-100 mb-3">
                                                <div class="card-body">
                                                    <h5>Trading Statistics (Medium):</h5>
                                                    <div class="f-list">
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                        <span>Average Max Drawdown<span>3.82%</span></span>
                                                        <span>Equity Required<span>20%</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Master Trader Details:</h5>
                                                    <p>The Explorer EA is a revolutionary trading algorithm that has been actively profiting from the market for over 12 years. It is designed and managed by one of our "Master Traders" and uses concepts such as breakouts, false breakouts, pattern recognition and time based exits.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Risk Settings:</h5>
                                                    <h6 class="font-bold">Low</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>10%</span></span>
                                                        <span>Average Annual Growth<span>28%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Medium</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>20%</span></span>
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Aggressive</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>30%</span></span>
                                                        <span>Average Annual Growth<span>84%*</span></span>
                                                    </div>
                                                    <p class="small">* Excluding Compounding</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-end pt-4 d-flex align-items-center justify-content-end gap-3">
                                        <div>
                                            <input id="agreement3" type="checkbox" name="agreement" value="" />
                                            <label for="agreement3">Yes, I have read</label>
                                        </div>
                                        <a href="https://my.startrader.com/register/index?invitationCode=ZNGHAJG5&language=en" target="_blank" class="btn btn-primary">Continue</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="infinite" role="tabpanel" aria-labelledby="infinite-tab">
                        <div class="card">
                            <div class="card-body">
                                <div class="card p-4 mb-4">
                                    <div class="row g-3">
                                        <div class="col-md-3">
                                            <img src="Content/images/Copy-Trading/Infinite-EA.png" class="img-fluid" alt="" />
                                        </div>
                                        <div class="col-md-4 d-flex flex-column">
                                            <div class="card h-100 mb-3">
                                                <div class="card-body">
                                                    <h5>Trading Statistics (Medium):</h5>
                                                    <div class="f-list">
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                        <span>Average Max Drawdown<span>3.82%</span></span>
                                                        <span>Equity Required<span>20%</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Master Trader Details:</h5>
                                                    <p>The Explorer EA is a revolutionary trading algorithm that has been actively profiting from the market for over 12 years. It is designed and managed by one of our "Master Traders" and uses concepts such as breakouts, false breakouts, pattern recognition and time based exits.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h5>Risk Settings:</h5>
                                                    <h6 class="font-bold">Low</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>10%</span></span>
                                                        <span>Average Annual Growth<span>28%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Medium</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>20%</span></span>
                                                        <span>Average Annual Growth<span>56%*</span></span>
                                                    </div>
                                                    <h6 class="font-bold">Aggressive</h6>
                                                    <div class="f-list">
                                                        <span>Equity Required<span>30%</span></span>
                                                        <span>Average Annual Growth<span>84%*</span></span>
                                                    </div>
                                                    <p class="small text-gray-500">* Excluding Compounding</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-end pt-4 d-flex align-items-center justify-content-end gap-3">
                                        <div>
                                            <input id="agreement4" type="checkbox" name="agreement" value="" />
                                            <label for="agreement4">Yes, I have read</label>
                                        </div>
                                        <a href="https://my.startrader.com/register/index?invitationCode=ZNGHAJG5&language=en" target="_blank" class="btn btn-primary">Continue</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ Main Content ] end -->
        </div>
        </div>
        <!-- [ Main Content ] end -->
        <footer class="pc-footer">
            <div class="footer-wrapper container-fluid">
                <div class="row flex-md-row flex-column">
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
        <div class="modal fade modal-animate anim-blur show" id="buyMembership" tabindex="-1" aria-labelledby="membershipExpiryeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="color: #000 !important;">
                    <div class="modal-header">
                        <h1 class="modal-title font-bold fs-4" id="membershipExpiryeModalLabel">
Ineligible Membership</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>The existing membership does not qualify for accessing the link.</p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Attach click event listener to continue link
            document.getElementById("continueLink").addEventListener("click", function (event) {
                event.preventDefault(); // Prevent default link behavior

                // Check if membership exists
                if (MembershipExist && HighestMembershipAmount>=50) {

                    $.ajax({
                        type: 'POST',
                        url: window.location.pathname + '/AICopyTradingLink_Click',
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            // Handle success
                            // You can optionally remove the 'disabled' class from the button here
                            //button.classList.remove('disabled');
                        },
                        error: function (xhr, status, error) {
                            // Handle error
                        }
                    });

                    // Redirect to a new link
                    window.location.href = 'https://my.startrader.com/register/index?invitationCode=ZNGHAJG5&language=en';
                    
                } else {
                    // Display the modal
                    var modal = document.getElementById('buyMembership');
                    modal.style.display = 'block';
                    var closeButtons = document.getElementsByClassName('btn-close');
                    for (var i = 0; i < closeButtons.length; i++) {
                        closeButtons[i].addEventListener('click', function () {
                            var modal = this.closest('.modal'); // Assuming modal is a parent element of the close button
                            if (modal) {
                                modal.style.display = 'none';
                            }
                        });
                    }

                }
            });
            document.getElementById("continueLink2").addEventListener("click", function (event) {
                event.preventDefault(); // Prevent default link behavior

                // Check if membership exists
                if (MembershipExist && HighestMembershipAmount >= 750) {

                    $.ajax({
                        type: 'POST',
                        url: window.location.pathname + '/AICopyTradingLink_Click',
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            // Handle success
                            // You can optionally remove the 'disabled' class from the button here
                            button.classList.remove('disabled');
                        },
                        error: function (xhr, status, error) {
                            // Handle error
                        }
                    });

                    // Redirect to a new link
                    window.location.href = 'https://my.fxlvls.com/register?referral=15';
                } else {
                    // Display the modal
                    var modal = document.getElementById('buyMembership');
                    modal.style.display = 'block';
                    var closeButtons = document.getElementsByClassName('btn-close');
                    for (var i = 0; i < closeButtons.length; i++) {
                        closeButtons[i].addEventListener('click', function () {
                            var modal = this.closest('.modal'); // Assuming modal is a parent element of the close button
                            if (modal) {
                                modal.style.display = 'none';
                            }
                        });
                    }

                }
            });
        });
        const buttons = document.querySelectorAll('.continueButton');
        buttons.forEach(button => {
            const checkbox = button.previousElementSibling.querySelector('input[type="checkbox"]');
            if (checkbox) {
                checkbox.addEventListener('change', function () {
                    toggleButton(checkbox, button);
                   
                });
            } else {
                console.error('Checkbox not found for button:', button);
            }
        });

        function toggleButton(checkbox, button) {
            if (checkbox.checked) {
                
                if (HighestMembershipAmount>50)
                button.classList.remove('disabled');
            } else {
                button.classList.add('disabled');
            }
        }

        function toggleButton1(checkbox, button) {
            if (checkbox.checked) {

                // Assuming HighestMembershipAmount is a variable accessible in JavaScript
                if (HighestMembershipAmount > 50) {
                           button.classList.remove('disabled');
                    // If condition is met, make an AJAX call to the server-side method
                    $.ajax({
                        type: 'POST',
                        url: window.location.pathname + '/AICopyTradingLink_Click',
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            // Handle success
                            // You can optionally remove the 'disabled' class from the button here
                            button.classList.remove('disabled');
                        },
                        error: function (xhr, status, error) {
                            // Handle error
                        }
                    });
                }
            } else {
                button.classList.add('disabled');
            }
        }

        
    </script>
</asp:Content>
