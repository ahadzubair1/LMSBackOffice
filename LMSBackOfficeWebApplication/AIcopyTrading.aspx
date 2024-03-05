<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AIcopyTrading.aspx.cs" Inherits="LMSBackOfficeWebApplication.AIcopyTrading" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    <!-- [ Sidebar Menu ] start -->
    <nav class="pc-sidebar">
        <div class="navbar-wrapper">
            <div class="m-header">
                <a href="index.html" class="b-brand text-primary text-decoration-none">
                    <!-- ========   Change your logo from here   ============ -->
                    <img src="Content/images/logo-v-light.png" class="img-fluid logo-lg" width="140" alt="logo">
                    <span class="badge bg-light-success rounded-pill ms-2 theme-version">v1.0</span>
                </a>
            </div>
            <div class="navbar-content">
                <div class="card pc-user-card">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="flex-shrink-0">
                                <img src="Content/images/user/avatar-1.jpg" alt="user-image" class="user-avtar wid-45 rounded-circle" />
                            </div>
                            <div class="flex-grow-1 ms-3 me-2">
                                <h6 class="mb-0">Jonh Smith</h6>
                                <small>Administrator</small>
                            </div>
                            <a class="btn btn-icon btn-link-secondary avtar" data-bs-toggle="collapse" href="#pc_sidebar_userlink">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-sort-outline"></use>
                                </svg>
                            </a>
                        </div>
                        <div class="collapse pc-user-links" id="pc_sidebar_userlink">
                            <div class="pt-3">
                                <a href="#!">
                                    <i class="ti ti-user"></i>
                                    <span>My Account</span>
                                </a>
                                <a href="#!">
                                    <i class="ti ti-settings"></i>
                                    <span>Settings</span>
                                </a>
                                <a href="#!">
                                    <i class="ti ti-lock"></i>
                                    <span>Lock Screen</span>
                                </a>
                                <a href="#!">
                                    <i class="ti ti-power"></i>
                                    <span>Logout</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <ul class="pc-navbar">
                    <li class="pc-item pc-caption">
                        <label>Navigation</label>
                    </li>
                    <li class="pc-item">
                        <a href="Default.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-status-up"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Dashboard</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="KYC.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-document-filter"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">KYC</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-dollar-square"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Bonus</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-user-add"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Membership</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-presentation-chart"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">AI Copy Trading</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-share-bold"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Network</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-keyboard"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Wallet</span>
                        </a>
                    </li>
                    <li class="pc-item">
                        <a href="Bonus.aspx" class="pc-link">
                            <span class="pc-micon">
                                <svg class="pc-icon">
                                    <use xlink:href="#custom-direct-inbox"></use>
                                </svg>
                            </span>
                            <span class="pc-mtext">Downloads</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- [ Sidebar Menu ] end -->

    <div class="offcanvas pc-announcement-offcanvas offcanvas-end" tabindex="-1" id="announcement" aria-labelledby="announcementLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="announcementLabel">What's new announcement?</h5>
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
                    <h5 class="mb-3">Able Pro is Redesigned</h5>
                    <p class="text-muted">Able Pro is completely renowed with high aesthetics User Interface.</p>
                    <img src="Content/images/layout/img-announcement-1.png" alt="img" class="img-fluid mb-3" />
                    <div class="row">
                        <div class="col-12">
                            <div class="d-grid">
                                <a
                                    class="btn btn-outline-secondary"
                                    href="https://1.envato.market/zNkqj6"
                                    target="_blank">Check Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">
                    <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                        <div class="badge bg-light-warning f-12">Offer</div>
                        <p class="mb-0 text-muted">2 hour ago</p>
                        <span class="badge dot bg-warning"></span>
                    </div>
                    <h5 class="mb-3">Able Pro is in best offer price</h5>
                    <p class="text-muted">Download Able Pro exclusive on themeforest with best price. </p>
                    <a
                        href="https://1.envato.market/zNkqj6"
                        target="_blank">
                        <img src="Content/images/layout/img-announcement-2.png" alt="img" class="img-fluid" /></a>
                </div>
            </div>

            <p class="text-span mt-4">Yesterday</p>
            <div class="card mb-3">
                <div class="card-body">
                    <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                        <div class="badge bg-light-primary f-12">Blog</div>
                        <p class="mb-0 text-muted">12 hour ago</p>
                        <span class="badge dot bg-warning"></span>
                    </div>
                    <h5 class="mb-3">Featured Dashboard Template</h5>
                    <p class="text-muted">Do you know Able Pro is one of the featured dashboard template selected by Themeforest team.?</p>
                    <img src="Content/images/layout/img-announcement-3.png" alt="img" class="img-fluid" />
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">
                    <div class="align-items-center d-flex flex-wrap gap-2 mb-3">
                        <div class="badge bg-light-primary f-12">Announcement</div>
                        <p class="mb-0 text-muted">12 hour ago</p>
                        <span class="badge dot bg-warning"></span>
                    </div>
                    <h5 class="mb-3">Buy Once - Get Free Updated lifetime</h5>
                    <p class="text-muted">Get the lifetime free updates once you purchase the Able Pro.</p>
                    <img src="Content/images/layout/img-announcement-4.png" alt="img" class="img-fluid" />
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
                        <div class="col-md-12">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="javascript: void(0)">AI Copy Trading</a></li>
                            </ul>
                        </div>
                        <div class="col-md-12">
                            <div class="page-header-title">
                                <h2 class="mb-0">AI Copy Trading</h2>
                            </div>
                        </div>
                    </div>
                    <iframe src="https://www.myfxbook.com/forex-charts/most-viewed" class="w-100 mt-4 vh-100" title="AI Copy Trading"></iframe>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->
            <!-- [ Main Content ] start -->
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
                                        <img src="https://ableproadmin.com/assets/images/customizer/caption-on.svg" alt="img" class="img-fluid">
                                    </button>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="d-grid">
                                    <button class="preset-btn btn-img btn" data-value="false" onclick="layout_caption_change('false');" data-bs-toggle="tooltip" title="Caption Hide">
                                        <img src="https://ableproadmin.com/assets/images/customizer/caption-off.svg" alt="img" class="img-fluid">
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
                                            <img src="https://ableproadmin.com/assets/images/customizer/ltr.svg" alt="img" class="img-fluid">
                                        </button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn-img btn" data-value="true" onclick="layout_rtl_change('true');" data-bs-toggle="tooltip" title="RTL">
                                            <img src="https://ableproadmin.com/assets/images/customizer/rtl.svg" alt="img" class="img-fluid">
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
                                            <img src="https://ableproadmin.com/assets/images/customizer/full.svg" alt="img" class="img-fluid">
                                        </button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="d-grid">
                                        <button class="preset-btn btn-img btn" data-value="true" onclick="change_box_container('true')" data-bs-toggle="tooltip" title="Fixed Width">
                                            <img src="https://ableproadmin.com/assets/images/customizer/fixed.svg" alt="img" class="img-fluid">
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
