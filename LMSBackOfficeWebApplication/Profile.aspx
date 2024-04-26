<%@ Page Title="Tradix : Learning Management BackOffice System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" EnableViewState="true" Inherits="LMSBackOfficeWebApplication.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .btn-tr:hover {
            color: inherit;
        }
    </style>



     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <script>
        $(document).ready(function () {
            // Initialize date picker
            $("#txtDate").datepicker({
                dateFormat: 'yy-mm-dd',
                changeYear: true, // Enable year selector
                onSelect: function (selectedDate) {
                    $("#txtDate").val(selectedDate);

                    $("#calendarDiv").hide();
                    // Call a JavaScript function to handle further processing if needed
                    handleDate(selectedDate);
                    return false; // Prevent default behavior (postback)
                }
            });

            // Show calendar on button click
            $("#btnShowCalendar").click(function () {
                $("#calendarDiv").toggle();
            });
        });

        // Function to handle the selected date
        function handleDate(selectedDate) {
            // Send the selected date to the server using AJAX
            $.ajax({
                url: 'YourPage.aspx/ProcessDate',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({ selectedDate: selectedDate }),
                success: function (response) {
                    // Handle the response from the server if needed
                    alert("Date successfully sent to server.");
                },
                error: function (xhr, status, error) {
                    // Handle errors if any
                    console.error(xhr.responseText);
                }
            });
        }
    </script>
    <script>
        function showCalendar() {
            $("#txtDate").datepicker("show");
        }
    </script>

    <main>


        <div class="offcanvas pc-announcement-offcanvas offcanvas-end" tabindex="-1" id="announcement" aria-labelledby="announcementLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="announcementLabel">What's new?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="col-md-12 text-center">
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
                <div class="banner kyc">
                    <div class="banner-caption">
                        <h2 class="text-white">More Referrals, Huge Bonus!</h2>
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
                                <div class="page-header-title">
                                    <h2 class="mb-0">Profile</h2>
                                    <h5 id="ResponseMessage" style="display: none;" runat="server"></h5>
                                </div>
                            </div>
                            <div class="col-md-6 text-end">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0)">Profile</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <div class="card m-0 h-100">
                    <div class="card-body">
                        <div class="container rounded bg-white mt-5 mb-5">
                            <div class="row">
                                <div class="col-md-3 border-right mb-4 mb-md-0">
                                    <div class="d-flex flex-column py-4 align-items-center text-center profile-pic">
                                        <img class="rounded-circle" width="150" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                                        <span class="font-weight-bold">
                                            <h6>
                                                <asp:Label runat="server" ID="lblUserName"></asp:Label></h6>
                                        </span>
                                        <span>
                                            <asp:Label runat="server" ID="lblEmail"></asp:Label>
                                        </span><span></span>
                                    </div>
                                    

                                </div>

                                <div class="col-md-5 border-right mb-4 mb-md-0">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4 class="text-right m-0">Profile Settings <span class="badge text-bg-warning text-sm">KYC Status: Pending</span></h4>
                                        
                                        <asp:Button runat="server" ID="btnEdit"  CausesValidation="false" CssClass="btn btn-shadow btn-tr btn-sm" Text="Edit" OnClick="btnEdit_Click" />
                                

                                    </div>
                                                                        <div class="row mt-2">
                                                                                                                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="profileValidation" runat="server" ForeColor="Red"/> 
                                        <div class="col-md-12 form-group">
                                            <label class="labels">User Name</label>
                                            <asp:TextBox CssClass="form-control mw-100" ID="txtUserName" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-md-12 form-group">
                                            <label class="labels">Full Name</label>
                                            <asp:TextBox CssClass="form-control mw-100" ID="txtfirstName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFirstName" CssClass="profile-input-error" runat="server" ControlToValidate="txtfirstName" ErrorMessage="Member Full Name can not be empty." ValidationGroup="profileValidation" />
                                        </div>
                                    </div>
                                    <div class="row mt-2">
    <div class="col-md-12 form-group">
<div style="display: flex; flex-direction: column;">
    <div>
        <label class="labels">Date of birth</label>
    </div>
    <div style="display: flex;">
        <asp:TextBox ID="txtDate" runat="server"  ClientIDMode="Static" onclick="showCalendar();" />
             <asp:RequiredFieldValidator ID="rfvDOB" runat="server" CssClass="profile-input-error" ControlToValidate="txtDate" ErrorMessage="DOB is required." ValidationGroup="profileValidation" />
                                       
        <span id="calendarIcon" style="cursor: pointer;">
            <img src="calendar_icon.png" alt="" onclick="showCalendar();" width="20" height="20" />
        </span>
    </div>
</div>


           
                                                    <div id="calendarDiv" style="display: none;">
    <asp:Calendar ID="calDate" runat="server"></asp:Calendar>
</div>
        </div>
</div>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <label class="labels">Mobile Number</label>
                                            <asp:TextBox TextMode="Number" CssClass="form-control mw-100" ID="txtMobileNumber" runat="server"></asp:TextBox>
                                        </div>
                                        <%--        <div class="col-md-12 form-group">
            <label class="labels">Address Line 1</label>
            <asp:TextBox class="form-control mw-100" ID="txtAddressLine1" runat="server"></asp:TextBox>
        </div>--%>
                                        <%--        <div class="col-md-12 form-group">
            <label class="labels">State</label>
            <asp:TextBox class="form-control mw-100" ID="txtAddressLine2" runat="server"></asp:TextBox>
        </div>--%>
                                        <div class="col-md-12 form-group">
                                            <label class="labels">Email ID</label>
                                            <asp:TextBox CssClass="form-control mw-100" ID="txtEmail" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" CssClass="profile-input-error" ControlToValidate="txtEmail" ErrorMessage="Email is required." ValidationGroup="profileValidation" />
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" CssClass="profile-input-error" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="profileValidation" />
                                            <asp:CustomValidator ID="cvEmail" runat="server" CssClass="profile-input-error" ControlToValidate="txtEmail" ErrorMessage="Email already exists." ClientValidationFunction="validateEmail" />
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <label class="labels">Gender</label>
                                            <div class="d-flex gap-3">
                                                <div class="d-inline-flex align-items-center gap-1">
                                                    <asp:RadioButton ID="rbMale" runat="server" Text="male" GroupName="Gender" AutoPostBack="false" OnCheckedChanged="rbGender_CheckedChanged" />
                                                </div>
                                                <div class="d-inline-flex align-items-center gap-1">
                                                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender" AutoPostBack="false" OnCheckedChanged="rbGender_CheckedChanged" />

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    
                                    
                                    
                                    <div class="row">
    <div class="col-md-12 form-group">
        <label cssclass="labels">Wallet Type</label>
        <asp:DropDownList ID="ddlWalletType"  name="wallettypes" CssClass="form-control mw-100" CausesValidation="false" runat="server">
                        <asp:ListItem Text="Select Wallet" Value="" Selected="True" />

            
                        <asp:ListItem Text="USDT" Value="USDT" />
                          <asp:ListItem Text="TRC20" Value="TRC20" />
                         <asp:ListItem Text="TRON" Value="TRON" />
        </asp:DropDownList>
    </div>
                  
</div>
           
                                    
                                                                        <div class="row mt-2">
                                        <div class="col-md-12 form-group">
                                            <label class="labels">Wallet Address</label>
                                            <asp:TextBox CssClass="form-control mw-100" ID="txtWalletAddress" MaxLength="50" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <label cssclass="labels">Country</label>
                                            <asp:DropDownList ID="countries" name="countries" CssClass="form-control mw-100" required="required" runat="server">
                                                <asp:ListItem Text="Select Country" Value="" Selected="True" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" CssClass="profile-input-error" ControlToValidate="countries" ErrorMessage="Country selection is required." InitialValue="" ValidationGroup="profileValidation" />
                                        </div>
                  
                                    </div>
                                                                        <div class="row">
                                        <div class="col-md-12 form-group">
                                            <label cssclass="labels">Nationality</label>
                                            <asp:DropDownList ID="nationalities" name="nationalities" CssClass="form-control mw-100"  runat="server">
                                                <asp:ListItem Text="Select Nationality" Value="" Selected="True" />
                                            </asp:DropDownList>
                                            <%--<asp:RequiredFieldValidator ID="rfvNationality" runat="server" CssClass="profile-input-error" ControlToValidate="nationalities" ErrorMessage="Nationality selection is required." InitialValue="" ValidationGroup="profileValidation" />--%>
                                        </div>
                  
                                    </div>
                                    <div class="form-group">

                                        <asp:Button CssClass="btn btn-tr btn-shadow btn-sm text-end profile-button" CausesValidation="true" Text="Cancel" runat="server" ID="btnCancel" Enabled="true" OnClick="btnCancel_Click" />
                                        <asp:Button CssClass="btn btn-tr btn-shadow btn-sm text-end profile-button" CausesValidation="true" Text="Update Profile" runat="server" ID="btnUpdate" Enabled="true" ValidationGroup="profileValidation" OnClick="btnUpdate_Click" />
                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="card mb-3">
                                        <div class="card-header">
                                            <h6 class="m-0 text-white">My Membership(s)</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-evenly">
                                                <span>
                                                    <h4>
                                                        <asp:Label runat="server" ID="lblMembership"></asp:Label></h4>

                                                </span>
                                                <%--<img src="Content/images/Memberships/6.png" width="150" class="img-fluid" alt="" />--%>
                                                <asp:Image ID="imgMembership" runat="server" CssClass="img-fluid" Width="150" AlternateText="" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h6 class="m-0 text-white">My Rank</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-evenly">
                                                <span>
                                                    <h4>
                                                        <asp:Label runat="server" ID="lblRank"></asp:Label></h4>
                                                </span>
                                                <img src="Content/images/Ranks/current-rank.gif" height="100" width="100">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
    <script>
        // Get the elements by class name
        const elements = document.getElementsByClassName("profile-input-error");

        // Loop through the elements
        for (let i = 0; i < elements.length; i++) {
            // Get the computed style for each element
            const computedStyle = window.getComputedStyle(elements[i]);

            // Get the visibility property value
            const visibility = computedStyle.getPropertyValue('visibility');

            // Check if visibility is set to 'hidden'
            if (visibility === 'hidden') {
                // Add 'display: none' style
                elements[i].style.display = 'none';
            }
        }


    </script>
</asp:Content>
 
