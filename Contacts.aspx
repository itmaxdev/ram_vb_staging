<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Contacts.aspx.vb" Inherits="Ram.cd.Contacts" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
    <!-- Meta setup -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="keywords" content="" />
    <meta name="decription" content="" />
    <meta name="designer" content="Ripon Rishi" />

    <!-- Title -->
    <title>RAM</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>

    <!-- Fav Icon -->
    <link rel="icon" href="Favicon/favicon.ico" />

    <!-- Include Bootstrap -->
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/css/bootstrap.min.css" />
    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />

    <!-- Main StyleSheet -->
    <link rel="stylesheet" href="css/main-style.css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" />

    <style type="text/css">
        .header-inner ul li:first-child a:after {
            content: "";
            clear: both;
            display: none;
            width: 100%;
            height: 3px;
            background-color: #e3c600;
        }

        .header-inner ul li:nth-child(5) a:after {
            content: "";
            clear: both;
            display: block;
            width: 100%;
            height: 3px;
            background-color: #e3c600;
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
        }


        @media (max-width: 1200px) {

            .myCap {
                float: right;
            }

            .degg_top {
                margin-top: -80px;
            }
        }

        @media screen and (min-width: 240px) and (max-width: 767px) {
            .g-recaptcha {
                margin: 0 !important;
            }
        }

        @media screen and (min-width: 10px) and (max-width: 767px) {
            .g-recaptcha {
                margin: 0 !important;
            }

            #PaymentInfoMobile {
                display: block;
            }

            #PaymentInfoDesktop {
                display: none;
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

        input[type=radio] {
            /*            box-shadow: none !important;
            border: 2px solid red !important;
            height: 2em;
            margin: 5px !important;
            transform: scale(2, 2); 
            -moz-transform: scale(2, 2); 
            -ms-transform: scale(2, 2); 
            -webkit-transform: scale(2, 2); 
            -o-transform: scale(2, 2); 
*/
        }

        .radiocontrol {
            margin-top: 5px !important;
            display: block;
            width: 2em;
            height: 2em;
            border-radius: 10%;
            border: 0.00001em solid currentColor;
        }

        @-moz-document url-prefix() {
            .radiocontrol {
                margin-top: 5px !important;
                display: block;
                width: 2em;
                height: 2em;
                border-radius: 10%;
                border: 0.00001em solid currentColor;
                transform: scale(2, 2);
                -moz-transform: scale(2, 2);
                -ms-transform: scale(2, 2);
                -webkit-transform: scale(2, 2);
                -o-transform: scale(2, 2);
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function nothuman(s) {


            var imri = document.getElementById('txtFullName');
            var msis = document.getElementById('txtContactNumber');
            var imei = document.getElementById('txtIMEI');
            var elmnt = document.getElementById("txtEmail");
            var commen = document.getElementById("txtComment");
            //phone imei number 
           <%-- if (imei.value == "") {
                swal('<%=GetContentA("IMEI Required", LanguageID)%>');
                 return false;
            }

            if (imei.value.length < "15") {
                
                swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                 return false;
            }
            if (imei.value.length > "15") {
                ///Veuillez vérifier que votre IMEI a 15 chiffres
                swal('<%=GetContentA("Tosmall", LanguageID)%>');
                 return false;
             }
            
            if (isNaN(imei.value)) {
                ///Veuillez vérifier que votre IMEI a 15 chiffres
                swal('<%=GetContentA("ISNAN", LanguageID)%>');
                return false;
            }--%>
            //phone imei number 

            //phone number 

            if (msis.value == "") {

                if (isNaN(msis.value)) {
                    if (isNaN(imei.value)) {
                        //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres
                        //swal('<%=GetContentA("Msis Required", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                         return false;
                     }
                     else if (imei.value == "") {
                         //Veuillez insérer le numéro de téléphone et le numéro IMEI
                         swal('<%=GetContentA("IMEI=0MSis=0", LanguageID)%>');
                         return false;
                     }
                     else if (imei.value.length == "15") {

                         swal('<%=GetContentA("Msis Required", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15")  {
                    //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres

                    swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                    return false;
                }
            
                else {
                  <%--  swal('<%=GetContentA("Msis Required", LanguageID)%>');
                    return false;--%>
                     }
                }
                else {
                    if (isNaN(imei.value)) {
                        //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres
                        //swal('<%=GetContentA("Msis Required", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                         return false;
                     }
                     else if (imei.value == "") {
                         //Veuillez insérer le numéro de téléphone et le numéro IMEI
                         //swal('<%=GetContentA("IMEI=0MSis=0", LanguageID)%>');
                         swal('<%=GetContentA("IMEI=0MSis=0New", LanguageID)%>');
                         return false;
                     }
                     else if (imei.value.length == "15") {

                         swal('<%=GetContentA("Msis Required", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15")  {
                    //Veuillez insérer votre numéro de téléphone et veuillez vérifier que votre IMEI a 15 chiffres

                    swal('<%=GetContentA("IMEItoSizeMSis=0", LanguageID)%>');
                    return false;
                }
            
                else {
                  <%--  swal('<%=GetContentA("Msis Required", LanguageID)%>');
                    return false;--%>
                     }
                }
            }

            if (msis.value.length > "10") {
                if (isNaN(msis.value)) {
                    if (isNaN(imei.value)) {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                        //swal('<%=GetContentA("IMEIMSis>10", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                                return false;
                            }
                            else if (imei.value == "") {
                                //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et veuillez insérer le numéro IMEI
                                swal('<%=GetContentA("IMEI=0MSis>10", LanguageID)%>');
                                return false;
                            }
                            else if (imei.value.length == "15") {
                                //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                                swal('<%=GetContentA("IMEIMSis>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
             
                else {
            <%--        swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                            }
                }
                else {
                    if (isNaN(imei.value)) {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                        //swal('<%=GetContentA("IMEIMSis>10", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                                return false;
                            }
                            else if (imei.value == "") {
                                //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et veuillez insérer le numéro IMEI
                                swal('<%=GetContentA("IMEI=0MSis>10", LanguageID)%>');
                                return false;
                            }
                            else if (imei.value.length == "15") {
                                //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                                swal('<%=GetContentA("IMEIMSis>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
             
                else {
            <%--        swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                            }
                }

            }

            if (msis.value.length < "10") {
                if (isNaN(msis.value)) {
                    if (isNaN(imei.value)) {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                    //swal('<%=GetContentA("IMEItoSizeMSis<10", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                        return false;
                    }
                    else if (imei.value == "") {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et veuillez insérer le numéro IMEI
                        swal('<%=GetContentA("IMEI=0MSis>10", LanguageID)%>');
                        return false;
                    }

                    else if (imei.value.length == "15") {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                        swal('<%=GetContentA("IMEIMSis<10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
             
                else {
                    <%--swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                    }
                }
                else {
                    if (isNaN(imei.value)) {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                    //swal('<%=GetContentA("IMEItoSizeMSis<10", LanguageID)%>');
                        swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                        return false;
                    }
                    else if (imei.value == "") {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et veuillez insérer le numéro IMEI
                        swal('<%=GetContentA("IMEI=0MSis>10", LanguageID)%>');
                        return false;
                    }

                    else if (imei.value.length == "15") {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres
                        swal('<%=GetContentA("IMEIMSis<10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length < "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
                else if (imei.value.length > "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEItoSizeMSis<>10", LanguageID)%>');
                    return false;
                }
             
                else {
                    <%--swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                    }
                }
            }

            if (msis.value.length == "10") {
                if (isNaN(msis.value)) {

                    if (isNaN(imei.value)) {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                        swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                        return false;
                    }
                    else if (imei.value == "") {
                        //Veuillez insérer le numéro IMEI /////leave
                        swal('<%=GetContentA("IMEI Required", LanguageID)%>');
                        return false;
                    }
                    
                <%-- else if (imei.value.length == "15") {
                     //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                     swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;
                }--%>
                    else if (imei.value.length < "15") {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                        swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                        return false;
                    }
                    else if (imei.value.length > "15") {
                        // Veuillez vérifier que votre IMEI a 15 chiffres
                        swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                        return false;
                    }
                    else {
             <%--       swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                    }
                }
                else {
                    if (isNaN(imei.value)) {
                        //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                        swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                    return false;
                }
                else if (imei.value == "") {
                    //Veuillez insérer le numéro IMEI /////leave
                        swal('<%=GetContentA("IMEI Required", LanguageID)%>');
                        return false;
                    }
               
                <%-- else if (imei.value.length == "15") {
                     //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                     swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;
                }--%>
                else if (imei.value.length < "15") {
                    //Veuillez vérifier que votre numéro de téléphone a 10 chiffres et votre IMEI a 15 chiffres
                    swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                    return false;
                }
                    else if (imei.value.length > "15") {
                        // Veuillez vérifier que votre IMEI a 15 chiffres
                        swal('<%=GetContentA("IMEIToBig", LanguageID)%>');
                        return false;
                    }
                else {
             <%--       swal('<%=GetContentA("MSISmanditory", LanguageID)%>');
                    return false;--%>
                     }
                 }
             }

            //phone number 

            swal({
                text: "<%=GetContent("Please wait")%>",
                button: false
            });


            var result = PageMethods.SendEmail(imri.value, elmnt.value, msis.value, imei.value, commen.value, function (response) {
                imri.value = '';
                elmnt.value = '';
                commen.value = '';
                msis.value = '';
                imei.value = '';
                swal.close();
                swal({
                    text: "<%=GetContent("Message Sent")%>",
                    button: true
                });
            });

            //}
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
                            <button
                                class="hamburger hamburger--squeeze navbar-toggler"
                                type="button"
                                data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent"
                                aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto"></ul>
                                <div class="main-menu-part">
                                    <ul>
                                        <li><a href="/"><%=GetContent("MenuHome") %> </a></li>
                                        <li><a href="/Services.aspx"><%=GetContent("MenuServices") %></a></li>
                                        <li><a href="/News.aspx"><%=GetContent("MenuNews") %></a></li>
                                        <li><a href="/FAQ.aspx"><%=GetContent("MenuFAQ") %></a></li>
                                        <li class="active"><a href="/Contacts.aspx"><%=GetContent("MenuContacts") %></a></li>
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

        <!-- svo-area end -->
        <!--===== start px-social-links area =====-->
        <section class="px-social-links-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-9">
                        <div class="px-socials-links col-lg-12">
                            <div class="px-scl-lnk col-lg-3 facebookhover">
                                <a href="https://www.facebook.com/ramrdcongo/" rel="noreferrer noopener" style="text-decoration: none;" target="_blank">
                                    <%--<img src="./img/icons/fb.png" alt="" />--%>
                                    <div class="Facebook"></div>
                                    <h4><%=GetContent("Facebook") %></h4>
                                </a>
                            </div>
                            <div class="px-scl-lnk col-lg-3 twitterhover">
                                <a href="https://twitter.com/ramrdcongo" rel="noreferrer noopener" style="text-decoration: none;" target="_blank">
                                    <div class="Twitter"></div>
                                    <h4><%=GetContent("Twitter") %></h4>
                                </a>
                            </div>
                            <div class="px-scl-lnk col-lg-3 instagramhover">
                                <a href="https://instagram.com/ramrdcongo?igshid=1ckdwosth1ead" rel="noreferrer noopener" style="text-decoration: none;" target="_blank">
                                    <div class="Instagram"></div>
                                    <h4><%=GetContent("Instagram") %></h4>
                                </a>
                            </div>
                            <div class="px-scl-lnk col-lg-3 youtubehover">
                                <a href="https://www.youtube.com/channel/UC29fmRU26w5UVVZ-dQBfR0w" rel="noreferrer noopener" style="text-decoration: none;" target="_blank">
                                    <div class="Youtube"></div>
                                    <h4><%=GetContent("YouTube") %></h4>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-3">
                        <div class="px-socials-links">
                            <div class="px-scl-lnk emailhover" style="padding-top: 25px">
                                <a href="mailto:info@ram.cd" style="text-decoration: none;">
                                    <div class="EmailIcon"></div>

                                    <h4><%=GetContent("Email") %><span>info@ram.cd</span></h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--===== completed px-social-links area =====-->
        <!--===== start px-contact area =====-->
        <section class="px-contact-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="px-title">
                            <div class="deg-top text-left">
                                <h2>
                                    <span class="aft-bdr-btm"><%=GetContent("DropUsALine") %>
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
                <form action="">
                    <div class="row">
                        <div class="col-xl-8 col-lg-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="px-contact-input">
                                        <input type="text" name="txtFullName" placeholder="<%=GetContent("Full Name") %>" id="txtFullName" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="px-contact-input"> 
                                        <input type="text" name="txtContactNumber" placeholder="<%=GetContent("Contact Number") %> * " id="txtContactNumber" />
<%--                                        <asp:RequiredFieldValidator ID="required" runat="server"
                                            ControlToValidate="txtContactNumber"
                                            ErrorMessage="Contact Number Required."
                                            ForeColor="Red">
                                        </asp:RequiredFieldValidator>--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="px-contact-input">
                                        <input type="text" name="txtIMEI" placeholder="<%=GetContent("TXTIMEICON") %>" id="txtIMEI" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="px-contact-input">
                                        <input type="email" name="txtEmail" placeholder="<%=GetContent("Email") %> * " id="txtEmail" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="px-contact-input">
                                        <textarea name="txtComment" placeholder="<%=GetContent("Message") %> * " id="txtComment" cols="30" rows="10"></textarea>
                                    </div>
                                </div>
                                <%-- ContactsMessage --%>
                                <div class="col-md-8">
                                    <div class="px-contact-input">
                                        <p Name="pComment" id="pComment"><%=GetContent("ContactsMessage") %> * </p>
                                    </div>
                                </div>
                                <%--<div class="col-md-12">
                                    <div class="px-contact-input">
                                        <div class="row no-gutters" style="align: left">
                                            <div class="col-lg-12 col-md-12 captchaS">
                                            </div>

                                        </div>
                                    </div>
                                </div>--%>

                                <div class="col-md-4">
                                    <div class="px-contact-input" align="right" style="padding-top: 20px">
                                        <button class="submit forminputbutton g-recaptcha" style="border: 1px solid #1e5db8 !important;" data-sitekey="6Lf0U8MaAAAAAE4gubHH3oeaG1rBa7Hrl8bcS3au" data-callback='onSubmit' data-action='submit' type="button" onclick="return nothuman(this);" align="right" runat="server" id="btnBlock">
                                            <i class="fa fa-angle-right"></i><%=GetContent("Send") %>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!--===== completed px-contact area =====-->

        <!-- lfooter-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- lfooter-area end -->


        <!-- Bootstrap Propper jQuery -->
        <script src="js/popper.js"></script>


        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>



        <!-- Scroll-Top button -->
        <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>
        <script type="text/javascript" src="jquery/jquery/jquery-3.7.1.min.js"></script>
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
        <script src="js/scripts.js" type="text/javascript"></script>

        <script src="js/ziehharmonika.js"></script>
    </form>
</body>
</html>
