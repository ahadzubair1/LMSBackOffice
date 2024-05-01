<%@ Page Title="Register" Language="C#" CodeBehind="Register.aspx.cs" Inherits="LMSBackOfficeWebApplication.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <!-- Include common CSS files -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link href="./Content/css/style.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Include Select2 CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <!-- Include Select2 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <link href="./Content/css/icons.css" rel="stylesheet" />
    <link href="./Content/css/typography.css" rel="stylesheet" />
    <style>
        .btn:focus {
            box-shadow: none !important;
            outline: none !important;
        }

        .theGlobe {
            text-align: center;
            position: absolute;
            top: 70%;
            z-index: -1;
            right: 0;
            opacity: 0.6;
            left: 0;
            margin: 0 auto;
            transform: translateY(-50%);
        }

        #typewriter {
            white-space: pre-line;
        }

        .btn {
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            position: relative;
            text-align: center;
            min-width: 120px;
        }

            .btn span {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                margin: 0 auto;
                text-align: center;
                left: 0;
                right: 0;
            }

        .b-btn {
            min-width: 180px;
        }

        @supports (hanging-punctuation: first) and (font: -apple-system-body) and (-webkit-appearance: none) {
            h4, .h4 {
                font-size: 20px !important;
                line-height: 1 !important;
            }

            p {
                margin: revert !important;
            }

            .btn span {
                transform: translateY(-34%);
            }

            #btnSubmit {
                line-height: 2.4;
            }
        }
    </style>
</head>
<header class="v-header w-100 py-3">
    <div class="mobilenav d-lg-none">
        <div class="collapse" id="navbarToggleExternalContent">
            <div class="bg-dark p-4">
                <div class="header-nav">
                    <ul class="p-0 m-0">
                        <li><a href="index.html">Home</a> </li>
                        <li><a href="index.html#master-head">About Us</a> </li>
                        <li><a href="index.html#v-course-list">Courses</a> </li>
                        <li><a href="index.html#earn-box">Services</a> </li>
                        <li><a href="index.html#v-educators">Educators</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <div class="row gap-3 gap-md-0 align-items-center flex-column flex-md-row just-content-center justify-content-md-between">
            <div class="col flex-grow-0 d-flex justify-content-center align-items-center gap-4">
                <i class="icon-fi-br-menu-burger d-md-none"></i>
                <%--<a href="/">
                    <img src="./Content/images/tradiix-logo.png" alt="Vewards" class="header-logo"></a>--%>
                <a href="/" class="logo-lg tradiix-logo">
                    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 657.31 188">
                        <defs>
                            <linearGradient id="Dégradé_sans_nom_53" x1="462.59" y1="119.58" x2="659.59" y2="72.58" gradientUnits="userSpaceOnUse">
                                <stop offset="0.02" stop-color="#9d4c9d" />
                                <stop offset="0.52" stop-color="#ab4e9d" />
                                <stop offset="1" stop-color="#bc57a1" />
                            </linearGradient>
                            <linearGradient id="Dégradé_sans_nom_53-2" x1="459.01" y1="104.58" x2="656.01" y2="57.58" xlink:href="#Dégradé_sans_nom_53" />
                        </defs>
                        <path class="cls-1" d="M149.71,113.27l14.65,24.56c-.64.06-1.09.13-1.54.13-7.62,0-15.24,0-22.85,0a2.17,2.17,0,0,1-2.24-1.4c-3.58-7.26-7.24-14.48-10.81-21.74a2.63,2.63,0,0,0-2.85-1.7,55.57,55.57,0,0,1-7.3,0c-1.73-.13-2.37.54-2.79,2.06-1.82,6.62-3.75,13.21-5.59,19.82-.81,2.89-.75,2.92-3.65,2.92H85c1-3.57,2-6.92,3-10.27q5.58-19.45,11.14-38.92c.46-1.61,1.09-2.33,3-2.28,6.15.18,12.31.06,18.46.06.48,0,1,0,1.79.07-.73,2.64-1.38,5.13-2.12,7.59-.56,1.86-.51,2,1.38,2,9.32,0,18.64,0,28,.06a2.62,2.62,0,0,0,2.84-2.06q1.69-5.86,3.38-11.73c.41-1.41-.44-1.76-1.54-1.81s-2.19,0-3.28,0H101.54c.58-2,1.06-3.79,1.56-5.52,1.07-3.67,2.12-7.35,3.28-11a2,2,0,0,1,1.44-1.1q29.72-.08,59.41,0a12.22,12.22,0,0,1,12.31,14.31,57.94,57.94,0,0,1-1.72,7.08c-1,3.63-2.14,7.23-3.17,10.85A23.7,23.7,0,0,1,159,112.11a28.91,28.91,0,0,1-5.92.94C152.18,113.17,151.22,113.18,149.71,113.27Z" />
                        <path class="cls-1" d="M247.54,98.59l4.24-14.8c.53-1.86-.06-2.86-2-3s-3.9-.07-5.85-.08c-7.3,0-14.61-.11-21.92-.13a3.31,3.31,0,0,0-3.39,2.75c-1.75,6.14-3.54,12.27-5.27,18.41-.91,3.21-.87,3.14,2.59,3.13q24.59,0,49.18,0c3.07,0,3.18,0,2.33,3-2.72,9.52-5.55,19-8.28,28.52a2,2,0,0,1-2.31,1.63c-6.81-.08-13.63,0-20.72,0,.73-2.55,1.38-4.91,2.08-7.26.93-3.15,1.88-6.28,2.84-9.42.36-1.18-.1-1.51-1.25-1.5q-15.07.06-30.16,0a1.76,1.76,0,0,0-2,1.55c-1.45,5.15-2.94,10.28-4.51,15.4a1.93,1.93,0,0,1-1.36,1.15c-6.89.07-13.77.05-20.66,0a4.06,4.06,0,0,1-.74-.18c1-3.49,2-7,3-10.44,2.58-9,5.14-18,7.75-27,2.31-7.93,4.47-15.91,7.08-23.74,1.72-5.15,4.59-9.75,9.81-12.17a12.23,12.23,0,0,1,4.88-1.24q23.58-.18,47.16-.1a32,32,0,0,1,7.06.58,11.56,11.56,0,0,1,8.76,13.9c-1.64,6.73-3.67,13.36-5.6,20a2,2,0,0,1-1.42,1.17c-6.88.07-13.77,0-20.65,0A3.19,3.19,0,0,1,247.54,98.59Z" />
                        <path class="cls-1" d="M276.75,137.87c7.23-25,14.41-49.79,21.66-74.83H355c6.74,0,11.35,2.81,13,8.74a16.87,16.87,0,0,1-.26,8.4c-2.93,10.91-6.18,21.73-9.38,32.57a2.13,2.13,0,0,1-1.5,1.31c-6.83.09-13.65.05-20.47,0a4.4,4.4,0,0,1-.88-.22c.28-1.1.51-2.14.81-3.17q4-13.73,8-27.45c.63-2.15.22-2.6-2-2.59-8.1,0-16.21.06-24.31,0-1.5,0-2.23.3-2.68,1.9-3.38,11.93-6.87,23.82-10.36,35.71-.38,1.27-.18,1.78,1.26,1.77,8.16,0,16.33,0,24.5,0h23.94c.42,0,.84,0,1.45.07a19.29,19.29,0,0,1-3.57,8.1,22.66,22.66,0,0,1-13.85,9.46,8.48,8.48,0,0,1-1.8.25q-29.43,0-58.86,0C277.65,138,277.29,137.91,276.75,137.87Z" />
                        <path class="cls-1" d="M369.1,137.76c1.12-3.91,2.21-7.69,3.31-11.47L386.33,78.1c1.35-4.67,2.68-9.35,4.11-14a1.8,1.8,0,0,1,1.35-1c7-.07,14,0,21.38,0-.32,1.31-.55,2.45-.87,3.57Q407.67,82.72,403,98.83q-5.46,18.83-10.95,37.65c-.25.86-.47,1.53-1.65,1.52-6.83-.06-13.65,0-20.48,0A4.56,4.56,0,0,1,369.1,137.76Z" />
                        <path class="cls-1" d="M458.07,63.27c-.87,3.07-1.68,6-2.54,9q-6,20.67-11.95,41.35-3.34,11.55-6.78,23.08c-.15.5-.77,1.22-1.18,1.23-7.12.07-14.24,0-21.62,0,.28-1.16.49-2.13.77-3.08q7.43-25.75,14.89-51.51c1.82-6.3,3.6-12.61,5.51-18.89a2.37,2.37,0,0,1,1.69-1.41c6.76-.11,13.52-.08,20.28-.07A4.74,4.74,0,0,1,458.07,63.27Z" />
                        <path class="cls-1" d="M0,80.58C.52,78.7,1,77,1.46,75.36c1.08-3.74,2.19-7.47,3.23-11.21a1.55,1.55,0,0,1,1.79-1.33q38.38,0,76.77,0a5,5,0,0,1,.87.24c-.3,1.31-.55,2.63-.92,3.93-1.12,4-2.31,7.93-3.43,11.91a2.1,2.1,0,0,1-2.4,1.84c-8.17-.1-16.33-.09-24.5,0-6.88,0-13.76.21-20.64.2-9.93,0-19.85-.11-29.78-.19C1.73,80.71,1,80.63,0,80.58Z" />
                        <path class="cls-1" d="M49,87c-.84,3-1.62,5.84-2.44,8.68Q43.28,107,40,118.28c-1.8,6.17-3.59,12.35-5.46,18.51a2,2,0,0,1-1.38,1.2c-6.88.08-13.76,0-20.64,0a4,4,0,0,1-.79-.18c1.9-6.53,3.8-13,5.66-19.44q4.34-15,8.64-30.11c.24-.83.49-1.53,1.67-1.52,6.82.06,13.64,0,20.46,0A4.84,4.84,0,0,1,49,87Z" />
                        <path class="cls-2" d="M536.34,125.27l-54.49,33.35-.52-.63,56.8-51.16,15.61,14.77c6.38,6,12.74,12.12,19.16,18.13a4.47,4.47,0,0,0,2.52,1.32c6.57.1,13.13.06,20.66.06L550.83,95.4,656.79,0l.52.5L571.93,93.74,629.76,153c-.62.05-1.55.16-2.49.16-20,0-40,0-60,0a6.37,6.37,0,0,1-5-2.05C553.78,142.52,545.16,134,536.34,125.27Z" />
                        <path class="cls-3" d="M474.92,45.86l48.61,46.89L417.76,188l-.41-.42,86.95-95L446.63,34.57l.37-.69h2.87c18.1,0,36.19,0,54.29-.05a6.59,6.59,0,0,1,5,2c8.58,8.38,17.32,16.6,25.83,25,1.82,1.81,3,1.77,5,.5,17.67-10.94,35.41-21.76,53.13-32.61a1.79,1.79,0,0,1,1.69-.24L536,81.58c-1.87-2.23-3.57-4.57-5.56-6.6q-13.56-13.8-27.27-27.44a5.11,5.11,0,0,0-3-1.61C492.07,45.8,484,45.86,474.92,45.86Z" />
                    </svg>
                </a>
            </div>
            <div class="col flex-grow-1 d-none d-lg-block">
                <div class="header-nav">
                    <ul class="p-0 m-0">
                        <li><a href="index.html">Home</a> </li>
                        <li><a href="index.html#master-head">About Us</a> </li>
                        <li><a href="index.html#v-course-list">Courses</a> </li>
                        <li><a href="index.html#earn-box">Services</a> </li>
                        <li><a href="index.html#v-educators">Educators</a> </li>
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
                <button data-bs-toggle="modal" data-bs-target="#registerModal" type="button" class="btn btn-outline-light rounded-5 text-capitalize d-none px-4"><span>register</span></button>
                <a href="Login.aspx" class="btn btn-primary btn-outline-light text-nowrap rounded-5  text-capitalize px-4"><span>Login</span></a>
            </div>
        </div>
    </div>
</header>
<body>
    <section id="master-head" class="pb-5">
        <!-- Master Header -->
        <div class="container py-5 pt-xs-0 position-relative">
            <div class="row align-items-center">
                <div class="col-md-6 text-white mb-md-0 mb-5">
                    <div class="captionbox">
                        <div class="captionbox">
                            <div class="neon">
                                <span class="text" data-text="Master the Art of Trading with Tradiix">Master the Art of Trading with Tradiix</span>
                                <span class="gradient"></span>
                                <span class="spotlight"></span>
                            </div>
                            <div id="typewriter"></div>
                        </div>
                        <div id="typewriter"></div>
                        <a href="#" target="_blank">
                            <button type="button" class="btn btn-primary btn-outline-light text-nowrap rounded-5 text-capitalize mt-4 px-4 b-btn"><span>Start Learning</span></button></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-12 text-center">
                        <h5 id="ResponseMessage" runat="server" style="display: none;"></h5>
                        <p id="ResponseMessage1" runat="server" class="text-white"></p>
                    </div>
                    <form class="form" id="myForm" runat="server">
                        <div class="row">
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Full Name</label>
                                <input class="form-control" type="text" name="fullname" id="fullname" placeholder="Full Name" required="required" runat="server" />
                            </div>

                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">UserName</label>
                                <input class="form-control" type="text" name="username" id="username" placeholder="Username" required="required" runat="server" />
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">E-mail</label>
                                <input class="form-control" type="email" name="email" id="email" placeholder="Email" required="required" runat="server" />
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Referral Code</label>
                                <input class="form-control" type="text" name="refcode" id="refcode" placeholder="Referral Code" required="required" runat="server" />
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Create Password</label>
                                <input class="form-control" type="password" name="password" id="password" placeholder="Create Password" required="required" runat="server" />
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Re-enter Password</label>
                                <input class="form-control" type="password" name="confirmpassword" id="confirmpassword" placeholder="Re-enter Password" required="required" runat="server" />
                            </div>

                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Phone</label>
                                <input class="form-control" type="number" name="phone" id="phone" placeholder="Phone Number" required="required" runat="server" />
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="" class="text-white">Country</label>
                                <asp:DropDownList ID="countries" name="countries" class="form-control" required="required" runat="server">
                                    <asp:ListItem Text="Select Country" Value="" Selected="True" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <input type="submit" class="btn w-100 btn-primary btn-outline-light text-nowrap rounded-5 text-capitalize px-4" value="Register" id="btnSubmit" runat="server" onserverclick="btnSubmit_Click" />
                            </div>
                            <div class="col-md-6">
                                <a href="Login.aspx" class="text-white d-block">Already Have an Account?</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <span class="arrow-down vp-gradient"><i class="icon-arrow-1"></i></span>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
    <script>

        "use strict"; // Paul Slaymaker, paul25882@gmail.com
        const body = document.getElementsByTagName("body").item(0);
        body.style.background = "#000";
        const TP = 2 * Math.PI;
        const CSIZE = 400;
        const CSO = 52;

        const ctx = (() => {
            let d = document.createElement("div");
            d.classList.add("theGlobe");
            d.style.textAlign = "center";
            body.append(d);
            let c = document.createElement("canvas");
            c.width = c.height = 2 * CSIZE;
            d.append(c);
            return c.getContext("2d");
        })();
        ctx.setTransform(1, 0, 0, 1, CSIZE, CSIZE);

        const ctxo = (() => {
            let c = document.createElement("canvas");
            c.width = c.height = 2 * CSO;
            return c.getContext("2d", { "willReadFrequently": true });
        })();
        ctxo.setTransform(1, 0, 0, 1, CSO, CSO);
        ctxo.lineWidth = 1;

        const ctxo2 = (() => {
            let c = document.createElement("canvas");
            c.width = c.height = 2 * CSO;
            return c.getContext("2d", { "willReadFrequently": true });
        })();
        ctxo2.setTransform(1, 0, 0, 1, CSO, CSO);

        onresize = () => {
            let D = Math.min(window.innerWidth, window.innerHeight) - 40;
            ctx.canvas.style.width = ctx.canvas.style.height = D + "px";
        }

        const getRandomInt = (min, max, low) => {
            if (low) return Math.floor(Math.random() * Math.random() * (max - min)) + min;
            else return Math.floor(Math.random() * (max - min)) + min;
        }

        function Color() {
            const CBASE = 64;
            const CT = 255 - CBASE;
            const RKO = Math.random();
            let GKO = Math.random();
            let BKO = Math.random();
            let RKK = 100 + 200 * Math.random();
            let GKK = 100 + 200 * Math.random();
            let BKK = 100 + 200 * Math.random();
            this.getRGB = () => {
                this.fr = 0.8 * (1 - Math.cos(RKO + t / this.RKF)) / 2;
                this.fg = 0.8 * (1 - Math.cos(GKO + t / this.GKF)) / 2;
                this.fb = 0.8 * (1 - Math.cos(BKO + t / this.BKF)) / 2;
                this.RK3 = 6 + 36 * (1 - Math.sin(t / RKK)) / 2;
                this.GK3 = 6 + 36 * (1 - Math.sin(t / GKK)) / 2;
                this.BK3 = 6 + 36 * (1 - Math.sin(t / BKK)) / 2;
                let red = Math.round(CBASE + CT * (1 + this.fr * Math.cos(this.RK2 + t / this.RK1) + (1 - this.fr) * Math.cos(this.RK2 + t / this.RK3)) / 2);
                let grn = Math.round(CBASE + CT * (1 + this.fg * Math.cos(this.GK2 + t / this.GK1) + (1 - this.fg) * Math.cos(this.GK2 + t / this.GK3)) / 2);
                let blu = Math.round(CBASE + CT * (1 + this.fb * Math.cos(this.BK2 + t / this.BK1) + (1 - this.fb) * Math.cos(this.BK2 + t / this.BK3)) / 2);
                return "rgb(" + red + "," + grn + "," + blu + ")";
            }
            this.randomize = () => {
                this.RK1 = 1000 + 1000 * Math.random();
                this.GK1 = 1000 + 1000 * Math.random();
                this.BK1 = 1000 + 1000 * Math.random();
                this.RK2 = TP * Math.random();
                this.GK2 = TP * Math.random();
                this.BK2 = TP * Math.random();
                this.RKF = 100 + 200 * Math.random();
                this.GKF = 100 + 200 * Math.random();
                this.BKF = 100 + 200 * Math.random();
            }
            this.randomize();
        }

        const dmx = new DOMMatrix([-1, 0, 0, 1, 0, 0]);
        const dmy = new DOMMatrix([1, 0, 0, -1, 0, 0]);
        const dmr = new DOMMatrix([0, 1, -1, 0, 0, 0]);

        var stopped = true;
        var start = () => {
            if (stopped) {
                stopped = false;
                requestAnimationFrame(animate);
            } else {
                stopped = true;
            }
        }
        //ctx.canvas.addEventListener("click", start, false);

        var t = 0;
        var animate = (ts) => {
            if (stopped) return;
            t++;
            if (!(t % 5)) draw();
            requestAnimationFrame(animate);
        }

        const S6 = Math.sin(TP / 6);
        const tta = [0, 0.5, S6, 1, S6, 0.5, 0, -0.5, -S6, -1, -S6, -0.5];
        const ttb = [0, 1, 2, 2, 2, 1, 0, -1, -2, -2, -2, -1];

        var drawTiles = () => {
            for (let i = 0; i < 12; i += 2) {
                let a1 = (i + 4) % 12, a2 = (i + 1) % 12, a3 = (i + 5) % 12, a4 = (i + 2) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4], CSIZE, CSIZE);
                ctx.drawImage(ctxo.canvas, 0, 0);
                a1 = (i + 4) % 12, a2 = (i + 1) % 12, a3 = (i + 3) % 12, a4 = (i + 0) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4], CSIZE, CSIZE);
                ctx.drawImage(ctxo.canvas, 0, 0);
            }
            ctxo2.putImageData(ctxo.getImageData(0, 0, 2 * CSO, 2 * CSO), 0, 0);
            ctxo2.fillStyle = "#00000010";
            ctxo2.fillRect(-CSO, -CSO, 2 * CSO, 2 * CSO);
            for (let i = 0; i < 12; i += 2) {
                let a1 = (i + 2) % 12, a2 = (i + 5) % 12, a3 = (i + 6) % 12, a4 = (i + 9) % 12;
                let b1 = (i + 1) % 12, b2 = (i + 0) % 12, b3 = (i + 3) % 12, b4 = (i + 4) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4],
                    CSIZE + (ttb[b1] + ttb[b2] * S6) * CSO, CSIZE + (ttb[b3] + ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
                a1 = (i + 9) % 12, a3 = (i + 5) % 12, a4 = (i + 8) % 12;
                b1 = (i + 3) % 12, b2 = (i + 4) % 12, b3 = (i + 7) % 12, b4 = (i + 6) % 12;
                ctx.setTransform(tta[a1], tta[i], tta[a3], tta[a4],
                    CSIZE + (ttb[b1] + ttb[b2] * S6) * CSO, CSIZE + (ttb[b3] + ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
            }
            ctxo2.fillStyle = "#00000020";
            ctxo2.fillRect(-CSO, -CSO, 2 * CSO, 2 * CSO);
            for (let i = 0; i < 12; i += 2) {
                let a1 = (i + 3) % 12, a4 = (i + 9) % 12;
                let b1 = (i + 8) % 12, b2 = (i + 7) % 12, b3 = (i + 4) % 12, b4 = (i + 5) % 12;
                ctx.setTransform(tta[a1], tta[i], tta[i], tta[a4],
                    CSIZE + (1.5 * ttb[b1] + 2 * ttb[b2] * S6) * CSO, CSIZE + (1.5 * ttb[b3] + 2 * ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
                a1 = (i + 6) % 12; let a2 = (i + 3) % 12; let a3 = (i + 3) % 12;
                b1 = (i + 5) % 12, b2 = (i + 4) % 12, b3 = (i + 1) % 12, b4 = (i + 2) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[i],
                    CSIZE + (ttb[b1] + ttb[b2] * S6) * CSO, CSIZE + (ttb[b3] + ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
            }
            ctxo2.fillStyle = "#00000030";
            ctxo2.fillRect(-CSO, -CSO, 2 * CSO, 2 * CSO);
            for (let i = 0; i < 12; i += 2) {
                let a1 = (i + 2) % 12, a2 = (i + 5) % 12, a4 = (i + 3) % 12;
                let b1 = (i + 4) % 12, b2 = (i + 5) % 12, b3 = (i + 8) % 12, b4 = (i + 7) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[i], tta[a4],
                    CSIZE + (1.5 * ttb[b1] + 2 * ttb[b2] * S6) * CSO, CSIZE + (1.5 * ttb[b3] + 2 * ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
                a1 = (i + 5) % 12, a2 = (i + 2) % 12; let a3 = (i + 7) % 12; a4 = (i + 4) % 12;
                b1 = (i + 10) % 12, b2 = (i + 9) % 12, b3 = (i + 6) % 12, b4 = (i + 7) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4],
                    CSIZE + (1.5 * ttb[b1] + 2 * ttb[b2] * S6) * CSO, CSIZE + (1.5 * ttb[b3] + 2 * ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
            }
            let id = ctxo.getImageData(0, 0, 2 * CSO, 2 * CSO);
            ctxo2.fillStyle = "#00000040";
            ctxo2.fillRect(-CSO, -CSO, 2 * CSO, 2 * CSO);
            for (let i = 0; i < 12; i += 2) {
                let a1 = (i + 2) % 12, a2 = (i + 11) % 12, a3 = (i + 7) % 12, a4 = (i + 4) % 12;
                let b1 = (i + 4) % 12, b2 = (i + 5) % 12, b3 = (i + 2) % 12, b4 = (i + 1) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4],
                    CSIZE + (1.5 * ttb[b1] + 2 * ttb[b2] * S6) * CSO, CSIZE + (1.5 * ttb[b3] + 2 * ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
                a1 = (i + 2) % 12, a2 = (i + 5) % 12, a3 = (i + 7) % 12, a4 = (i + 10) % 12;
                b1 = (i + 4) % 12, b2 = (i + 5) % 12, b3 = (i + 8) % 12, b4 = (i + 7) % 12;
                ctx.setTransform(tta[a1], tta[a2], tta[a3], tta[a4],
                    CSIZE + (1.5 * ttb[b1] + 2 * ttb[b2] * S6) * CSO, CSIZE + (1.5 * ttb[b3] + 2 * ttb[b4] * S6) * CSO);
                ctx.drawImage(ctxo2.canvas, 0, 0);
            }
        }

        var col = new Color();
        var path = new Path2D();
        path.moveTo(CSO, CSO);
        path.lineTo(CSO, 0);
        path.addPath(path, dmx);
        path.addPath(path, dmy);
        path.addPath(path, dmr);

        var draw = () => {
            var id = ctxo.getImageData(CSO + 1, CSO + 1, CSO - 1, CSO - 1);
            ctxo.putImageData(id, CSO, CSO);
            id = ctxo.getImageData(0, CSO + 1, CSO - 1, CSO - 1);
            ctxo.putImageData(id, 1, CSO);
            id = ctxo.getImageData(CSO + 1, 0, CSO - 1, CSO - 1);
            ctxo.putImageData(id, CSO, 1);
            id = ctxo.getImageData(0, 0, CSO - 1, CSO - 1);
            ctxo.putImageData(id, 1, 1);
            ctxo.strokeStyle = col.getRGB();
            ctxo.setLineDash([30 + 50 * (1 + Math.cos(t / 490)) / 2, 10 + 20 * (1 + Math.sin(t / 400)) / 2]);
            ctxo.lineDashOffset = t / 5;
            ctxo.stroke(path);
            drawTiles();
        }

        onresize();

        drawTiles();

        start();

    </script>
</body>
</html>
