<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services-Block-Phone.aspx.vb" Inherits="Ram.cd.Services_Block_Phone" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>
<%@ Register Src="~/controls/ServiceSidePanel.ascx" TagPrefix="uc4" TagName="SidePanel" %>

<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
    <!-- Meta setup -->
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <style type="text/css">
        .header-innerUnSelected {
            content: "";
            clear: both;
            display: none;
            width: 100%;
            height: 3px;
            background-color: #E3C600;
        }


        .header-innerselected {
            content: "";
            clear: both;
            display: block;
            width: 100%;
            height: 3px;
            background-color: #E3C600;
        }

        .tabSelected {
            color: #fff;
            font-size: 20px;
            padding: 10px 54px;
            background-color: #49A7E4;
            display: block;
            border-radius: 30px;
            margin-right: 8px;
            cursor: pointer;
        }

        .TabUnselected {
            color: #fff;
            font-size: 20px;
            padding: 10px 42px;
            background-color: #CECFD0;
            display: block;
            border-radius: 30px;
            margin-right: 8px;
            transition: 0.2s all ease;
            -moz-transition: 0.2s all ease;
            -webkit-transition: 0.2s all ease;
            cursor: pointer;
        }

        .g-recaptchakkkk {
            transform: scale(0.8);
            transform-origin: 0 0;
        }

        .whitefont {
            color: white;
        }

        body {
            zoom: 1 !important;
        }

        .myCap {
            float: left;
        }

        .degg_top {
            margin-top: -90px;
            position: absolute;
        }

        .table {
            width: 80% !important;
        }

        @media (max-width: 1200px) {

            .myCap {
                float: right;
            }

            .degg_top {
                margin-top: -80px;
            }
        }

        @media screen and (min-width: 40px) and (max-width: 990px) {
            .stylerleft {
                float: left !important;
            }
        }

        @media screen and (min-width: 990px) {

            .grecaptcha-badge {
                margin-left: auto;
            }
        }

        @media screen and (min-width: 40px) and (max-width: 767px) {
            #PaymentInfo {
                zoom: 0.8;
            }

            .table {
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


        .grecaptcha-badge {
            width: 70px !important;
            overflow: hidden !important;
            transition: all 0.3s ease !important;
            right: 14px !important;
            top: 410px;
        }

            .grecaptcha-badge:hover {
                width: 256px !important;
            }

        .captchaS {
            padding-right: 8px;
            height: 75px;
        }
    </style>
    <script src="https://www.google.com/recaptcha/api.js<%=IIf(LanguageID = 2, "?hl=en", "") %>" async="async" defer="defer"></script>
    <script src="jquery/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function nothuman(s) {
            var response = grecaptcha.getResponse();
            response = "shaun";
            var finalimri = "";
            if (response.length == 0) {
                swal('Invalid Recaptcha');
                return false;
            }
            else {
                var imri = document.getElementById('txtIMEI');
                var msis = document.getElementById('txtPhoneNumber');
                var reason = document.getElementById('txtReason');
                //var blockType = document.getElementById('txtType');
                 var blockingtype= document.getElementById('blockingtype');
                 var valeurofblock= blockingtype.options[blockingtype.selectedIndex].value;
                 console.log(valeurofblock);
                

                if (imri.value != "") {
                    var imristring = imri.value.toString();
                    var lengthcheck = imristring.length;
                    if (lengthcheck < 14 || lengthcheck > 15) {
                        swal('<%=GetContentA("Invalid IMEI", LanguageID)%>');
                        return false;
                    } else {
                        finalimri = imristring;
                    }

                } else {
                    swal('<%=GetContentA("Invalid IMEI", LanguageID)%>');
                    return false;
                }

                //if (msis.value == "") {
                //    swal('Missing Mobile Number');
                //    return false;
                //}
                

                if (reason.value == "") {
                    swal('<%=GetContentA("BlockReason", LanguageID)%>');
                    return false;
                }
                
                swal({
                    text: "<%=GetContentA("Please wait", LanguageID)%>.",
                    button: false

                });

                var outputres = document.getElementById('results');

                var result = PageMethods.BlockIMEI(finalimri, msis.value, <%=LanguageID %>, reason.value, valeurofblock, function (response) {
                    swal(response);
                    imri.value = '';
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
    <%--    <link rel="stylesheet" type="text/css" href="NewSlider/css/responsive.css" />--%>
    <link rel="stylesheet" id="layout" href="NewSlider/css/lay_colors/wide.css" />
    <link rel="stylesheet" id="colorChem" href="NewSlider/css/lay_colors/color1.css" />
    <!-- Main jQuery -->
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
        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        <!-- header-area start -->
        <header class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="header-left">
                            <a href="/Default.aspx">
                                <img src="img/logo.png" alt="logo" />
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10" style="display: inline-flex; justify-content: flex-end;">
                        <div class="topnavnew" style="display: inline-flex;">
                            <ul style="display: inline-flex; margin: 0; height: 3.5rem; float: right; padding-left: 0px;">
                                <li style="display: inline-flex; margin: auto;"><a href="/" style="text-decoration: none;"><%=GetContent("MenuHome") %> </a></li>
                                <li style="display: inline-flex; margin: auto;"><a href="/Services.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuServices") %></a></li>
                                <li style="display: inline-flex; margin: auto;"><a class="active" href="/News.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuNews") %></a></li>
                                <li style="display: inline-flex; margin: auto;"><a href="/FAQ.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuFAQ") %></a></li>
                                <li style="display: inline-flex; margin: auto;"><a href="/Contacts.aspx" style="text-decoration: none; margin-left: 30px; margin-right: 30px;"><%=GetContent("MenuContacts") %></a></li>
                            </ul>
                        </div>
                        <div class="topnavnew" style="display: inline-flex;">
                            <ul style="display: inline-flex; margin: 0; height: 3.5rem; float: right; padding-left: 0px;">
                                <li class="header-right_a1"></li>
                                <%=PlotLanguages() %>

                                <li class="header-right_a1"></li>
                                <li style="display: inline-flex; margin: auto;">
                                    <img src="img/sr1.png" style="max-width: 130px; margin-left: 30px;" alt="images not found" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-area end -->
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
                                        <li><a href="/?Language=2">FR</a></li>
                                        <li><a href="/?Language=1">EN</a></li>
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
                    <div class=" col-lg-2" style="padding-right: 0px;">
                        <uc4:SidePanel ID="sidePanel" runat="server" />
                        <%--  <div class="vry-left">
                            <a href="verifier.aspx">
                                <div class="vry-a2" style="margin-top: 0px!important;">
                                    <img src="img/VerifyIMEI.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_VerifyIMEI") %></p>
                                </div>
                            </a>
                            <a href="Services-Verify-Multiple-IMEI.aspx" <%=CheckAllowed() %>>
                                <div class="vry-a2">
                                    <img src="img/VerifyMultiple.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_VerifyMultipleIMEI") %></p>
                                </div>
                            </a>
                            <a href="Services-Register-Multi-SIM.aspx">
                                <div class="vry-a2">
                                    <img src="img/RegisterDualSIm.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_RegisterDualSim") %></p>
                                </div>
                            </a>
                            <a href="Services-Fees.aspx">
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
                                <div class="vry-a1">
                                    <img src="img/BlockPhoneSelected.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_BlockPhone") %></p>
                                </div>
                            </a>
                        </div>--%>
                    </div>
                    <div class=" col-lg-10" style="padding-left: 0px;">
                        <div class="vry-right">
                            <div class="vry-b1 vry-d1" style="margin-bottom: 60px; padding-bottom: 8%;">
                                <p><%=GetContent("Services_Verify_IMEI_Hello") %>&nbsp;</p>
                                <h6><%=GetContent("Services_Block_FormInfo") %></h6>
                                <div class="row no-gutters">
                                    <div class="col-lg-6 col-md-6">
                                        <span style="display: flex;">
                                            <input class="forminput" placeholder="<%=GetContent("IMEI_Number") %>" maxlength="15" id="txtIMEI" name="txtIMEI" type="number" />
                                            *
                                        </span>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <span style="display: flex;">
                                            <input class="forminput" placeholder="<%=GetContent("Phone_Number") %>" id="txtPhoneNumber" name="txtPhoneNumber" type="number" />
                                        </span>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <span style="display: flex; height: 6rem">
                                            <input class="forminput" placeholder="<%=GetContent("BlockReason") %>" id="txtReason" name="txtReason" type="text" />
                                            *
                                        </span>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <span style="display: flex; height: 6rem">
                                            <select class="forminput" id="blockingtype">
                                                <option value="true">Blocage immédiat</option>
                                                <option value="false" selected="selected">Blocage avec notification</option>
                                            </select>
                                        </span>
                                    </div>


                                    <div class="row no-gutters ">
                                        <div class="col-lg-12 col-md-12 captchaS">
                                        </div>

                                    </div>
                                    <div class="row no-gutters ">
                                        <div class="col-lg-12 col-md-12">

                                            <div class="px-contact-input" style="padding-right: 0px">
                                                <button class="submit forminputbutton stylerleft g-recaptcha" style="float: right;" data-sitekey="6Lf0U8MaAAAAAE4gubHH3oeaG1rBa7Hrl8bcS3au" data-callback='onSubmit' data-action='submit' type="button" onclick="return nothuman();" align="right" runat="server" id="btnBlock">
                                                    <i class="fa fa-angle-right"></i><%=GetContent("BLOCK") %>
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
                                                        <%=GetContent("Services_Block_FormDescription") %>
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
                                <div class="container" style="margin-top: 100px;">
                                    <div class="degg-top">
                                        <h2><%=GetContent("Services_Block_PageDescription") %>
                                            <span class="degg_sapn degg_sapn_a1"></span>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-12 col-lg-12">
                                            <div class="deg_par_f1">
                                                <img src="img/sr19.png" alt="images not found" />
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
        </div>
        <!-- vry-area end -->


        <!-- lfooter-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- lfooter-area end -->

        <!-- Main jQuery -->
        <script src="https://unpkg.com/jquery-input-mask-phone-number@1.0.14/dist/jquery-input-mask-phone-number.js"></script>
        <!-- Bootstrap Propper jQuery -->

        <script src="js/popper.js" type="text/javascript"></script>



        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

        <!-- Custom jQuery -->
        <script src="js/scripts.js"></script>

        <script src="js/ziehharmonika.js"></script>
        <!-- Scroll-Top button -->
        <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>
        <script type="text/javascript" src="bootstrap/bootstrap/js/bootstrap.min.js"></script>
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
