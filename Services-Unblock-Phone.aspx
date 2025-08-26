<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services-Unblock-Phone.aspx.vb" Inherits="Ram.cd.Services_Unblock_Phone" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>
<%@ Register Src="~/controls/ServiceSidePanel.ascx" TagPrefix="uc4" TagName="SidePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
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
    <link rel="stylesheet" href="bootstrap/bootstrap/css/bootstrap.min.css" type="text/css" />

    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />

    <!-- Main StyleSheet -->
    <link rel="stylesheet" href="css/main-style.css" type="text/css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" type="text/css" />


    <style type="text/css">
        .captchaS {
            padding-right: 8px;
            height: 10px !important;
        }

        @media screen and (min-width: 768px) and (max-width: 11468px) {
            .grecaptcha-badge {
                width: 70px !important;
                overflow: hidden !important;
                transition: all 0.3s ease !important;
                right: 14px !important;
                top: -10px !important;
                position: relative !important;
            }

            .captchaS {
                padding-right: 8px;
                height: 10px !important;
            }
        }

        @media screen and (min-width: 550px) and (max-width: 767px) {
            .stylewidth {
                width: 100% !important;
            }

            .g-recaptcha {
                margin: 0 !important;
            }

            .grecaptcha-badge {
                width: 70px !important;
                overflow: hidden !important;
                transition: all 0.3s ease !important;
                right: 14px !important;
                top: -10px !important;
                position: relative !important;
            }

            .captchaS {
                padding-right: 8px;
                height: 10px !important;
            }
        }

        @media screen and (min-width: 40px) and (max-width: 550px) {
            .stylewidth {
                width: 100% !important;
            }

            .grecaptcha-badge {
                width: 70px !important;
                overflow: hidden !important;
                transition: all 0.3s ease !important;
                right: 14px !important;
                top: -10px !important;
                position: relative !important;
                margin-left: 85% !important;
            }
        }

        .grecaptcha-badge {
            width: 70px !important;
            overflow: hidden !important;
            transition: all 0.3s ease !important;
            right: 14px !important;
            top: 410px;
            margin-top: 3%;
            margin-left: 90.5%;
        }

            .grecaptcha-badge:hover {
                width: 256px !important;
            }

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

        .g-recaptcha {
            /*  transform: scale(0.8);*/
            transform-origin: 0 0;
        }

        body {
            zoom: 1 !important;
        }
    </style>
    <script src="jquery/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
    <script src="https://www.google.com/recaptcha/api.js<%=IIf(LanguageID = 2, "?hl=en", "") %>" async="async" defer="defer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function nothuman(s) {
            var response = grecaptcha.getResponse();
            response = "shaun";
            if (response.length == 0) {
                swal('<%=GetContentA("Invalid Recaptcha", LanguageID)%>');
                return false;
            }
            else {
                var imri = document.getElementById('txtIMEI');
                var msis = document.getElementById('txtPhoneNumber');
                var reason = document.getElementById('txtReason');

                if (imri.value == "") {
                    swal('<%=GetContentA("Invalid IMEI", LanguageID)%>');
                    return false;
                }
                if (imri.value.length < 14 || imri.value.length > 15) {
                    swal('<%=GetContentA("Make sure your IMEI is 14 or 15 digits.", LanguageID)%>');
                    return false;
                }

               <%-- if (msis.value != "") {
                    var phonenumstring = msis.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 13) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    }
                }
                else
                {
                    swal('<%=GetContentA("Missing Mobile Number", LanguageID)%>');
                    return false;
                }--%>

                if (reason.value == "") {
                    swal('Missing Block Reason');
                    return false;
                }

                swal({
                    text: "<%=GetContentA("Please wait", LanguageID)%>.",
                    button: false
                });

                var outputres = document.getElementById('results');

                var result = PageMethods.UnblockIMEI(imri.value, msis.value,<%=LanguageID%>, reason.value,  function (response) {
                    swal(response);
                    imri.value = '';
                    msis.value = '';
                    swal.close();
                });

            }
        }

    </script>

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
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server" ID="scriptmanager" EnableEmbeddedjQuery="false">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryExternal.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryPlugins.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <uc2:siteheader runat="server" id="SiteHeader1" />

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

        <!-- vry-area start -->
        <div class="vry-area">
            <div class="container-full">
                <div class="row no-gutters">
                    <div class="col-md-3 col-lg-2" style="padding-right: 0px;">
                        <uc4:SidePanel ID="sidePanel" runat="server" />
                        <%-- <div class="vry-left">
                            <a href="verifier.aspx">
                                <div class="vry-a1" style="background-color: #F0F0F0;">
                                    <img src="img/VerifyIMEI.png" alt="images not found" />
                                    <p style="color: #5a5959;"><%=GetContent("Services_Menu_VerifyIMEI") %></p>
                                </div>
                            </a>
                            <a href="Services-Verify-Multiple-IMEI.aspx">
                                <div class="vry-a2">
                                    <img src="img/VerifyMultiple.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_VerifyMultipleIMEI") %></p>
                                </div>
                            </a>
                            <a href="Services-Register-Multi-SIM.aspx" <%=CheckAllowed2() %>>
                                <div class="vry-a2">
                                    <img src="img/RegisterDualSIm.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_RegisterDualSim") %></p>
                                </div>
                            </a>
                            <a href="Services-Fees.aspx" <%=CheckAllowed2() %>>
                                <div class="vry-a2">
                                    <img src="img/CheckRAMFees.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_CheckRAMFees") %></p>
                                </div>
                            </a>
                            <a href="Services-Unblock-Phone.aspx" <%=CheckAllowed2() %>>
                                <div class="vry-a2">
                                    <img src="img/UnblockPhone.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_UnBlockPhone") %></p>
                                </div>
                            </a>
                            <a href="Services-Block-Phone.aspx" <%=CheckAllowed2() %>>
                                <div class="vry-a2">
                                    <img src="img/BlockPhone.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_BlockPhone") %></p>
                                </div>
                            </a>
                        </div>--%>
                    </div>
                    <div class="col-md-9 col-lg-10" style="padding-left: 0px;">
                        <div class="vry-right">
                            <div class="vry-b1 vry-d1">
                                <h6><%=GetContent("Services_Unblock_FormInfo") %>&nbsp;</h6>
                                <p><%=GetContent("Services_Unblock_Hello") %>&nbsp;</p>

                                <div class="row no-gutters">
                                    <div class="col-lg-5 col-md-5 stylewidth" style="width: 50%;">
                                        <input class="forminput" placeholder="*<%=GetContent("IMEI_Number") %>" maxlength="15" id="txtIMEI" name="txtIMEI" type="number" />
                                    </div>
                                    <div class="col-lg-5 col-md-5 stylewidth" style="width: 50%;">
                                        <input class="forminput" placeholder="<%=GetContent("Phone_Number") %>" id="txtPhoneNumber" name="txtPhoneNumber" type="number" />
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <span style="display: flex; height: 6rem">
                                            <input class="forminput" placeholder="*<%=GetReason() %>" id="txtReason" name="txtReason" type="text" />
                                         
                                        </span>
                                    </div>

                                    <div class="col-lg-2 col-md-2" style="width: 100%;">
                                        <div class="px-contact-input" align="right" style="padding-right: 8px">
                                            <button class="submit forminputbutton g-recaptcha" style="margin-right: 10px;" data-sitekey="6Lf0U8MaAAAAAE4gubHH3oeaG1rBa7Hrl8bcS3au" data-callback='onSubmit' data-action='submit' type="button" onclick="return nothuman(this);" align="right" runat="server" id="btnBlock">
                                                <i class="fa fa-angle-right"></i><%=GetContent("UNBLOCK") %>
                                            </button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- degg_top-area start -->
                        <div class="degg_top-area">
                            <div class="container">
                                <div class="degg_top_b1">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-12">
                                            <div class="degg_top">
                                                <span class="degg_top1"></span>
                                                <p>
                                                    <%=GetContent("Services_Unblock_PageInfo") %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- degg_top-area end -->

                        <!-- degg-area start -->
                        <div class="degg-area">
                            <div class="container">
                                <div class="degg-top">
                                    <h2><%=GetContent("Services_Unblock_FooterInfo") %></h2>
                                    <span class="degg_sapn degg_sapn_a1"></span>
                                </div>
                                <div class="row">

                                    <div class="col-md-12 col-lg-12">
                                        <div class="deg_par_f1">
                                            <img src="img/sr20.png" alt="images not found" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- degg-area end -->






                    </div>
                </div>
            </div>
        </div>
        <!-- vry-area end -->
        <script>
            txtIMEI.oninput = function () {
                if (this.value.length > 15) {
                    this.value = this.value.slice(0, 15);
                }
            }
            txtPhoneNumber.oninput = function () {
                if (this.value.length > 12) {
                    this.value = this.value.slice(0, 12);
                }
            }
        </script>


        <!-- lfooter-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- lfooter-area end -->

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

