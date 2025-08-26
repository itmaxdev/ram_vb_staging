<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services.aspx.vb" Inherits="Ram.cd.Services" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>


<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <title>RAM</title>
    <meta name="google" content="notranslate" />

    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="keywords" content="" />
    <meta name="decription" content="" />
    <link rel="icon" href="Favicon/favicon.ico" />
    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/main-style.css" />
    <link rel="stylesheet" href="css/responsive.css" />

    <!-- Include All CSS -->
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
    <%--    <link rel="stylesheet" type="text/css" href="NewSlider/css/responsive.css" />--%>
    <link rel="stylesheet" id="layout" href="NewSlider/css/lay_colors/wide.css" />
    <link rel="stylesheet" id="colorChem" href="NewSlider/css/lay_colors/color1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                                <button class="hamburger hamburger--squeeze navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                                            <li class="active"><a href="/Services.aspx"><%=GetContent("MenuServices") %></a></li>
                                            <li><a href="/News.aspx"><%=GetContent("MenuNews") %></a></li>
                                            <li><a href="/FAQ.aspx"><%=GetContent("MenuFAQ") %></a></li>
                                            <li><a href="/Contacts.aspx"><%=GetContent("MenuContacts") %></a></li>
                                            <li><a href="?Language=2">FR</a></li>
                                            <li><a href="?Language=1">EN</a></li>
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

            <!-- mainbrs-area start -->
            <div class="mainbrs-area">

                <!-- dnbrs-area start -->
                <div class="dnbrs-area">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-6 col-lg-4" id="verifyblock" runat="server">
                                <div class="dnbrs-part">
                                    <img src="img/sr7.png" alt="images not found" />
                                    <h3 style="font-size: 21px !important"><%=GetContent("Services_Block1_Header") %></h3>
                                    <p style="font-size: 13px !important;">
                                        <%=GetContent("Services_Block1_Text") %>
                                    </p>
                                    <div class="dnbrs-btn" style="position:absolute; bottom:30px;">
                                        <a style="text-decoration:none;" href="verifier.aspx"><i class="fas fa-angle-right" aria-hidden="true" style="padding-right: 6px"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4" id="serviceregister" runat="server">
                                <div class="dnbrs-part">
                                    <img src="img/sr8.png" alt="images not found" />
                                    <h3 style="font-size: 21px !important"><%=GetContent("Services_Block2_Header") %></h3>
                                    <p style="font-size: 13px !important">
                                        <%=GetContent("Services_Block2_Text") %>
                                    </p>
                                    <div class="dnbrs-btn" style="position:absolute; bottom:30px;">
                                        <a style="text-decoration:none;" href="Services-Register-Dual-SIM.aspx"><i class="fas fa-angle-right" aria-hidden="true" style="padding-right: 6px"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4" id="paymentinfoserviceblock" runat="server">
                                <div class="dnbrs-part ">
                                    <img src="img/sr9.png" alt="images not found" />
                                    <h3 style="font-size: 21px !important"><%=GetContent("Services_Block3_Header") %></h3>
                                    <p style="font-size: 13px !important">
                                        <%=GetContent("Services_Block3_Text") %>
                                    </p>
                                    <br />
                                    <div class="dnbrs-btn" style="position:absolute; bottom:30px;">
                                        <a style="text-decoration:none;" href="payment-info.aspx"><i class="fas fa-angle-right" aria-hidden="true" style="padding-right: 6px"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- dnbrs-area end -->

                <!-- rndnbrs-area start -->
                <div class="dnbrs-area">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-6 col-lg-4" <%=CheckAllowed() %>>
                                <div class="dnbrs-part dnbrs-part2">
                                    <img src="img/sr10.png" alt="images not found" />
                                    <h3><%=GetContent("Services_Block4_Header") %></h3>
                                    <p>
                                        <%=GetContent("Services_Block4_Text") %>
                                    </p>
                                    <div class="dnbrs-btn" style="display: none;">
                                        <a style="text-decoration:none;" href="Services-Verify-Multiple-IMEI.aspx"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4" <%=CheckAllowed2() %>>
                                <div class="dnbrs-part">
                                    <img src="img/sr11.png" alt="images not found" />
                                    <h3><%=GetContent("Services_Block5_Header") %></h3>
                                    <p>
                                        <%=GetContent("Services_Block5_Text") %>
                                    </p>
                                    <div class="dnbrs-btn" style="display: none;">
                                        <a style="text-decoration:none;" href="Services-Block-Phone.aspx"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4" <%=CheckAllowed2() %>>
                                <div class="dnbrs-part">
                                    <img src="img/sr12.png" alt="images not found" />
                                    <h3><%=GetContent("Services_Block6_Header") %></h3>
                                    <p>
                                        <%=GetContent("Services_Block6_Text") %>
                                    </p>
                                    <div class="dnbrs-btn" style="display: none;">
                                        <a style="text-decoration:none;" href="Services-Unblock-Phone.aspx"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("ReadMore") %></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- rndnbrs-area end -->

            </div>
            <!-- mainbrs-area end -->

            <!-- footer-area start -->
            <uc1:SiteFooter runat="server" ID="SiteFooter" />
            <!-- footer-area end -->



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

        </div>
    </form>
</body>
</html>
