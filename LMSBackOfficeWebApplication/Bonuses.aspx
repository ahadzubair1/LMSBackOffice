<%@ Page Title="Tradix : Learning Management BackOffice System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bonuses.aspx.cs" Inherits="LMSBackOfficeWebApplication.Bonuses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /* Custom Styles */
        .custom-pagination {
            margin-top: 20px; /* Adjust as needed */
            text-align: center;
        }

        /* Alternate Row Color */
        .table tbody tr:nth-of-type(even) {
            background-color: #f8f9fa; /* Adjust even row background color as needed */
        }

        .table tbody tr:nth-of-type(odd) {
            background-color: #ffffff; /* Adjust odd row background color as needed */
        }

        /* Hover Effect */
        .table tbody tr:hover {
            background-color: #e9ecef; /* Adjust hover row background color as needed */
        }
    </style>
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
                <!-- Banner -->
                <div class="banner bonuses">
                    <div class="banner-caption" style="display: flex; flex-direction: row; align-items: center;">
                        <i class="fas fa-haykal bonus-icon" style="margin-right: 0.5rem;"></i>
                        <h4 id="bonusTitle" title="Network Bonus" class="text-white mt-3" style="margin-top: 0;">Network Bonus</h4>
                    </div>

                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            // Function to update banner caption
                            function updateBannerCaption(title) {
                                document.getElementById("bonusTitle").textContent = title;
                            }

                            // Function to handle tab click event
                            function handleTabClick(event) {
                                var tabId = event.target.id;
                                if (tabId === "network-bonus-tab") {

                                    updateBannerCaption("Network Bonus" + " : <%= headerTitleNetworkBonusAmount %>");
                                }
                                else {
                                    updateBannerCaption("Direct Bonus" + " : <%= headerTitleDirectBonusAmount %>");
                                }
                            }

                            // Get the tab elements and add click event listeners
                            document.getElementById("network-bonus-tab").addEventListener("click", handleTabClick);
                            document.getElementById("direct-bonus-tab").addEventListener("click", handleTabClick);

                            // Initial call to set the banner caption based on the default active tab
                            var defaultTabId = document.querySelector(".nav-link.active").id;
                            if (defaultTabId === "network-bonus-tab") {

                                updateBannerCaption("Network Bonus" + " - <%= headerTitleNetworkBonusAmount %>");
                            }
                            else {
                                updateBannerCaption("Direct Bonus" + " - <%= headerTitleDirectBonusAmount %>");
                            }
                        });
                    </script>


                    <div class="leaf">
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Pictures-Collage-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Clip-Art-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Green-Leaves-PNG-File.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Transparent-Autumn-Leaves-Falling-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Realistic-Autumn-Fall-Leaves-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                    </div>

                    <div class="leaf leaf1">
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Pictures-Collage-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Clip-Art-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Green-Leaves-PNG-File.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Transparent-Autumn-Leaves-Falling-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Realistic-Autumn-Fall-Leaves-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                    </div>

                    <div class="leaf leaf2">
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Pictures-Collage-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Autumn-Fall-Leaves-Clip-Art-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Green-Leaves-PNG-File.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Transparent-Autumn-Leaves-Falling-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Realistic-Autumn-Fall-Leaves-PNG.png" height="75" width="75">
                        </div>
                        <div>
                            <img src="Content/images/Fall-Autumn-Leaves-Transparent-PNG.png" height="75" width="75">
                        </div>
                    </div>
                    <div class="bg-line">
                        <img src="Content/images/wave.svg" alt="Line">
                        <img src="Content/images/wave.svg" alt="Line">
                    </div>
                </div>
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <div class="page-header-title">
                                    <h2 class="mb-0">Bonuses</h2>
                                </div>
                                <div>
                                    <asp:Label ID="statusLabel" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="col-md-6 text-end">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Bonuses</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <ul class="nav nav-tabs mb-3" id="t_tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active text-uppercase" id="network-bonus-tab" data-bs-toggle="tab" href="#network-bonus" role="tab" aria-controls="network-bonus" aria-selected="true">Network Bonus</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-uppercase" id="direct-bonus-tab" data-bs-toggle="tab" href="#direct-bonus" role="tab" aria-controls="direct-bonus" aria-selected="false">Direct Bonus</a>
                    </li>
                </ul>
                <div class="card mb-5 pb-5">
                    <div class="card-body">
                        <div class="tab-content pb-5" id="myTabContent">
                            <div id="kycmessage" runat="server" class="alert alert-secondary small py-1" role="alert" style="color: #dd12ec"><i class="ti ti-alert-circle"></i>&nbsp;<strong>KYC Verification is Must Required for Bonus Withdrawal</strong></div>
                            <div class="tab-pane fade show active" id="network-bonus" role="tabpanel" aria-labelledby="network-bonus-tab">
                                <div class="table-responsive">
                                    <asp:GridView ID="gvNetworkBonus" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_Id" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvNetworkBonus_PageIndexChanging" Width="100%" CssClass="table table-striped table-hover">
                                        <Columns>
                                            <asp:BoundField DataField="LeftNetworkVolume" HeaderText="Left Network Volume" />
                                            <asp:BoundField DataField="RightNetworkVolume" HeaderText="Right Network Volume" />
                                            <asp:BoundField DataField="BonusVolume" HeaderText="Bonus Volume" />
                                            <asp:BoundField DataField="BonusAmount" HeaderText="Bonus Amount" />
                                            <asp:BoundField DataField="Bonus Date" HeaderText="Bonus Date" />
                                            <asp:BoundField DataField="BonusNumber" HeaderText="Bonus Number" />
                                        </Columns>
                                        <PagerStyle CssClass="custom-pagination" />
                                    </asp:GridView>
                                    <div class="bonus-withdraw d-flex align-items-center gap-3 flex-wrap">
                                        <button class="btn btn-tr no-hover d-flex align-items-center gap-2" data-bs-toggle="modal" data-bs-target="#networkbonusmodal" role="button" type="button"><i class="fas fa-money-check-alt"></i>Withdraw</button>
                                        <span class="text-dribbble">Note: The maximum withdrawal limit for a day is 5000 USD. 3% Fees would be deducted for each withdrawal.</span>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="direct-bonus" role="tabpanel" aria-labelledby="direct-bonus-tab">
                                <asp:GridView ID="gvDirectBonus" runat="server" AutoGenerateColumns="False" DataKeyNames="Direct_Bonus_ID" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvDirectBonus_PageIndexChanging" Width="100%" CssClass="table table-bordered table-hover">
                                    <Columns>
                                        <asp:BoundField DataField="Bonus_Amount" HeaderText="Bonus Amount" />
                                        <asp:BoundField DataField="Is_Active" HeaderText="Is Active" />
                                        <asp:BoundField DataField="Bonus Date" HeaderText="Bonus Date" />

                                    </Columns>
                                    <PagerStyle CssClass="custom-pagination" />
                                </asp:GridView>
                                                          <div class="bonus-withdraw d-flex align-items-center gap-3 flex-wrap">
                              <button class="btn btn-tr no-hover d-flex align-items-center gap-2" data-bs-toggle="modal" data-bs-target="#directbonusmodal" role="button" type="button"><i class="fas fa-money-check-alt"></i>Withdraw</button>
                              <span class="text-dribbble">Note: The maximum withdrawal limit for a day is 5000 USD. 3% Fees would be deducted for each withdrawal.</span>
                          </div>
                            </div>
<%--                            <div class="bonus-withdraw d-flex align-items-center gap-3 flex-wrap">
                                <button class="btn btn-tr no-hover d-flex align-items-center gap-2" data-bs-toggle="modal" data-bs-target="#exampleModal" role="button" type="button"><i class="fas fa-money-check-alt"></i>Initiate Withdraw</button>
                                <span class="text-dribbble" ><font color="#DD12EC"><strong>Note: The maximum withdrawal limit for a day is 5000 USD. 3% Fees would be deducted for each withdrawal.</strong></font></span>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
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
                            <li class="list-inline-item"><a href="">Terms & Conditions</a></li>
                            <li class="list-inline-item"><a href="" target="_blank">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="" target="_blank">Support</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <div class="pct-c-btn">
            <a href="#" data-bs-toggle="offcanvas" data-bs-target="#offcanvas_pc_layout">
                <i class="ph-duotone ph-gear-six"></i>
            </a>
        </div>
        <div class="offcanvas border-0 pct-offcanvas offcanvas-end" tabindex="-1" id="offcanvas_pc_layout">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title">Settings</h5>
                <button type="button" class="btn btn-icon btn-link-danger" data-bs-dismiss="offcanvas" aria-label="Close">
                    <i
                        class="ti ti-x"></i>
                </button>
            </div>
            <div class="pct-body customizer-body">
                <div class="offcanvas-body py-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="pc-dark">
                                <h6 class="mb-1">Theme Mode</h6>
                                <p class="text-muted text-sm">Choose light or dark mode or Auto</p>
                                <div class="row theme-color theme-layout">
                                    <div class="col-4">
                                        <div class="d-grid">
                                            <button class="preset-btn btn active" data-value="true" onclick="layout_change('light');" data-bs-toggle="tooltip" title="Light">
                                                <svg class="pc-icon text-warning">
                                                    <use xlink:href="#custom-sun-1"></use>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="d-grid">
                                            <button class="preset-btn btn" data-value="false" onclick="layout_change('dark');" data-bs-toggle="tooltip" title="Dark">
                                                <svg class="pc-icon">
                                                    <use xlink:href="#custom-moon"></use>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="d-grid">
                                            <button class="preset-btn btn" data-value="default" onclick="layout_change_default();"
                                                data-bs-toggle="tooltip" title="Automatically sets the theme based on user's operating system's color scheme.">
                                                <span class="pc-lay-icon d-flex align-items-center justify-content-center">
                                                    <i class="ph-duotone ph-cpu"></i>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <h6 class="mb-1">Theme Contrast</h6>
                            <p class="text-muted text-sm">Choose theme contrast</p>
                            <div class="row theme-contrast">
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn" data-value="true" onclick="layout_theme_contrast_change('true');" data-bs-toggle="tooltip" title="True">
                                            <svg class="pc-icon">
                                                <use xlink:href="#custom-mask"></use>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn active" data-value="false" onclick="layout_theme_contrast_change('false');" data-bs-toggle="tooltip" title="False">
                                            <svg class="pc-icon">
                                                <use xlink:href="#custom-mask-1-outline"></use>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <h6 class="mb-1">Custom Theme</h6>
                            <p class="text-muted text-sm">Choose your primary theme color</p>
                            <div class="theme-color preset-color">
                                <a href="#!" data-bs-toggle="tooltip" title="Blue" class="active" data-value="preset-1"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Indigo" data-value="preset-2"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Purple" data-value="preset-3"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Pink" data-value="preset-4"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Red" data-value="preset-5"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Orange" data-value="preset-6"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Yellow" data-value="preset-7"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Green" data-value="preset-8"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Teal" data-value="preset-9"><i class="ti ti-checks"></i></a>
                                <a href="#!" data-bs-toggle="tooltip" title="Cyan" data-value="preset-10"><i class="ti ti-checks"></i></a>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <h6 class="mb-1">Sidebar Caption</h6>
                            <p class="text-muted text-sm">Sidebar Caption Hide/Show</p>
                            <div class="row theme-color theme-nav-caption">
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn-img btn active" data-value="true" onclick="layout_caption_change('true');" data-bs-toggle="tooltip" title="Caption Show">
                                            <img src="" alt="img" class="img-fluid">
                                        </button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn-img btn" data-value="false" onclick="layout_caption_change('false');" data-bs-toggle="tooltip" title="Caption Hide">
                                            <img src="" alt="img" class="img-fluid">
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="pc-rtl">
                                <h6 class="mb-1">Theme Layout</h6>
                                <p class="text-muted text-sm">LTR/RTL</p>
                                <div class="row theme-color theme-direction">
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn active" data-value="false" onclick="layout_rtl_change('false');" data-bs-toggle="tooltip" title="LTR">
                                                <img src="" alt="img" class="img-fluid">
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn" data-value="true" onclick="layout_rtl_change('true');" data-bs-toggle="tooltip" title="RTL">
                                                <img src="" alt="img" class="img-fluid">
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item pc-box-width">
                            <div class="pc-container-width">
                                <h6 class="mb-1">Layout Width</h6>
                                <p class="text-muted text-sm">Choose Full or Container Layout</p>
                                <div class="row theme-color theme-container">
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn active" data-value="false" onclick="change_box_container('false')" data-bs-toggle="tooltip" title="Full Width">
                                                <img src="" alt="img" class="img-fluid">
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn" data-value="true" onclick="change_box_container('true')" data-bs-toggle="tooltip" title="Fixed Width">
                                                <img src="" alt="img" class="img-fluid">
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="list-group-item">
                            <div class="d-grid">
                                <asp:GridView ID="gvwBonusType" runat="server"></asp:GridView>
                                <button class="btn btn-light-danger" id="layoutreset">Reset Layout</button>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </main>

        <div class="modal fade modal-animate anim-blur" id="networkbonusmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title font-bold fs-4" id="exampleModalLabel">Initiate Withdrawal</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
               <script type="text/javascript">


                   function validateAmount(source, args) {
                       var amountTextBox = document.getElementById('<%= txtAmount_network.ClientID %>');
                       var amount = parseFloat(amountTextBox.value) * 1.0;
                       var amountAfterFees = parseFloat(amountTextBox.value) * 1.03;
                       var maxWithdrawalLimit = <%= MaxWithdrawalLimit %>;
                       var minimumWithdrawalLimit = <%= minWithdrawlLimit %>;
                       var customVariable = <%= networkWalletBalance %>;

                      
                       args.IsValid = false;
                       //!isNaN(amount) && amount >= minimumWithdrawalLimit && amount <= maxWithdrawalLimit && amountAfterFees <= customVariable;
    }
               </script>

<script type="text/javascript">
    function calculateFees() {
        var amount = document.getElementById('<%= txtAmount_network.ClientID %>').value;
        var fees = parseFloat(amount) * 0.03; // Calculating 3% of the amount
        document.getElementById('<%= txtFees_network.ClientID %>').value = fees.toFixed(2); // Setting fees in txtFees_network with 2 decimal places
    }
</script>
                <div class="modal-body">
                    <p class="m-0">2nd Modal Enter amount you want to withdraw to your crypto wallet.</p>
                    <p class="text-dribbble">Note: The maximum withdrawal limit for a day is 5000 USD. 3% Fees would be deducted for each withdrawal.</p>
                    <div class="col-md-12 form-group">
                        <label class="labels">Amount to withdraw</label>
                        <asp:TextBox oninput="calculateFees()"    ID="txtAmount_network"  ValidationGroup="withdrawalValidation_network" MaxLength="10" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtAmount_network" ErrorMessage="Amount is required" runat="server" ValidationGroup="withdrawalValidation_network"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtAmount_network" ErrorMessage="Amount should be greater than 50 and less than 5000" MinimumValue="50" MaximumValue="5000" Type="Integer" runat="server" ValidationGroup="withdrawalValidation"></asp:RangeValidator>


                    </div>
                    <div class="col-md-12 form-group">
                        <label class="labels">Fees</label>
                        <asp:TextBox ID="txtFees_network" Enabled="false" MaxLength="10" runat="server"></asp:TextBox>
                    </div>


                    <div class="col-md-12 form-group">
                        <label class="labels">Crypto Wallet Address</label>
                        <asp:TextBox ID="txtCryptoAddress_network"   MaxLength="100" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtCryptoAddress_network" ErrorMessage="Crypto Wallet Address is required" runat="server" ValidationGroup="withdrawalValidation_network"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btncancel_network" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                    <asp:Button runat="server" ID="btnwithdraw_network"   class="btn btn-tr no-hover" CausesValidation="true"  ValidationGroup="withdrawalValidation_network"  Text="Withdraw Now"  OnClick="btnWithDraw_network_Click" />
                </div>
            </div>
        </div>
    </div>
   
    <div class="modal fade modal-animate anim-blur" id="directbonusmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title font-bold fs-4" id="exampleModalLabel">Initiate Withdrawal</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
               <script type="text/javascript">
                   //function validateOnClientClick() {
                   //    Page_ClientValidate(); // This will trigger client-side validation of all validation controls
                   //    alert(Page_IsValid);
                   //    // Check if any validation failed
                   //    if (Page_IsValid) {
                   //        // If validation passed, return true to allow postback
                   //        return true;
                   //    } else {
                   //        // If validation failed, return false to prevent postback
                   //        return false;
                   //    }
                   //}

                   function validateAmount(source, args) {
                       var amountTextBox = document.getElementById('<%= txtAmount_direct.ClientID %>');
                       var amount = parseFloat(amountTextBox.value) * 1.0;
                       var amountAfterFees = parseFloat(amountTextBox.value) * 1.03;
        var maxWithdrawalLimit = <%= MaxWithdrawalLimit %>;
        var minimumWithdrawalLimit = <%= minWithdrawlLimit %>;
        var customVariable = <%= directWalletBalance %>;

                       alert('amount');
                       //alert(amount);
                       //alert(maxWithdrawalLimit);
                       //alert(minimumWithdrawalLimit)
                       //alert( customVariable)
                       args.IsValid = false;
                       //!isNaN(amount) && amount >= minimumWithdrawalLimit && amount <= maxWithdrawalLimit && amountAfterFees <= customVariable;
    }
               </script>

<script type="text/javascript">
    function calculateFees() {
        var amount = document.getElementById('<%= txtAmount_direct.ClientID %>').value;
        var fees = parseFloat(amount) * 0.03; // Calculating 3% of the amount
        document.getElementById('<%= txtFees_direct.ClientID %>').value = fees.toFixed(2); // Setting fees in txtFees_direct with 2 decimal places
    }
</script>
                <div class="modal-body">
                    <p class="m-0">2nd Modal Enter amount you want to withdraw to your crypto wallet.</p>
                    <p class="text-dribbble">Note: The maximum withdrawal limit for a day is 5000 USD. 3% Fees would be deducted for each withdrawal.</p>
                    <div class="col-md-12 form-group">
                        <label class="labels">Amount to withdraw</label>
                        <asp:TextBox oninput="calculateFees()"    ID="txtAmount_direct"  ValidationGroup="withdrawalValidation_direct" MaxLength="10" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAmount" ControlToValidate="txtAmount_direct" ErrorMessage="Amount is required" runat="server" ValidationGroup="withdrawalValidation_direct"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorAmount" ControlToValidate="txtAmount_direct" ErrorMessage="Amount should be greater than 50 and less than 5000" MinimumValue="50" MaximumValue="5000" Type="Integer" runat="server" ValidationGroup="withdrawalValidation"></asp:RangeValidator>


                    </div>
                    <div class="col-md-12 form-group">
                        <label class="labels">Fees</label>
                        <asp:TextBox ID="txtFees_direct" Enabled="false" MaxLength="10" runat="server"></asp:TextBox>
                    </div>


                    <div class="col-md-12 form-group">
                        <label class="labels">Crypto Wallet Address</label>
                        <asp:TextBox ID="txtCryptoAddress_direct"   MaxLength="100" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCryptoAddress" ControlToValidate="txtCryptoAddress_direct" ErrorMessage="Crypto Wallet Address is required" runat="server" ValidationGroup="withdrawalValidation_direct"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btncancel_direct" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                    <asp:Button runat="server" ID="btnwithdraw_Direct"   class="btn btn-tr no-hover" CausesValidation="true"  ValidationGroup="withdrawalValidation_direct"  Text="Withdraw Now"  OnClick="btnwithdraw_Direct_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
