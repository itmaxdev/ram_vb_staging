<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Ram.cd._Default" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
    <!-- Meta setup -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="keywords" content="" />
    <meta name="decription" content="" />
    <title>Welcome</title> 
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>

    <link rel="icon" href="Favicon/favicon.ico" />
    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/main-style.css" />
    <link rel="stylesheet" href="css/responsive.css" />


    <!-- Include All CSS -->
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/css/bootstrap.min.css" />


        <link rel="stylesheet" type="text/css" href="NewSlider/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/settings.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/owl.theme.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/preset.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/style.css" />
    <link rel="stylesheet" type="text/css" href="NewSlider/css/responsive.css" />
    <link rel="stylesheet" id="layout" href="NewSlider/css/lay_colors/wide.css" />
    <link rel="stylesheet" id="colorChem" href="NewSlider/css/lay_colors/color1.css" />
    <style type="text/css">
        div.slide-up {
            height: 500px !important;
            overflow: hidden;
        }

            div.slide-up p {
                animation: 7s slide-up;
                margin-top: 0%;
            }

        @keyframes slide-up {
            from {
                margin-top: 100%;
                height: 300%;
            }

            to {
                margin-top: 0%;
                height: 100%;
            }
        }

        .dynamically:hover {
            transition-duration: 0.5s;
            padding-left: 40px;
        }
    </style>
</head>
<body>
    <div id="myModal" class="modal fsade" style="background-color: black !important;">
        <div class="modal-dialog" style="max-width: 800px;">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom-color: dodgerblue; background-color: #3b7dde !important; padding-left: 0px; padding-right: 0px;">
                    <button type="button" onclick="ClearIframe();" class="close" style="text-shadow: 0 1px 0 #fff; opacity: .75; font-size: 1.5rem; color: #000; line-height: 1; font-weight: 700; float: right; margin: -16px; margin-left: auto; padding: 16px; margin-right: 0px; background-color: transparent; border: none;" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body" style="color: white; background-color: #3b7dde !important;">
                    Cher utilisateur, 
                    <br />
                    <br />
Le registre d’appareil mobile (RAM) vous permet de connaitre la conformité de votre appareil en consultant le statut par SMS au 470, sur notre site <a href='https://ram.cd/verifier.aspx' 
style='color:rgb(200,200,250);font-weight:bold'>https://ram.cd/verifier.aspx</a>, ou avec le USSD *470#.
Consulter notre FAQ pour plus d'informations sur le RAM et ses services.
                    <br />
                    <br />
L’équipe RAM.

                    <br />

                </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server" style="background-color: #EFEFEF;">

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
                                        <li class="active"><a href="/"><%=GetContent("MenuHome") %> </a></li>
                                        <li><a href="/Services.aspx"><%=GetContent("MenuServices") %></a></li>
                                        <li><a href="/News.aspx"><%=GetContent("MenuNews") %></a></li>
                                        <li><a href="/FAQ.aspx"><%=GetContent("MenuFAQ") %></a></li>
                                        <li><a href="/Contacts.aspx"><%=GetContent("MenuContacts") %></a></li>
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


        <!-- banner_section_mobile -->
        <div class="banner_section_mobile">
            <div class="slides">
                <%=LoadMobileSlides() %>
            </div>
        </div>


        <section class="sliderSection">
            <div>
                <div class="row">
                    <div class="tp-banner gmanMinus" style="margin-top: 0px !important;">
                        <ul>
                            <li data-slotamount="7" data-transition="slideleft" data-masterspeed="1000">
                                <img src="img/Slider1-bg.jpg" />
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="-97"
                                    data-speed="1600"
                                    data-start="1500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <h2 class="slide-up"><%=GetContent("BannerText") %></h2>
                                        <span></span>
                                        <div class="px-contact-input" align="left" style="padding-top: 20px">
                                            <a class="gmanAA" href="/verifier.aspx" style="border: none !important; text-decoration: none;">
                                                <button type="button" onclick="nothuman(this);" align="left" class="float-left" style="margin: 0px; border: none !important;">
                                                    <i class="fa fa-angle-right"></i><%=GetContent("BannerButton") %>
                                                </button>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="175"
                                    data-y="40"
                                    data-hoffset="65"
                                    data-voffset="30"
                                    data-speed="2000"
                                    data-start="2500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <img src="img/plus-3.png" style="max-height: 20px" id="1" />
                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="440"
                                    data-y="90"
                                    data-hoffset="65"
                                    data-voffset="30"
                                    data-speed="2000"
                                    data-start="2500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <img src="img/plus-3.png" style="max-height: 12px" id="2" />
                                    </div>
                                </div>

                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="-65"
                                    data-voffset="-15"
                                    data-speed="1800"
                                    data-start="2000"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <img src="img/plus-3.png" style="max-height: 13px" id="3" />
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="110"
                                    data-voffset="-30"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="center"
                                    data-y="center"
                                    data-hoffset="85"
                                    data-voffset="-40"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <img src="img/Phone.png" />
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="right"
                                    data-y="center"
                                    data-hoffset="50"
                                    data-voffset="50"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <img src="img/Shape-new.png" />
                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="center"
                                    data-y="center"
                                    data-hoffset="195"
                                    data-voffset="-10"
                                    data-speed="1800"
                                    data-start="2000"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <img src="img/plus-2.png" style="max-height: 16px" id="4" />
                                    </div>
                                </div>
                            </li>
                            <li data-slotamount="7" data-transition="slideleft" data-masterspeed="1000">
                                <img src="img/Slider11.jpg" alt="" />
                                <%--slider image for red semi circle--%>
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="-97"
                                    data-speed="1600"
                                    data-start="1500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont g2">
                                        <h2><%=GetContent("Banner2Text") %></h2>
                                        <span style="width: 100px !important"></span>
                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="10"
                                    data-speed="2000"
                                    data-start="2500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <p style="max-height: 130px">
                                            <%=GetContent("Banner2Info") %>
                                        </p>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="455"
                                    data-voffset="0"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <a href="#">
                                            <img src="img/sr21.png" alt="icon" />
                                        </a>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="right"
                                    data-y="center"
                                    data-hoffset="50"
                                    data-voffset="50"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <img src="img/Shape-new.png" />
                                    </div>
                                </div>
                            </li>

                            <li data-slotamount="7" data-transition="slideleft" data-masterspeed="1000">
                                <img src="img/Slider33.jpg" alt="" />
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="-97"
                                    data-speed="1600"
                                    data-start="1500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont g2">
                                        <h2><%=GetContent("Banner3Text") %></h2>
                                        <span style="width: 100px !important"></span>
                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="10"
                                    data-speed="2000"
                                    data-start="2500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <p>
                                            <%=GetContent("Banner3Info") %>
                                        </p>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="455"
                                    data-voffset="0"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <a href="#">
                                            <img src="img/sr2-1.png" alt="icon" />
                                        </a>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="center"
                                    data-y="center"
                                    <%--                                 data-hoffset="595"
                                 data-voffset="50"--%>
                                    data-hoffset="600"
                                    data-voffset="50"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <img src="img/shade-red.png" />
                                        <%--slider image for red semi circle--%>
                                    </div>
                                </div>
                            </li>

                            <li data-slotamount="7" data-transition="slideleft" data-masterspeed="1000">
                                <img src="img/Slider22.jpg" alt="" />
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="-97"
                                    data-speed="1600"
                                    data-start="1500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont g2">
                                        <h2><%=GetContent("Banner4Text") %></h2>
                                        <span style="width: 100px !important"></span>
                                    </div>
                                </div>
                                <div class="tp-caption sfb"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="175"
                                    data-voffset="10"
                                    data-speed="2000"
                                    data-start="2500"
                                    data-easing="Power4.easeOut">
                                    <div class="revCont">
                                        <p>
                                            <%=GetContent("Banner4Info") %>
                                        </p>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="left"
                                    data-y="center"
                                    data-hoffset="455"
                                    data-voffset="0"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <a href="#">
                                            <img src="img/sr2-2.png" alt="icon" />
                                        </a>
                                    </div>
                                </div>
                                <div class="tp-caption sfb text-left"
                                    data-x="center"
                                    data-y="center"
                                    <%--                                 data-hoffset="595"
                                 data-voffset="50"--%>
                                    data-hoffset="600"
                                    data-voffset="50"
                                    data-speed="2000"
                                    data-start="3000"
                                    data-easing="Power4.easeOut">
                                    <div class="revBtn">
                                        <img src="img/shade-red.png" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- vrs-area start -->
        <div class="vrs-area" style="margin-bottom: 50px;">
            <div class="container">
                <div class="vrs_top">
                    <div class="row no-gutters">
                        <div class="col-lg-4 col-md-6 gmanBG" style="padding: 0px;" id="verifyblock" runat="server">
                            <div class="vrs-part_a1">
                                <h2><%=GetContent("VerifyBlock") %></h2>
                                <span class="vrs-sp_a1"></span>
                                <p><%=GetContent("VerifyBlockText") %></p>
                                <div class="vrs_btn">
                                    <a href="verifier.aspx" style="text-decoration: none;"><i class="fa fa-chevron-right" aria-hidden="true"></i>&nbsp;&nbsp;<%=GetContent("ReadMore") %></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gmanBG" style="padding: 0px;" id="registerblock" runat="server">
                            <div class="vrs-part_a2">
                                <h2><%=GetContent("RegisterBlock") %></h2>
                                <span class="vrs-sp_a1" style="margin-top: 40px"></span>
                                <p><%=GetContent("RegisterBlockText") %></p>
                                <div class="vrs_btn">
                                    <a href="Services-Register-Dual-SIM.aspx" style="text-decoration: none;"><i class="fas fa-chevron-right" aria-hidden="true"></i>&nbsp;&nbsp;<%=GetContent("ReadMore") %></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gmanBG" style="padding: 0px;" id="paymentinfoblock" runat="server">
                            <div class="vrs-part_a3">
                                <h2 style="padding-right: 15%;"><%=GetContent("RamFeesBlock") %></h2>
                                <span class="vrs-sp_a1"></span>
                                <p><%=GetContent("RamFeesBlockText") %></p>
                                <div class="vrs_btn">
                                    <a href="payment-info.aspx" style="text-decoration: none;"><i class="fas fa-chevron-right" aria-hidden="true"></i>&nbsp;&nbsp;<%=GetContent("ReadMore") %></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- vrs-area end -->

        <!-- deg-area start -->
        <div class="deg-area">
            <div class="container">
                <div class="deg-top" style="padding-top: 35px">
                    <h2><%=GetContent("VerifySteps") %></h2>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="deg-part_a1 justify-content-center" align="center">
                            <h2>01</h2>
                            <span class="drg_spn"></span>
                            <p style="min-height: 55px"><%=GetContent("VerifyStepsStep1") %></p>
                            <img src="img/NEW/RAM-HOMEPAGE_01.png" alt="images not found" class="gmanHover" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="deg-part_a2">
                            <h2>02</h2>
                            <span></span>
                            <p style="min-height: 55px"><%=GetContent("VerifyStepsStep2") %></p>
                            <img src="img/NEW/RAM-HOMEPAGE_02.png" alt="images not found" class="gmanHover" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="deg-part_a3">
                            <h2>03</h2>
                            <span></span>
                            <p style="min-height: 55px"><%=GetContent("VerifyStepsStep3") %></p>
                            <img src="img/NEW/RAM-HOMEPAGE_03.png" alt="images not found" class="gmanHover" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- deg-area end -->

        <!-- dndeg-area start -->
        <div class="dndeg-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="dndeg-part ">
                            <p style="width: 20%;"><a style="text-decoration: none;" class="dynamically" href="#"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("MoreDetails") %></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- dndeg-area end -->


        <!-- qsp-area start -->
        <div class="qsp-area faqbg">
            <div class="container">
                <div class="qsp-top">
                    <h2><%=GetContent("QuestionsAndAnswers") %></h2>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        <div class="qsp-part">
                            <div class="ziehharmonika">
                                <%=LoadFAQ() %>
                            </div>
                            <h5 style="padding-left: 7px !important"><a style="text-decoration: none;" class="dynamically" href="FAQ.aspx"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("MoreQuestions") %></a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p class="HideOnMobile" style="display: none;">
            <br />
        </p>
        <!-- qsp-area end -->


        <!-- footer-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- footer-area end -->

        <!-- Main jQuery -->
        <script type="text/javascript" src="jquery/jquery/jquery-3.7.1.min.js"></script>

        <!-- Bootstrap Propper jQuery -->
        <script src="js/popper.js"></script>

        <!-- Bootstrap jQuery -->
        <script src="bootstrap/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

        <!-- Custom jQuery -->
        <script src="js/scripts.js"></script>

        <script src="js/ziehharmonika.js"></script>
        <%--<script src="js/parallax.js"></script>--%>

        <!-- Scroll-Top button -->
        <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>



        <script>
            $(document).ready(function () {
                $("#myModal").modal('show');
            });

            function ClearIframe() {

                $("#myModal").modal('hide');

            }
        </script>
    </form>

    <script type="text/javascript" src="NewSlider/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="NewSlider/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="NewSlider/js/owl.carousel.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript" src="NewSlider/js/gmaps.js"></script>
    <script type="text/javascript" src="NewSlider/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="NewSlider/js/wow.min.js"></script>
    <script type="text/javascript" src="NewSlider/js/theme.js"></script>
 <script>
$( document ).ready(function() {
    	if("<%= LanguageID %>" == "2")
		$('.modal-body').html("Cher utilisateur,<br /><br />Le 23 septembre 2022, tous les téléphones contrefaits ne fonctionneront plus en RDC. Merci de vérifier le statut de votre appareil et savoir s’il est contrefait ou pas en envoyant gratuitement le numéro IMEI par SMS au 470, par l’USSD *470# ou sur <a href='https://ram.cd/verifier.aspx' style='color:rgb(200,200,250);font-weight:bold'>https://ram.cd/verifier.aspx</a>. Composez *#06# sur le clavier de votre appareil pour obtenir le numéro IMEI.<br /><br />L’équipe RAM.<br />");
	else
		$('.modal-body').html("Dear user,<br /><br />On “September 23rd, 2022”, all counterfeit phones will no longer work in the DRC. Please check the status of your device and find out if it is counterfeit or not by sending the IMEI number free of charge by SMS to 470, by USSD *470#, or on <a href='https://ram.cd/verifier.aspx?Language=1' style='color:rgb(200,200,250);font-weight:bold'>https://ram.cd/verifier.aspx</a>. Dial *#06# on your device keypad to get the IMEI number.<br /><br />RAM team.<br />");
});
    </script>

</body>
</html>
