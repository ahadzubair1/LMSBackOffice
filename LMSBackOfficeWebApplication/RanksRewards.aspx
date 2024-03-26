<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RanksRewards.aspx.cs" Inherits="LMSBackOfficeWebApplication.RanksRewards" %>

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
                <!-- [ Main Content ] start -->

                <%--<div class="ranks-wrapper pb-5">
                    <div class="cards-w">
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-01.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-02.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-03.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-04.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-05.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-06.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-07.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Ranks/RANK-08.png" alt="" />
                        </div>
                    </div>
                </div>--%>

                <!-- Banner -->
                <div class="banner ranks">
                    <div class="banner-caption">
                        <h2 class="text-white">Ranks & Rewards</h2>
                        <p class="m-0">Unlock substantial rewards with our latest promotion: More Referrals, Huge Bonus! Refer your friends, colleagues, or connections and reap the benefits of our generous bonus program.</p>
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
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Ranks & Rewards</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->

                <div class="card">
                    <div class="card-header">
                        <h5>Classification of Ranks</h5>
                    </div>
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Rank</th>
                                        <th>Partnership Level</th>
                                        <th>Personal</th>
                                        <th>Team A / Team B Volume</th>
                                        <th>Reward</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table-active">
                                        <td>Partner</td>
                                        <td>$500</td>
                                        <td>1/1</td>
                                        <td>$2k/$2k</td>
                                        <td>$50</td>
                                    </tr>
                                    <tr>
                                        <td>Executive</td>
                                        <td>$500</td>
                                        <td>1/1</td>
                                        <td>$5k/$5k</td>
                                        <td>$100</td>
                                    </tr>
                                    <tr class="table-success">
                                        <td>VIP</td>
                                        <td>$500</td>
                                        <td>1/1</td>
                                        <td>$10k/$10k</td>
                                        <td>$200</td>
                                    </tr>
                                    <tr>
                                        <td>Pioneer</td>
                                        <td>$750</td>
                                        <td>2/2</td>
                                        <td>$25k/$25k</td>
                                        <td>$300</td>
                                    </tr>
                                    <tr class="table-warning">
                                        <td>Elite</td>
                                        <td>$750</td>
                                        <td>2/2</td>
                                        <td>$50k/$50k</td>
                                        <td>$500</td>
                                    </tr>
                                    <tr>
                                        <td>Ambassador</td>
                                        <td>$1000</td>
                                        <td>3/3</td>
                                        <td>$100k/$100k</td>
                                        <td>$1,000</td>
                                    </tr>
                                    <tr class="table-danger">
                                        <td>Infinite Influencer</td>
                                        <td>$1000</td>
                                        <td>3/3</td>
                                        <td>$250k/$250k</td>
                                        <td>Retreat</td>
                                    </tr>
                                    <tr>
                                        <td>Legacy Creator</td>
                                        <td>$1500</td>
                                        <td>4/4</td>
                                        <td>$500k/$500k</td>
                                        <td>$5,000</td>
                                    </tr>
                                    <tr class="table-info">
                                        <td>Royal Legacy</td>
                                        <td>$1500</td>
                                        <td>4/4</td>
                                        <td>$1MIL/$1MIL</td>
                                        <td>$10,000</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="alert alert-secondary small py-1" role="alert"><i class="ti ti-alert-circle"></i>Terms & Conditions Apply</div>
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


</asp:Content>
