<%@ Page Title="Login" Language="C#" CodeBehind="Login.aspx.cs" Inherits="LMSBackOfficeWebApplication.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <!-- Include common CSS files -->
        
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
        <link href="./Content/css/style.css" rel="stylesheet" />
        <link href="./Content/css/icons.css" rel="stylesheet" />
 <link href="./Content/css/typography.css" rel="stylesheet" />
    </head>
    <header class="v-header w-100 py-3">
        <div class="mobilenav d-lg-none">
            <div class="collapse" id="navbarToggleExternalContent">
              <div class="bg-dark p-4">
                <div class="header-nav">
                  <ul class="p-0 m-0">
                    <li> <a href="index.html">Home</a> </li>
                    <li> <a href="#master-head">about us</a> </li>
                    <li> <a href="#v-course-list">courses</a> </li>
                    <li> <a href="#">memberships</a> </li>
                    <li> <a href="#v-educators">educators</a> </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
  <div class="container text-center">
    <div class="row gap-3 gap-md-0 align-items-center flex-column flex-md-row just-content-center justify-content-md-between">
      <div class="col flex-grow-0 d-flex justify-content-center align-items-center gap-4">
        <i class="icon-fi-br-menu-burger d-md-none"></i>
        <a href="/"><img src="./Content/images/tradiix-logo.png" alt="Vewards" class="header-logo"/></a>
      </div>
      <div class="col flex-grow-1 d-none d-lg-block">
        <div class="header-nav">
          <ul class="p-0 m-0">
            <li> <a href="index.html">Home</a> </li>
            <li> <a href="#master-head">about us</a> </li>
            <li> <a href="#v-course-list">courses</a> </li>
            <li> <a href="#">memberships</a> </li>
            <li> <a href="#v-educators">educators</a> </li>
          </ul>
        </div>
      </div>

      <div class="col text-md-end flex-grow-0 justify-content-center d-flex gap-3">
        <nav class="navbar navbar-dark d-lg-none p-0">
          <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
        </nav>
        <a  href="Register.Aspx" class="btn btn-outline-light rounded-5 text-capitalize px-4">register</a>
        <button data-bs-toggle="modal" data-bs-target="#loginModal" type="button" class="btn btn-primary btn-outline-light text-nowrap rounded-5 d-none text-capitalize px-4">Login</button>
      </div>
    </div>
  </div>
</header>
<body>
    <section id="master-head" class="pb-5"><!-- Master Header -->
  <div class="container py-5 pt-xs-0 position-relative">
    <div class="row align-items-center">
      <div class="col-md-8 text-white mb-md-0 mb-5">
        <div class="captionbox">
          <h1 style="font-size: clamp(1.25rem, -0.1293rem + 6.8966vw, 3.75rem);">Master the Art of Trading with Tradiix</h1>
          <p>Your journey to a transformed financial future starts here. Welcome to Tradiix, where possibilities become profits!</p>
          <button type="button" class="btn btn-primary btn-outline-light text-nowrap rounded-5 text-capitalize px-4">Start Learning</button>
        </div>
      </div>
      <div class="col-md-4">
          <div class="col-md-12 text-center">
            <h5  id="ResponseMessage" runat="server" style="display: none;"></h5>
        </div>
        <form class="form" id="myForm" runat="server">
          <div class="mb-3">
            <label for="" class="text-white">What's your username?</label>
            <input class="form-control" type="text" name="username" id="username" placeholder="Username" required="required" runat="server"/>
          </div>
          <div class="mb-3">
            <label for="" class="text-white">Your password?</label>
            <input class="form-control" type="password" name="password" id="password" placeholder="password" required="required" runat="server"/>
          </div>
             <input type="hidden" id="successMessage" value="false" runat="server" />
          <div class="mb-3">
             <input type="submit" class="btn w-100 btn-primary btn-outline-light text-nowrap rounded-5 text-capitalize px-4" value="Login" id="btnSubmit" runat="server" onserverclick="btnLogin_Click" />
          </div>
          <div class="mb-3">
            <a href="https://app.tradiix.com/Login.aspx" target="_blank" class="text-white">Forgot Password?</a>
          </div>
        </form>
      </div>
    </div>
  </div>
  <span class="arrow-down vp-gradient"><i class="icon-arrow-1"></i></span>
</section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
    </html>