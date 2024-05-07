<%@ Page Title="Tradix : Learning Management BackOffice System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LMSBackOfficeWebApplication.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style>
            .blink_me {
                animation: blinker 1s linear infinite;
            }

            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
        </style>

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
                        <%-- <img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />--%>
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
                        <%--<img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />--%>
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
                        <%--<img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />--%>
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
                        <%--<img src="https://dixdeynibyck7.cloudfront.net/images/content/Forex/DOLLAR_03_L.jpg" alt="img" class="img-fluid mb-3" />--%>
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
                <div class="banner">
                    <div class="banner-caption">
                        <h2 class="text-white">Welcome!</h2>
                        <p class="m-0">Unlock Rewards Now! Join our community and start experiencing the rewards immediately.</p>
                        <font color="#dd12ec" class="blink_me"><strong>Accelerate Your Earnings with Our Fast Track Bonus</strong></font>
                        <div id="timer" class="partner rounded-5 mt-2 p-1"></div>
                    </div>
                    <div class="orbit">
    <div class="rocket">
        <img src="Content/images/fire-lit.gif">
        <div class="window"></div>
    </div>
</div>
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
                                    <h2 class="mb-0">Dashboard</h2>
                                </div>
                            </div>
                            <div class="col-md-6 text-end">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Dashboard</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <div class="row g-3">

                    <div class="col-md-3">
                        <div class="card t-card membership" style="background-color: #FBAB7E; background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 100%);">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-warning">
                                            <svg class="flip" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M21 7V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V7C3 4 4.5 2 8 2H16C19.5 2 21 4 21 7Z"
                                                    stroke="#E58A00"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.6"
                                                    d="M14.5 4.5V6.5C14.5 7.6 15.4 8.5 16.5 8.5H18.5"
                                                    stroke="#E58A00"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.6"
                                                    d="M8 13H12"
                                                    stroke="#E58A00"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.6"
                                                    d="M8 17H16"
                                                    stroke="#E58A00"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Product</h6>
                                    </div>
                                </div>
                                <div>
                                    <div class="row align-items-center">
                                        <div class="col-7">
                                            <h5 class="font-semibold m-0">
                                                <asp:Label runat="server" Text="None" ID="lblMembership"></asp:Label></h5>
                                        </div>
                                        <div class="col-5 p-0">
                                            <h5 class="mb-1">&nbsp;</h5>
                                            <p class="text-warning mb-0">&nbsp;</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="top"></span>
                            <span class="right"></span>
                            <span class="bottom"></span>
                            <span class="left"></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card t-card direct-bonus" style="background-color: #8EC5FC; background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-primary">
                                            <svg class="flip" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    opacity="0.4"
                                                    d="M13 9H7"
                                                    stroke="#4680FF"
                                                    stroke-width="1.5"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    d="M22.0002 10.9702V13.0302C22.0002 13.5802 21.5602 14.0302 21.0002 14.0502H19.0402C17.9602 14.0502 16.9702 13.2602 16.8802 12.1802C16.8202 11.5502 17.0602 10.9602 17.4802 10.5502C17.8502 10.1702 18.3602 9.9502 18.9202 9.9502H21.0002C21.5602 9.9702 22.0002 10.4202 22.0002 10.9702Z"
                                                    stroke="#4680FF"
                                                    stroke-width="1.5"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    d="M17.48 10.55C17.06 10.96 16.82 11.55 16.88 12.18C16.97 13.26 17.96 14.05 19.04 14.05H21V15.5C21 18.5 19 20.5 16 20.5H7C4 20.5 2 18.5 2 15.5V8.5C2 5.78 3.64 3.88 6.19 3.56C6.45 3.52 6.72 3.5 7 3.5H16C16.26 3.5 16.51 3.50999 16.75 3.54999C19.33 3.84999 21 5.76 21 8.5V9.95001H18.92C18.36 9.95001 17.85 10.17 17.48 10.55Z"
                                                    stroke="#4680FF"
                                                    stroke-width="1.5"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Direct Bonus</h6>
                                    </div>
                                </div>
                                <div>
                                    <div class="row align-items-center">
                                        <div class="col-7">
                                            <div id="all-earnings-graph"></div>
                                        </div>
                                        <div class="col-5 p-0">
                                            <h5 class="mb-1">$<span id="directBonus" runat="server"></span></h5>
                                            <p class="text-primary mb-0"><i class="ti ti-arrow-up-right"></i>0%</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="top"></span>
                            <span class="right"></span>
                            <span class="bottom"></span>
                            <span class="left"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card t-card kyc-status" style="background-color: #FFDEE9; background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-success">
                                            <svg class="flip" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M8 2V5"
                                                    stroke="#2ca87f"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    d="M16 2V5"
                                                    stroke="#2ca87f"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M3.5 9.08984H20.5"
                                                    stroke="#2ca87f"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    d="M21 8.5V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V8.5C3 5.5 4.5 3.5 8 3.5H16C19.5 3.5 21 5.5 21 8.5Z"
                                                    stroke="#2ca87f"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M15.6947 13.7002H15.7037"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M15.6947 16.7002H15.7037"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M11.9955 13.7002H12.0045"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M11.9955 16.7002H12.0045"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M8.29431 13.7002H8.30329"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M8.29395 16.7002H8.30293"
                                                    stroke="#2ca87f"
                                                    stroke-width="2"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Network Bonus</h6>
                                    </div>
                                </div>
                                <div>
                                    <div class="row align-items-center">
                                        <div class="col-7">
                                            <div id="total-task-graph"></div>
                                        </div>
                                        <div class="col-5 p-0">
                                            <h5 class="mb-1">
                                                <asp:Label runat="server" Text="0$" ID="lblNetworkBonus"></asp:Label></h5>
                                            <p class="text-success mb-0"><i class="ti ti-arrow-up-right"></i>0%</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="top"></span>
                            <span class="right"></span>
                            <span class="bottom"></span>
                            <span class="left"></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card t-card direct-referral" style="background-color: #FAACA8; background-image: linear-gradient(19deg, #FAACA8 0%, #DDD6F3 100%);">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-warning">
                                            <svg class="flip" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                                                    stroke="#DC2626"
                                                    stroke-width="1.5"
                                                    stroke-miterlimit="10"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                                <path
                                                    opacity="0.4"
                                                    d="M8.4707 10.7402L12.0007 14.2602L15.5307 10.7402"
                                                    stroke="#DC2626"
                                                    stroke-width="1.5"
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Rank Achieved</h6>
                                    </div>
                                </div>
                                <div>
                                    <div class="row align-items-center">
                                        <div class="col-7">
                                            <h5 class="font-semibold m-0">
                                                <asp:Label ID="lblrank" runat="server" Text="Earn More Rewards"></asp:Label></h5>
                                        </div>
                                        <div class="col-5 p-0">
                                            <h5 class="mb-1">&nbsp;</h5>
                                            <p class="text-warning mb-0">&nbsp;</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="top"></span>
                            <span class="right"></span>
                            <span class="bottom"></span>
                            <span class="left"></span>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">Forex Trading Chart</h5>
                            </div>
                            <div class="card-body">
                                <!-- TradingView Widget Container -->
                                <div id="tradingview-widget-container">
                                    <div id="tradingview-widget-c0"></div>
                                </div>
                                <%--<h5 class="text-end my-2">5.44% <span class="badge bg-success">+2.6%</span> </h5>--%>
                                <%--<div id="customer-rate-graph"></div>--%>
                                <%--<iframe class="w-100" height="400" src="https://s.tradingview.com/dailyfx/widgetembed/?hideideas=1&overrides=%7B%7D&enabled_features=%5B%5D&disabled_features=%5B%5D&locale=en#%7B%22symbol%22%3A%22FX_IDC%3AEURUSD%22%2C%22frameElementId%22%3A%22tradingview_4a8b2%22%2C%22interval%22%3A%22D%22%2C%22hide_side_toolbar%22%3A%220%22%2C%22allow_symbol_change%22%3A%221%22%2C%22save_image%22%3A%221%22%2C%22studies%22%3A%22%5B%5D%22%2C%22theme%22%3A%22Light%22%2C%22timezone%22%3A%22exchange%22%2C%22studies_overrides%22%3A%22%7B%7D%22%2C%22utm_source%22%3A%22www.dailyfx.com%22%2C%22utm_medium%22%3A%22widget%22%2C%22utm_campaign%22%3A%22chart%22%2C%22utm_term%22%3A%22FX_IDC%3AEURUSD%22%2C%22page-uri%22%3A%22www.dailyfx.com%2Fcharts%22%7D"></iframe>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card mb-2">
                            <div class="card-header">
                                <h5 class="mb-0">Referral Links</h5>
                            </div>
                            <div class="card-body">
                                <div class="d-grid gap-2">
                                    <a href="#" class="btn btn-link-secondary bg-warning-subtle">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-grow-1 mx-2">
                                                <p class="mb-0 d-grid text-start">
                                                    <span>Left</span>
                                                    <span class="text-truncate w-100 "><i data-feather="arrow-up-left"></i><span class="copyable" data-bs-toggle="tooltip" data-bs-placement="top" id="leftReferralCodeSpan" runat="server"></span></span>
                                                </p>
                                            </div>
                                            <div onclick="copyText(this,event)" class="badge bg-light-secondary f-12 small"><i data-feather="copy"></i>Copy</div>
                                            <span id="copiedSpan" class="copied-span">Copied!</span>
                                        </div>
                                    </a>
                                    <a href="#" class="btn btn-link-secondary bg-primary-subtle">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-grow-1 mx-2">
                                                <p class="mb-0 d-grid text-start">
                                                    <span>Right</span>
                                                    <span class="text-truncate w-100 "><i data-feather="arrow-up-right"></i><span data-bs-toggle="tooltip" data-bs-placement="top" class="copyable" id="rightReferralCodeSpan" runat="server"></span></span>
                                                </p>
                                            </div>
                                            <div onclick="copyText(this,event)" class="badge bg-light-secondary f-12 small"><i data-feather="copy"></i>Copy</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-2">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-primary">
                                            <svg class="pc-icon">
                                                <use xlink:href="#custom-user"></use>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Left Network</h6>
                                        <small class="text-muted">Total count of left network users</small>
                                    </div>
                                    <div class="dropdown">
                                        <a
                                            class="avtar avtar-s btn-link-secondary dropdown-toggle arrow-none"
                                            href="#"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="ti ti-dots-vertical f-18"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item" href="#">Today</a>
                                            <a class="dropdown-item" href="#">Weekly</a>
                                            <a class="dropdown-item" href="#">Monthly</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4">
                                    <div class="user-group able-user-group">
                                        <img src="Content/images/user/avatar-1.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-3.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-4.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-5.jpg" alt="user-image" class="avtar" />
                                        <span class="avtar bg-light-primary text-primary text-sm">+</span>
                                    </div>
                                    <span class="badge rounded-pill text-bg-light text-dark bg-warning">
                                        <asp:Label runat="server" Text="0 users" ID="lblLeftNetworkUsers"></asp:Label></span>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-2">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <div class="avtar avtar-s bg-light-primary">
                                            <svg class="pc-icon">
                                                <use xlink:href="#custom-user"></use>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Right Network</h6>
                                        <small class="text-muted">Total count of right network users</small>
                                    </div>
                                    <div class="dropdown">
                                        <a
                                            class="avtar avtar-s btn-link-secondary dropdown-toggle arrow-none"
                                            href="#"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="ti ti-dots-vertical f-18"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item" href="#">Today</a>
                                            <a class="dropdown-item" href="#">Weekly</a>
                                            <a class="dropdown-item" href="#">Monthly</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4">
                                    <div class="user-group able-user-group">
                                        <img src="Content/images/user/avatar-1.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-3.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-4.jpg" alt="user-image" class="avtar" />
                                        <img src="Content/images/user/avatar-5.jpg" alt="user-image" class="avtar" />
                                        <span class="avtar bg-light-primary text-primary text-sm">+</span>
                                    </div>
                                    <span class="badge rounded-pill text-bg-light text-dark bg-warning">
                                        <asp:Label runat="server" Text="0 users" ID="lblRightNetworkUsers"></asp:Label></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="row g-3">
                            <div class="col-lg-6">
                                <div class="card mb-4 h-100">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <h5 class="mb-0">Purchased Memberships</h5>
                                            <div class="dropdown">
                                                <a
                                                    class="avtar avtar-s btn-link-secondary dropdown-toggle arrow-none"
                                                    href="Memberships.aspx"
                                                    data-bs-toggle="dropdown"
                                                    aria-haspopup="true"
                                                    aria-expanded="false">
                                                    <i class="ti ti-dots f-18"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="#">Today</a>
                                                    <a class="dropdown-item" href="#">Weekly</a>
                                                    <a class="dropdown-item" href="#">Monthly</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row align-items-center justify-content-center">
                                            <div class="col-xl-6">
                                                <div class="mt-3 row align-items-center">
                                                    <div class="col-6">
                                                        <p class="text-muted mb-1">New Memberships</p>
                                                        <h5 class="mb-0">0</h5>
                                                    </div>
                                                    <div class="col-6">
                                                        <div id="total-tasks-graph"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="mt-3 row align-items-center">
                                                    <div class="col-6">
                                                        <p class="text-muted mb-1">Total Memberships</p>
                                                        <h5 class="mb-0">0</h5>
                                                    </div>
                                                    <div class="col-6">
                                                        <div id="pending-tasks-graph"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="mt-3 d-grid">
                                                    <a href="Memberships.aspx" class="btn btn-tr no-hover d-flex align-items-center justify-content-center">
                                                        <i class="ti ti-plus"></i>Purchase Membership</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4 h-100 criteria-box">
                                    <div class="card-body position-relative d-flex align-items-center justify-content-center flex-column">
                                        <div class="svg-frame">
                                            <svg style="--i: 0; --j: 0;">
                                                <g id="out1">
                                                    <path d="M72 172C72 116.772 116.772 72 172 72C227.228 72 272 116.772 272 172C272 227.228 227.228 272 172 272C116.772 272 72 227.228 72 172ZM197.322 172C197.322 158.015 185.985 146.678 172 146.678C158.015 146.678 146.678 158.015 146.678 172C146.678 185.985 158.015 197.322 172 197.322C185.985 197.322 197.322 185.985 197.322 172Z"></path>
                                                    <path mask="url(#path-1-inside-1_111_3212)" stroke-miterlimit="16" stroke-width="2" stroke="#00FFFF" d="M72 172C72 116.772 116.772 72 172 72C227.228 72 272 116.772 272 172C272 227.228 227.228 272 172 272C116.772 272 72 227.228 72 172ZM197.322 172C197.322 158.015 185.985 146.678 172 146.678C158.015 146.678 146.678 158.015 146.678 172C146.678 185.985 158.015 197.322 172 197.322C185.985 197.322 197.322 185.985 197.322 172Z"></path>
                                                </g>
                                            </svg>

                                            <svg style="--i: 1; --j: 1;">
                                                <g id="out2">
                                                    <mask fill="white" id="path-2-inside-2_111_3212">
                                                        <path d="M102.892 127.966C93.3733 142.905 88.9517 160.527 90.2897 178.19L94.3752 177.88C93.1041 161.1 97.3046 144.36 106.347 130.168L102.892 127.966Z"></path>
                                                        <path d="M93.3401 194.968C98.3049 211.971 108.646 226.908 122.814 237.541L125.273 234.264C111.814 224.163 101.99 209.973 97.2731 193.819L93.3401 194.968Z"></path>
                                                        <path d="M152.707 92.3592C140.33 95.3575 128.822 101.199 119.097 109.421L121.742 112.55C130.981 104.739 141.914 99.1897 153.672 96.3413L152.707 92.3592Z"></path>
                                                        <path d="M253.294 161.699C255.099 175.937 253.132 190.4 247.59 203.639L243.811 202.057C249.075 189.48 250.944 175.74 249.23 162.214L253.294 161.699Z"></path>
                                                        <path d="M172 90.0557C184.677 90.0557 197.18 92.9967 208.528 98.6474C219.875 104.298 229.757 112.505 237.396 122.621L234.126 125.09C226.869 115.479 217.481 107.683 206.701 102.315C195.921 96.9469 184.043 94.1529 172 94.1529V90.0557Z"></path>
                                                        <path d="M244.195 133.235C246.991 138.442 249.216 143.937 250.83 149.623L246.888 150.742C245.355 145.34 243.242 140.12 240.586 135.174L244.195 133.235Z"></path>
                                                        <path d="M234.238 225.304C223.932 237.338 210.358 246.126 195.159 250.604C179.961 255.082 163.79 255.058 148.606 250.534L149.775 246.607C164.201 250.905 179.563 250.928 194.001 246.674C208.44 242.42 221.335 234.071 231.126 222.639L234.238 225.304Z"></path>
                                                    </mask>
                                                    <path mask="url(#path-2-inside-2_111_3212)" fill="#00FFFF" d="M102.892 127.966L105.579 123.75L101.362 121.063L98.6752 125.28L102.892 127.966ZM90.2897 178.19L85.304 178.567L85.6817 183.553L90.6674 183.175L90.2897 178.19ZM94.3752 177.88L94.7529 182.866L99.7386 182.488L99.3609 177.503L94.3752 177.88ZM106.347 130.168L110.564 132.855L113.251 128.638L109.034 125.951L106.347 130.168ZM93.3401 194.968L91.9387 190.168L87.1391 191.569L88.5405 196.369L93.3401 194.968ZM122.814 237.541L119.813 241.54L123.812 244.541L126.813 240.542L122.814 237.541ZM125.273 234.264L129.272 237.265L132.273 233.266L128.274 230.265L125.273 234.264ZM97.2731 193.819L102.073 192.418L100.671 187.618L95.8717 189.02L97.2731 193.819ZM152.707 92.3592L157.567 91.182L156.389 86.3226L151.53 87.4998L152.707 92.3592ZM119.097 109.421L115.869 105.603L112.05 108.831L115.278 112.649L119.097 109.421ZM121.742 112.55L117.924 115.778L121.152 119.596L124.97 116.368L121.742 112.55ZM153.672 96.3413L154.849 101.201L159.708 100.023L158.531 95.1641L153.672 96.3413ZM253.294 161.699L258.255 161.07L257.626 156.11L252.666 156.738L253.294 161.699ZM247.59 203.639L245.66 208.251L250.272 210.182L252.203 205.569L247.59 203.639ZM243.811 202.057L239.198 200.126L237.268 204.739L241.88 206.669L243.811 202.057ZM249.23 162.214L248.601 157.253L243.641 157.882L244.269 162.842L249.23 162.214ZM172 90.0557V85.0557H167V90.0557H172ZM208.528 98.6474L206.299 103.123L206.299 103.123L208.528 98.6474ZM237.396 122.621L240.409 126.611L244.399 123.598L241.386 119.608L237.396 122.621ZM234.126 125.09L230.136 128.103L233.149 132.093L237.139 129.08L234.126 125.09ZM206.701 102.315L204.473 106.791L204.473 106.791L206.701 102.315ZM172 94.1529H167V99.1529H172V94.1529ZM244.195 133.235L248.601 130.87L246.235 126.465L241.83 128.83L244.195 133.235ZM250.83 149.623L252.195 154.433L257.005 153.067L255.64 148.257L250.83 149.623ZM246.888 150.742L242.078 152.107L243.444 156.917L248.254 155.552L246.888 150.742ZM240.586 135.174L238.22 130.768L233.815 133.134L236.181 137.539L240.586 135.174ZM234.238 225.304L238.036 228.556L241.288 224.759L237.491 221.506L234.238 225.304ZM195.159 250.604L196.572 255.4L196.572 255.4L195.159 250.604ZM148.606 250.534L143.814 249.107L142.386 253.899L147.178 255.326L148.606 250.534ZM149.775 246.607L151.203 241.816L146.411 240.388L144.983 245.18L149.775 246.607ZM194.001 246.674L195.415 251.47L195.415 251.47L194.001 246.674ZM231.126 222.639L234.379 218.841L230.581 215.589L227.329 219.386L231.126 222.639ZM98.6752 125.28C88.5757 141.13 83.8844 159.826 85.304 178.567L95.2754 177.812C94.0191 161.227 98.1709 144.681 107.109 130.653L98.6752 125.28ZM90.6674 183.175L94.7529 182.866L93.9976 172.895L89.912 173.204L90.6674 183.175ZM99.3609 177.503C98.1715 161.8 102.102 146.135 110.564 132.855L102.131 127.481C92.5071 142.585 88.0368 160.4 89.3895 178.258L99.3609 177.503ZM109.034 125.951L105.579 123.75L100.205 132.183L103.661 134.385L109.034 125.951ZM88.5405 196.369C93.8083 214.41 104.78 230.259 119.813 241.54L125.815 233.542C112.512 223.558 102.802 209.532 98.1397 193.566L88.5405 196.369ZM126.813 240.542L129.272 237.265L121.274 231.263L118.815 234.54L126.813 240.542ZM128.274 230.265C115.679 220.813 106.486 207.534 102.073 192.418L92.4735 195.221C97.493 212.412 107.948 227.513 122.272 238.263L128.274 230.265ZM95.8717 189.02L91.9387 190.168L94.7415 199.767L98.6745 198.619L95.8717 189.02ZM151.53 87.4998C138.398 90.681 126.188 96.8793 115.869 105.603L122.325 113.239C131.457 105.519 142.262 100.034 153.884 97.2187L151.53 87.4998ZM115.278 112.649L117.924 115.778L125.56 109.322L122.915 106.193L115.278 112.649ZM124.97 116.368C133.616 109.059 143.846 103.866 154.849 101.201L152.495 91.4818C139.981 94.5132 128.347 100.419 118.514 108.732L124.97 116.368ZM158.531 95.1641L157.567 91.182L147.848 93.5364L148.812 97.5185L158.531 95.1641ZM248.334 162.327C250.028 175.697 248.181 189.277 242.978 201.708L252.203 205.569C258.082 191.522 260.169 176.177 258.255 161.07L248.334 162.327ZM249.521 199.027L245.741 197.445L241.88 206.669L245.66 208.251L249.521 199.027ZM248.423 203.987C254.025 190.602 256.014 175.98 254.19 161.585L244.269 162.842C245.873 175.5 244.125 188.357 239.198 200.126L248.423 203.987ZM249.858 167.174L253.923 166.659L252.666 156.738L248.601 157.253L249.858 167.174ZM172 95.0557C183.903 95.0557 195.644 97.8172 206.299 103.123L210.757 94.1717C198.717 88.1761 185.45 85.0557 172 85.0557V95.0557ZM206.299 103.123C216.954 108.429 226.233 116.135 233.406 125.634L241.386 119.608C233.281 108.874 222.796 100.167 210.757 94.1717L206.299 103.123ZM234.383 118.631L231.113 121.1L237.139 129.08L240.409 126.611L234.383 118.631ZM238.116 122.077C230.393 111.849 220.403 103.552 208.93 97.8393L204.473 106.791C214.56 111.814 223.345 119.11 230.136 128.103L238.116 122.077ZM208.93 97.8393C197.458 92.1263 184.816 89.1529 172 89.1529V99.1529C183.269 99.1529 194.385 101.767 204.473 106.791L208.93 97.8393ZM177 94.1529V90.0557H167V94.1529H177ZM239.79 135.601C242.416 140.49 244.504 145.649 246.02 150.988L255.64 148.257C253.927 142.225 251.567 136.395 248.601 130.87L239.79 135.601ZM249.464 144.813L245.523 145.932L248.254 155.552L252.195 154.433L249.464 144.813ZM251.698 149.376C250.067 143.628 247.818 138.073 244.991 132.808L236.181 137.539C238.666 142.168 240.644 147.052 242.078 152.107L251.698 149.376ZM242.951 139.579L246.561 137.64L241.83 128.83L238.22 130.768L242.951 139.579ZM230.441 222.051C220.763 233.351 208.017 241.603 193.746 245.808L196.572 255.4C212.698 250.649 227.101 241.325 238.036 228.556L230.441 222.051ZM193.746 245.808C179.475 250.012 164.291 249.99 150.033 245.742L147.178 255.326C163.289 260.125 180.447 260.151 196.572 255.4L193.746 245.808ZM153.397 251.962L154.567 248.035L144.983 245.18L143.814 249.107L153.397 251.962ZM148.348 251.399C163.7 255.973 180.049 255.997 195.415 251.47L192.588 241.877C179.077 245.858 164.702 245.837 151.203 241.816L148.348 251.399ZM195.415 251.47C210.78 246.942 224.504 238.058 234.924 225.891L227.329 219.386C218.167 230.084 206.099 237.897 192.588 241.877L195.415 251.47ZM227.874 226.436L230.986 229.101L237.491 221.506L234.379 218.841L227.874 226.436Z"></path>
                                                </g>
                                            </svg>

                                            <svg style="--i: 0; --j: 2;">
                                                <g id="inner3">
                                                    <path d="M195.136 135.689C188.115 131.215 179.948 128.873 171.624 128.946C163.299 129.019 155.174 131.503 148.232 136.099L148.42 136.382C155.307 131.823 163.368 129.358 171.627 129.286C179.886 129.213 187.988 131.537 194.954 135.975L195.136 135.689Z"></path>
                                                    <path d="M195.136 208.311C188.115 212.784 179.948 215.127 171.624 215.054C163.299 214.981 155.174 212.496 148.232 207.901L148.42 207.618C155.307 212.177 163.368 214.642 171.627 214.714C179.886 214.786 187.988 212.463 194.954 208.025L195.136 208.311Z"></path>
                                                    <path mask="url(#path-5-inside-3_111_3212)" fill="#00FFFF" d="M195.136 135.689L195.474 135.904L195.689 135.566L195.351 135.352L195.136 135.689ZM171.624 128.946L171.627 129.346L171.624 128.946ZM148.232 136.099L148.011 135.765L147.678 135.986L147.899 136.32L148.232 136.099ZM148.42 136.382L148.086 136.603L148.307 136.936L148.641 136.716L148.42 136.382ZM171.627 129.286L171.63 129.686L171.627 129.286ZM194.954 135.975L194.739 136.313L195.076 136.528L195.291 136.19L194.954 135.975ZM195.136 208.311L195.351 208.648L195.689 208.433L195.474 208.096L195.136 208.311ZM171.624 215.054L171.627 214.654L171.624 215.054ZM148.232 207.901L147.899 207.68L147.678 208.014L148.011 208.234L148.232 207.901ZM148.42 207.618L148.641 207.284L148.307 207.063L148.086 207.397L148.42 207.618ZM171.627 214.714L171.63 214.314L171.627 214.714ZM194.954 208.025L195.291 207.81L195.076 207.472L194.739 207.687L194.954 208.025ZM195.351 135.352C188.265 130.836 180.022 128.473 171.62 128.546L171.627 129.346C179.874 129.274 187.966 131.594 194.921 136.026L195.351 135.352ZM171.62 128.546C163.218 128.619 155.018 131.127 148.011 135.765L148.453 136.432C155.33 131.88 163.38 129.418 171.627 129.346L171.62 128.546ZM147.899 136.32L148.086 136.603L148.753 136.161L148.566 135.878L147.899 136.32ZM148.641 136.716C155.463 132.199 163.448 129.757 171.63 129.686L171.623 128.886C163.287 128.958 155.15 131.447 148.199 136.049L148.641 136.716ZM171.63 129.686C179.812 129.614 187.839 131.916 194.739 136.313L195.169 135.638C188.138 131.158 179.959 128.813 171.623 128.886L171.63 129.686ZM195.291 136.19L195.474 135.904L194.799 135.474L194.617 135.76L195.291 136.19ZM194.921 207.974C187.966 212.406 179.874 214.726 171.627 214.654L171.62 215.454C180.022 215.527 188.265 213.163 195.351 208.648L194.921 207.974ZM171.627 214.654C163.38 214.582 155.33 212.12 148.453 207.567L148.011 208.234C155.018 212.873 163.218 215.38 171.62 215.454L171.627 214.654ZM148.566 208.122L148.753 207.838L148.086 207.397L147.899 207.68L148.566 208.122ZM148.199 207.951C155.15 212.553 163.287 215.041 171.623 215.114L171.63 214.314C163.448 214.243 155.463 211.801 148.641 207.284L148.199 207.951ZM171.623 215.114C179.959 215.187 188.138 212.842 195.169 208.362L194.739 207.687C187.839 212.084 179.812 214.386 171.63 214.314L171.623 215.114ZM194.617 208.239L194.799 208.526L195.474 208.096L195.291 207.81L194.617 208.239Z"></path>
                                                </g>
                                                <path stroke="#00FFFF" d="M240.944 172C240.944 187.951 235.414 203.408 225.295 215.738C215.176 228.068 201.095 236.508 185.45 239.62C169.806 242.732 153.567 240.323 139.5 232.804C125.433 225.285 114.408 213.12 108.304 198.384C102.2 183.648 101.394 167.25 106.024 151.987C110.654 136.723 120.434 123.537 133.696 114.675C146.959 105.813 162.884 101.824 178.758 103.388C194.632 104.951 209.472 111.97 220.751 123.249" id="out3"></path>
                                            </svg>

                                            <svg style="--i: 1; --j: 3;">
                                                <g id="inner1">
                                                    <path fill="#00FFFF" d="M145.949 124.51L148.554 129.259C156.575 124.859 165.672 122.804 174.806 123.331C183.94 123.858 192.741 126.944 200.203 132.236C207.665 137.529 213.488 144.815 217.004 153.261C220.521 161.707 221.59 170.972 220.09 179.997L224.108 180.665L224.102 180.699L229.537 181.607C230.521 175.715 230.594 169.708 229.753 163.795L225.628 164.381C224.987 159.867 223.775 155.429 222.005 151.179C218.097 141.795 211.628 133.699 203.337 127.818C195.045 121.937 185.266 118.508 175.118 117.923C165.302 117.357 155.525 119.474 146.83 124.037C146.535 124.192 146.241 124.349 145.949 124.51ZM224.638 164.522C224.009 160.091 222.819 155.735 221.082 151.563C217.246 142.352 210.897 134.406 202.758 128.634C194.62 122.862 185.021 119.496 175.06 118.922C165.432 118.367 155.841 120.441 147.311 124.914L148.954 127.91C156.922 123.745 165.876 121.814 174.864 122.333C184.185 122.87 193.166 126.019 200.782 131.421C208.397 136.822 214.339 144.257 217.928 152.877C221.388 161.188 222.526 170.276 221.23 179.173L224.262 179.677C224.998 174.671 225.35 169.535 224.638 164.522Z" clip-rule="evenodd" fill-rule="evenodd"></path>
                                                    <path fill="#00FFFF" d="M139.91 220.713C134.922 217.428 130.469 213.395 126.705 208.758L130.983 205.286L130.985 205.288L134.148 202.721C141.342 211.584 151.417 217.642 162.619 219.839C173.821 222.036 185.438 220.232 195.446 214.742L198.051 219.491C197.759 219.651 197.465 219.809 197.17 219.963C186.252 225.693 173.696 227.531 161.577 225.154C154.613 223.789 148.041 221.08 142.202 217.234L139.91 220.713ZM142.752 216.399C148.483 220.174 154.934 222.833 161.769 224.173C173.658 226.504 185.977 224.704 196.689 219.087L195.046 216.09C185.035 221.323 173.531 222.998 162.427 220.82C151.323 218.643 141.303 212.747 134.01 204.122L131.182 206.5C134.451 210.376 138.515 213.607 142.752 216.399Z" clip-rule="evenodd" fill-rule="evenodd"></path>
                                                </g>
                                            </svg>

                                            <svg style="--i: 2; --j: 4;">
                                                <path fill="#00FFFF" d="M180.956 186.056C183.849 184.212 186.103 181.521 187.41 178.349C188.717 175.177 189.013 171.679 188.258 168.332C187.503 164.986 185.734 161.954 183.192 159.65C180.649 157.346 177.458 155.883 174.054 155.46C170.649 155.038 167.197 155.676 164.169 157.288C161.14 158.9 158.683 161.407 157.133 164.468C155.582 167.528 155.014 170.992 155.505 174.388C155.997 177.783 157.524 180.944 159.879 183.439L161.129 182.259C159.018 180.021 157.648 177.186 157.207 174.141C156.766 171.096 157.276 167.989 158.667 165.245C160.057 162.5 162.261 160.252 164.977 158.806C167.693 157.36 170.788 156.788 173.842 157.167C176.895 157.546 179.757 158.858 182.037 160.924C184.317 162.99 185.904 165.709 186.581 168.711C187.258 171.712 186.992 174.849 185.82 177.694C184.648 180.539 182.627 182.952 180.032 184.606L180.956 186.056Z" id="center1"></path>
                                                <path fill="#00FFFF" d="M172 166.445C175.068 166.445 177.556 168.932 177.556 172C177.556 175.068 175.068 177.556 172 177.556C168.932 177.556 166.444 175.068 166.444 172C166.444 168.932 168.932 166.445 172 166.445ZM172 177.021C174.773 177.021 177.021 174.773 177.021 172C177.021 169.227 174.773 166.979 172 166.979C169.227 166.979 166.979 169.227 166.979 172C166.979 174.773 169.227 177.021 172 177.021Z" id="center"></path>
                                            </svg>

                                        </div>
                                        <h6 class="text-white position-relative" style="background: #de0eed; padding: 5px 10px; border-radius: 70px;">Basic Rank: <span class="pill">Explorer</span></h6>
                                        <h6 class="text-white position-relative" style="background: #232f45; padding: 5px 10px; border-radius: 70px;">Next Rank: <span class="pill">Connector-X</span></h6>
                                        <div id="typewriter" class="text-center text-white position-relative" style="background: #232f45; padding: 5px 10px; border-radius: 70px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">

                            <div class="card-header">
                                <h5 class="mb-0">Network Stats</h5>
                            </div>
                            <div class="card-body table-border-style">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Volume</th>
                                                <th>Left</th>
                                                <th>Right</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Rank Volume</td>
                                                <td>
                                                    <asp:Label ID="lblRankVolumeleft" runat="server" Text="0"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lblRankVolumeright" runat="server" Text="0"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Network Volume</td>
                                                <td>
                                                    <asp:Label ID="lblNetworkVolumeLeft" runat="server" Text="0"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lblNetworkVolumeRight" runat="server" Text="0"></asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-5">
                        <div class="card">
                            <div class="card-body border-bottom pb-0">
                                <div class="d-flex align-items-center justify-content-between">
                                    <h5 class="mb-0">Recent Transactions</h5>
                                    <div class="dropdown">
                                        <a
                                            class="avtar avtar-s btn-link-secondary dropdown-toggle arrow-none"
                                            href="#"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="ti ti-dots-vertical f-18"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item" href="#">Today</a>
                                            <a class="dropdown-item" href="#">Weekly</a>
                                            <a class="dropdown-item" href="#">Monthly</a>
                                        </div>
                                    </div>
                                </div>
                                <%--<ul class="nav nav-tabs analytics-tab pb-2" id="t_tabs" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a href="analytics-tab-1"
                                            class="nav-link active"
                                            id="analytics-tab-1"
                                            data-bs-toggle="tab"
                                            data-bs-target="#analytics-tab-1-pane"
                                            type="button"
                                            role="tab"
                                            aria-controls="analytics-tab-1-pane"
                                            aria-selected="true">All Transaction</a>
                                    </li>
                                    <li class="nav-item d-none" role="presentation">
                                        <button
                                            class="nav-link"
                                            id="analytics-tab-2"
                                            data-bs-toggle="tab"
                                            data-bs-target="#analytics-tab-2-pane"
                                            type="button"
                                            role="tab"
                                            aria-controls="analytics-tab-2-pane"
                                            aria-selected="false">
                                            Memberships</button>
                                    </li>
                                    <li class="nav-item d-none" role="presentation">
                                        <button
                                            class="nav-link"
                                            id="analytics-tab-3"
                                            data-bs-toggle="tab"
                                            data-bs-target="#analytics-tab-3-pane"
                                            type="button"
                                            role="tab"
                                            aria-controls="analytics-tab-3-pane"
                                            aria-selected="false">
                                            Other Transactions</button>
                                    </li>
                                </ul>--%>
                            </div>
                            <%--<div class="tab-content" id="myTabContent">--%>
                            <%--<div
                                    class="tab-pane fade show active"
                                    id="analytics-tab-1-pane"
                                    role="tabpanel"
                                    aria-labelledby="analytics-tab-1"
                                    tabindex="0">--%>
                            <div class="overflow-auto">
                                <table id="" class="table table-striped table-hover" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>Transaction Code</th>
                                            <th>Transaction_Type</th>
                                            <th>Amount</th>
                                            <%-- <th>Receiver Address</th>--%>
                                            <th>Currency</th>
                                            <th>Transaction Date</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% if (dt != null && dt.Rows.Count > 0)
                                            { %>

                                        <% int rowCount = 0;
                                            foreach (System.Data.DataRow dr in this.dt.Rows)
                                            {
                                                if (rowCount >= 5) break; // Break loop after the fifth row
                                                rowCount++;
                                        %>
                                        <tr>
                                            <% foreach (System.Data.DataColumn dc in this.dt.Columns)
                                                { %>
                                            <td>
                                                <%= dr[dc.ColumnName] %>
                                            </td>
                                            <% } %>
                                        </tr>
                                        <% } %>

                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                            <%--</div>--%>
                            <%--<div class="tab-pane fade" id="analytics-tab-2-pane" role="tabpanel" aria-labelledby="analytics-tab-2" tabindex="0">
                                    <div class="overflow-auto">
                                        <table id="" class="table table-striped" style="width: 100%">
                                            <thead>
                                                <tr>
                                                    <th>Transaction Code</th>
                                                    <th>Username</th>
                                                    <th>Destination</th>
                                                    <th>Amount</th>
                                                    <th>Transaction Type</th>
                                                    <th>Transaction Date/Time</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>TRNS_032399</td>
                                                    <td>user_123</td>
                                                    <td>None</td>
                                                    <td>$0</td>
                                                    <td>Deposit</td>
                                                    <td>09-02-2024 | 12:33:56</td>
                                                </tr>
                                                <!-- Add more rows as needed -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>--%>
                            <%--<div class="tab-pane fade" id="analytics-tab-3-pane" role="tabpanel" aria-labelledby="analytics-tab-3" tabindex="0">
                                    <div class="overflow-auto">
                                        <table id="" class="table table-striped" style="width: 100%">
                                            <thead>
                                                <tr>
                                                    <th>Transaction Code</th>
                                                    <th>Username</th>
                                                    <th>Destination</th>
                                                    <th>Amount</th>
                                                    <th>Transaction Type</th>
                                                    <th>Transaction Date/Time</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>TRNS_032399</td>
                                                    <td>user_123</td>
                                                    <td>None</td>
                                                    <td>$0</td>
                                                    <td>Deposit</td>
                                                    <td>09-02-2024 | 12:33:56</td>
                                                </tr>
                                                <!-- Add more rows as needed -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>--%>
                        </div>
                        <div class="card-footer mt-3">
                            <a href="Transactions.aspx" class="btn btn-primary"><span class="text-truncate w-100">View all Transaction History</span></a>
                        </div>
                    </div>
                </div>
                <%-- <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between">
                                    <h5 class="mb-0">Total Income</h5>
                                    <div class="dropdown">
                                        <a
                                            class="avtar avtar-s btn-link-secondary dropdown-toggle arrow-none"
                                            href="#"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="ti ti-dots-vertical f-18"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item" href="#">Today</a>
                                            <a class="dropdown-item" href="#">Weekly</a>
                                            <a class="dropdown-item" href="#">Monthly</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="total-income-graph"></div>
                                <div class="row g-3 mt-3">
                                    <div class="col-sm-6">
                                        <div class="bg-body p-3 rounded">
                                            <div class="d-flex align-items-center mb-2">
                                                <div class="flex-shrink-0">
                                                    <span class="p-1 d-block bg-primary rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                </div>
                                                <div class="flex-grow-1 ms-2">
                                                    <p class="mb-0">Income</p>
                                                </div>
                                            </div>
                                            <h6 class="mb-0">$0 <small class="text-muted"><i class="ti ti-chevrons-up"></i>+$0</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="bg-body p-3 rounded">
                                            <div class="d-flex align-items-center mb-2">
                                                <div class="flex-shrink-0">
                                                    <span class="p-1 d-block bg-warning rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                </div>
                                                <div class="flex-grow-1 ms-2">
                                                    <p class="mb-0">Rent</p>
                                                </div>
                                            </div>
                                            <h6 class="mb-0">$0 <small class="text-muted"><i class="ti ti-chevrons-up"></i>+$0</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="bg-body p-3 rounded">
                                            <div class="d-flex align-items-center mb-2">
                                                <div class="flex-shrink-0">
                                                    <span class="p-1 d-block bg-success rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                </div>
                                                <div class="flex-grow-1 ms-2">
                                                    <p class="mb-0">Download</p>
                                                </div>
                                            </div>
                                            <h6 class="mb-0">$0 <small class="text-muted"><i class="ti ti-chevrons-up"></i>+$0</small></h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="bg-body p-3 rounded">
                                            <div class="d-flex align-items-center mb-2">
                                                <div class="flex-shrink-0">
                                                    <span class="p-1 d-block bg-light-primary rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                </div>
                                                <div class="flex-grow-1 ms-2">
                                                    <p class="mb-0">Views</p>
                                                </div>
                                            </div>
                                            <h6 class="mb-0">$0 <small class="text-muted"><i class="ti ti-chevrons-up"></i>+$0</small></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
            </div>
            <!-- [ Main Content ] end -->
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
                                            <%--<img src="https://ableproadmin.com/assets/images/customizer/caption-on.svg" alt="img" class="img-fluid">--%>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn-img btn" data-value="false" onclick="layout_caption_change('false');" data-bs-toggle="tooltip" title="Caption Hide">
                                            <%--<img src="https://ableproadmin.com/assets/images/customizer/caption-off.svg" alt="img" class="img-fluid">--%>
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
                                                <%--<img src="https://ableproadmin.com/assets/images/customizer/ltr.svg" alt="img" class="img-fluid">--%>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn" data-value="true" onclick="layout_rtl_change('true');" data-bs-toggle="tooltip" title="RTL">
                                                <%--<img src="https://ableproadmin.com/assets/images/customizer/rtl.svg" alt="img" class="img-fluid">--%>
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
                                                <%--<img src="https://ableproadmin.com/assets/images/customizer/full.svg" alt="img" class="img-fluid">--%>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="d-grid">
                                            <button class="preset-btn btn-img btn" data-value="true" onclick="change_box_container('true')" data-bs-toggle="tooltip" title="Fixed Width">
                                                <%--<img src="https://ableproadmin.com/assets/images/customizer/fixed.svg" alt="img" class="img-fluid">--%>
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
    <script>
        function copyText(div, event) {
            event.preventDefault();
            // Find the previous sibling of the div, which is the <div> element containing the text
            var divElement = div.previousElementSibling;

            // Find the first child element of the <div>, which is the <span> containing the copyable text
            var copyableElement = divElement.querySelector('.copyable');

            // Get the text content of the copyable element
            var textToCopy = copyableElement.textContent;

            // Create a temporary textarea to hold the text and copy it
            var tempTextArea = document.createElement("textarea");
            tempTextArea.value = textToCopy;

            // Append the textarea to the document
            document.body.appendChild(tempTextArea);

            // Select and copy the text from the textarea
            tempTextArea.select();
            document.execCommand("copy");

            // Remove the textarea from the document
            document.body.removeChild(tempTextArea);

            // Show the "copied" span
            var copiedSpan = document.getElementById("copiedSpan");
            copiedSpan.style.display = "block";

            // Hide the "copied" span after a short delay
            setTimeout(function () {
                copiedSpan.style.display = "none";
            }, 1000); // 1000 milliseconds = 1 second
        }

        // Timer

        function getNextMonday() {
            const today = new Date();
            const dayOfWeek = today.getDay();
            const daysUntilNextMonday = dayOfWeek === 0 ? 1 : 8 - dayOfWeek; // Calculate days until next Monday

            const nextMonday = new Date(today);
            nextMonday.setDate(today.getDate() + daysUntilNextMonday);
            nextMonday.setHours(12, 0, 0, 0); // Set time to 12:00 PM

            return nextMonday;
        }

        function updateTimer() {
            const targetDate = getNextMonday();
            const currentDate = new Date();

            const timeDifference = targetDate.getTime() - currentDate.getTime();

            if (timeDifference < 0) {
                return false; // Return false if dispersal day has passed
            }

            const totalSeconds = Math.floor(timeDifference / 1000);
            const days = Math.floor(totalSeconds / (3600 * 24));
            const hours = Math.floor((totalSeconds % (3600 * 24)) / 3600);
            const minutes = Math.floor((totalSeconds % 3600) / 60);
            const seconds = totalSeconds % 60;

            document.getElementById('timer').textContent = `Time Until Next Bonus Dispersal: ${days} Day(s), ${hours} Hours, ${minutes} Minutes, ${seconds} Seconds`;

            setTimeout(updateTimer, 1000);
        }

        // Start the timer
        if (!updateTimer()) {
            document.getElementById('timer').textContent = "Network Bonus has been dispersed Today !";
        }


    </script>
    <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
    <script type="text/javascript">
        new TradingView.widget({
            "width": "100%",
            "height": 400,
            "symbol": "FX:EURUSD",
            "interval": "240",
            "timezone": "Etc/UTC",
            "theme": "light",
            "style": "10",  // Set candle style to "Baseline"
            "colorScheme": "light", // Set color scheme
            "barColor": "#000", // Set bar color
            "locale": "en",
            "toolbar_bg": "#dd12ec",
            "plotBackground": "#dd12ec",
            "enable_publishing": false,
            "withdateranges": true,
            "range": "ytd",
            "hide_side_toolbar": true,
            "save_image": false,
            "container_id": "tradingview-widget-c0"
        });


        const text = `You need 500 members in your network to earn VIP`;

        let index = 0;
        let line = 0;
        const speed = 100; // typing speed in milliseconds

        function typeWriter() {
            if (index < text.length) {
                const char = text.charAt(index);
                const div = document.getElementById("typewriter");

                if (char === '\n') {
                    line++;
                }

                div.innerHTML += char;

                index++;
                setTimeout(typeWriter, speed);
            } else {
                // Reset index and div content to start typing from the beginning
                index = 0;
                document.getElementById("typewriter").innerHTML = '';
                setTimeout(typeWriter, speed);
            }
        }

        typeWriter();


    </script>

</asp:Content>
