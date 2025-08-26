<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services-Verify-Multiple-IMEI.aspx.vb" Inherits="Ram.cd.Services_Verify_Multiple_IMEI" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>
<%@ Register Src="~/controls/ServiceSidePanel.ascx" TagPrefix="uc4" TagName="SidePanel" %>

<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" shrink-to-fit="no" />
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
    <link rel="stylesheet" href="css/responsive.css"  type="text/css"/>

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

        .g-recaptcha {
            transform: scale(0.8);
            transform-origin: 0 0;
        }

        body {
            zoom: 1;
        }
    </style>
    <script src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script src="jquery/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function nothuman(s) {
            var response = grecaptcha.getResponse();
            if (response.length == 0) {
                swal('Invalid Recaptcha');
                return false;
            }
            else {
                return true;

            }
        }

        function GetFile() {
            var filename = document.getElementById('txtPhone').value;
            var selectedControl = document.getElementById('selected');
            var nothing = document.getElementById('lblNothing');
            if (filename === "") {
                selectedControl.innerHTML = nothing.value;
            } else {
                if (nothing.value === "") {
                    nothing.value = selectedControl.innerHTML;
                }
                selectedControl.innerHTML = filename.split('\\').pop();
            }
        }
    </script>

    <!-- Include All CSS -->

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
        <telerik:RadScriptManager runat="server" ID="scriptmanager" EnableEmbeddedjQuery="false">
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
                                        <li><a href="?LanguageID=2">FR</a></li>
                                        <li><a href="?LanguageID=1">EN</a></li>
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

        <a id="verify"></a>

        <!-- vry-area start -->
        <div class="vry-area">
            <div class="container-full">
                <div class="row no-gutters">
                    <div class="col-md-3 col-lg-2" style="padding-right:0px;">
                             <uc4:SidePanel ID="sidePanel" runat="server" />
                       <%-- <div class="vry-left">
                            <a href="verifier.aspx">
                                <div class="vry-a1" style="background-color: #F0F0F0;">
                                    <img src="img/VerifyIMEI.png" alt="images not found" />
                                    <p style="color: #5a5959;"><%=GetContent("Services_Menu_VerifyIMEI") %></p>
                                </div>
                            </a>
                            <a href="Services-Verify-Multiple-IMEI.aspx" <%=CheckAllowed() %>>
                                <div class="vry-a2" style="background-color: #2675E7;">
                                    <img src="img/VerifyMultiple_Selected.png" alt="images not found" />
                                    <p style="color: #fff;"><%=GetContent("Services_Menu_VerifyMultipleIMEI") %></p>

                                </div>
                            </a>
                            <a href="Services-Register-Multi-SIM.aspx">
                                <div class="vry-a2" style="background-color: #F0F0F0;">
                                    <img src="img/RegisterDualSIm.png" alt="images not found" />
                                    <p><%=GetContent("Services_Menu_RegisterDualSim") %></p>
                                </div>
                            </a>
                            <a href="payment-info.aspx">
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
                    <div class="col-md-9 col-lg-10" style="padding-left:0px;">
                        <div class="vry-right">
                            <div class="vry-b1 vry-e1" style="margin-top: 0px !important;">
                                <p><%=GetContent("Services_Verify_IMEI_Hello") %></p>

                                <div class="row no-gutters">
                                    <div class="col-lg-10 col-md-10">
                                        <!--<input class=""  accept=".csv" />-->
                                        <link href="https://cdnjs.cloudflare.com/ajax/libs/ratchet/2.0.2/css/ratchet.css" rel="stylesheet" />
                                        <label id="lblFileSelector" for="txtPhone" class="forminput file_part_a1"><%=GetContent("FileSelector") %></label>
                                        <input runat="server" type="file" onchange="GetFile()" name="txtPhone" id="txtPhone" accept=".csv" style="display: none" />
                                        <input type="hidden" id="lblNothing" />
                                        <label id="selected" style="color: white !important"><%=GetContent("NothingSelected") %></label>
                                    </div>
                                    <div class="col-lg-2 col-md-2">
                                        <asp:Button CssClass="forminputbutton" runat="server" ID="bbb" Text="sss" OnClick="bbb_Click" />
                                        <div class="checkbox-part" style="max-height: 33px; zoom: 1;">
                                            <div style="zoom: 1;" class="g-recaptcha" data-sitekey="6LfzPs4ZAAAAAFoY_fd7aZitijEbFWO8C5lDEsdW"></div>
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
                                                    <%=GetContent("Services_Verify_Multiple_IMEI") %>
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
                                    <h2><%=GetContent("Services_Verify_Multiple_IMEI_UploadHeader") %></h2>
                                    <span class="degg_sapn"></span>
                                    <a href="Downloadables/imei.csv" download><%=GetContent("Services_Verify_Multiple_IMEI_UploadFileInfo") %></a>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-lg-12">
                                        <div class="tmy-part">
                                            <img src="img/sr33.png" alt="images not found" />
                                            <p><a href="#verify"><i class="fas fa-chevron-right" aria-hidden="true"></i><%=GetContent("Services_Verify_Link") %> </a></p>
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


        <!-- lfooter-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- lfooter-area end -->

        <!-- Bootstrap Propper jQuery -->
        <script src="js/popper.js"></script>


        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

        <!-- Custom jQuery -->
        <script src="js/scripts.js"></script>

        <script src="js/ziehharmonika.js"></script>

        <!-- Scroll-Top button -->
        <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>

        <%if request.QueryString("Err") Is Nothing = False Then %>
        <script type="text/javascript">
            swal('Error');
        </script>
        <%End if %>

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

