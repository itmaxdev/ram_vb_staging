<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Ram.cd.Login" %>


<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>


<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="keywords" content="" />
    <meta name="decription" content="" />

    <!-- Title -->
    <title>RAM</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>

    <!-- Fav Icon -->
    <link rel="icon" href="Favicon/favicon.ico" />

    <!-- Include Bootstrap -->
    <link rel="stylesheet" href="bootstrap/bootstrap/css/bootstrap.min.css" type="text/css"/>

    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />

    <!-- Main StyleSheet -->
    <link rel="stylesheet" href="css/main-style.css" type="text/css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" type="text/css" />

    
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/settings.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/owl.theme.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/preset.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/style.css" />
    <link rel="stylesheet" id="layout" href="NewSlider/css/lay_colors/wide.css" />
    <link rel="stylesheet" id="colorChem" href="NewSlider/css/lay_colors/color1.css" />

    <style type="text/css">
        .header-inner ul li:first-child a:after {
            content: "";
            clear: both;
            display: none;
            width: 100%;
            height: 3px;
            background-color: #E3C600;
        }


        .header-inner ul li:nth-child(2) a:after {
            content: "";
            clear: both;
            display: block;
            width: 100%;
            height: 3px;
            background-color: #E3C600;
        }

        .padding2 {
            padding: 2px !important;
            width: 185px
        }
    </style>
    <script src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function nothuman(s) {
            var response = grecaptcha.getResponse();
            response = "shaun";
            if (response.length == 0) {
                swal('Invalid Recaptcha');
                return false;
            }
            else {
                swal({
                    text: "Please wait.",
                    button: false
                });

                var imri = document.getElementById('txtIMEI');
                var outputres = document.getElementById('results');

                var result = PageMethods.VerifyIMEI(imri.value, function (response) {
                    outputres.innerHTML = response;
                    imri.value = '';
                    swal.close();
                });

            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server" ID="scriptmanager" EnableEmbeddedjQuery="false" EnablePageMethods="true">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryExternal.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryPlugins.js" />
            </Scripts>
        </telerik:RadScriptManager>

         <uc2:SiteHeader runat="server" ID="SiteHeader1" />

        <!-- mobileheader-area start -->
        <div class="mobileheader-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a class="navbar-brand" href="/Default.aspx">
                                <img src="img/logo.png" alt="logo" />
                            </a>
                            <button class="hamburger hamburger--squeeze navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                </ul>
                                <div class="main-menu-part">
                                    <ul>
                                        <li><a href="/"><%=GetContent("MenuHome") %> </a></li>
                                        <li><a href="/Services.aspx"><%=GetContent("MenuServices") %></a></li>
                                        <li><a href="#"><%=GetContent("MenuNews") %></a></li>
                                        <li><a href="#"><%=GetContent("MenuFAQ") %></a></li>
                                        <li><a href="#"><%=GetContent("MenuContacts") %></a></li>
                                        <li><a href="/Default.aspx?Language=2">FR</a></li>
                                        <li><a href="/Default.aspx?Language=1">EN</a></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobileheader-area end -->

        
        <!-- New SLider -->
        <uc3:SiteSlider runat="server" ID="SiteSlider1" />
   
     

        <div class="degg-area" style="height: 20px;">
            <div class="container">
                <div class="degg-top">
                    <h2><%=GetContent("Login_3SimpleSteps") %></h2>
                </div>
            </div>
        </div>

        <!-- vry-area start -->
        <div class="vry-area">
            <div class="container-full">
                <div class="row no-gutters">
                    <div class="col-md-9 col-lg-12">
                        <div class="vry-right">
                            <div class="vry-b1">
                                <p></p>
                                <div class="row no-gutters">
                                    <div class="col-lg-5 col-md-5">
                                        <input class="forminput" runat="server" type="email" name="txtEmail" id="txtEmail" />
                                    </div>
                                    <div class="col-lg-5 col-md-5">
                                        <input class="forminput" type="password" autocomplete="off" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^\da-zA-Z])(.{8,25})$" maxlength="25" runat="server" name="txtPass" id="txtPass" />
                                    </div>
                                    <div class="col-lg-2 col-md-2">
                                        <asp:Button Width="185" CssClass="submit forminputbutton padding2" runat="server" ID="btnLogin" Text="> Login" OnClick="btnLogin_Click" />
                                        <button class="submit forminputbutton padding2" style="margin-top: 10px;" type="button" id="Button1" onclick="window.location.href='Registration.aspx';">
                                            > <%=GetContent("RegisterButton") %>
                                        </button>
                                    </div>
                                    <telerik:RadNotification ID="RadNotification1" runat="server" Position="Center" RenderMode="Auto"></telerik:RadNotification>
                                </div>
                            </div>
                            <!-- degg_top-area start -->
                            <div class="degg_top-area">
                                <div class="container" id="results" name="results">
                                </div>
                            </div>
                            <!-- degg_top-area end -->

                            <!-- degg-area start -->
                            <!-- degg-area end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- vry-area end -->


        <uc1:SiteFooter runat="server" ID="SiteFooter" />
      <!-- Main jQuery -->
            <!-- Main jQuery -->
            <script src="jquery/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>

            <!-- Bootstrap Propper jQuery -->
            <script src="js/popper.js"></script>

            <!-- Bootstrap jQuery -->
            <script src="bootstrap/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

            <!-- Fontawesome Script -->
            <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

            <!-- Custom jQuery -->
            <script src="js/scripts.js"></script>

            <script src="js/ziehharmonika.js"></script>
            <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>


            <script type="text/javascript" src="NewSlider/js/jquery.themepunch.revolution.min.js"></script>
            <script type="text/javascript" src="NewSlider/js/jquery.themepunch.tools.min.js"></script>
            <script type="text/javascript" src="NewSlider/js/owl.carousel.js"></script>
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
            <script type="text/javascript" src="NewSlider/js/gmaps.js"></script>
            <script type="text/javascript" src="NewSlider/js/jquery.magnific-popup.js"></script>
            <script type="text/javascript" src="NewSlider/js/wow.min.js"></script>
            <script type="text/javascript" src="NewSlider/js/mixer.js"></script>
            <script type="text/javascript" src="NewSlider/js/theme.js"></script>


    </form>
</body>
</html>
