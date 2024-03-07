<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Memberships.aspx.cs" Inherits="LMSBackOfficeWebApplication.Memberships" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
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
                                        href=""
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
                            href=""
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Ranks & Rewards</a></li>
                                </ul>
                            </div>
                            <div class="col-md-12">
                                <div class="page-header-title">
                                    <h2 class="mb-0">Ranks & Rewards</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->

                <div class="ranks-wrapper pb-5">
                    <div class="cards-w">
                        <div class="item">
                            <img src="Content/images/Memberships/1.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Memberships/2.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Memberships/3.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Memberships/4.png" alt="" />
                        </div>
                        <div class="item">
                            <img src="Content/images/Memberships/5.png" alt="" />
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
    </main>
</asp:Content>
