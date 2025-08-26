<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services-Register-Multi-SIM.aspx.vb" Inherits="Ram.cd.Services_Register_Multi_SIM" %>

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
    <link rel="stylesheet" href="bootstrap/bootstrap/css/bootstrap.min.css" type="text/css" />

    <link href="css/ziehharmonika.css" rel="stylesheet" type="text/css" />

    <!-- Main StyleSheet -->
    <link rel="stylesheet" href="css/main-style.css" type="text/css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css" type="text/css" />

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

        @media (max-width: 479px) {

            .respFontSize {
                font-size: 8px;
                width: 120%;
            }

            input,
            input::-webkit-input-placeholder {
                font-size: 8px !important;
                line-height: 1;
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
    <script src="jquery/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
    <script src="https://www.google.com/recaptcha/api.js<%=IIf(LanguageID = 2, "?hl=en", "") %>" async="async" defer="defer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        function nothuman() {
            var response = grecaptcha.getResponse();
            response = 'shaun';

            if (response.length == 0) {
                swal('<%=GetContentA("Invalid Recaptcha", LanguageID)%>');
                return false;
            }
            else {
                var imri1 = document.getElementById('txtIMEI1');
                var msis1 = document.getElementById('txtPhoneNumber1');
                var imri2 = document.getElementById('txtIMEI2');
                var msis2 = document.getElementById('txtPhoneNumber2');
                var imri3 = document.getElementById('txtIMEI3');
                var msis3 = document.getElementById('txtPhoneNumber3');
                var imri4 = document.getElementById('txtIMEI4');
                var msis4 = document.getElementById('txtPhoneNumber4');

                var Sim1Primary = document.getElementById('Sim1Primary');
                var Sim2Primary = document.getElementById('Sim2Primary');
                var Sim3Primary = document.getElementById('Sim3Primary');
                var Sim4Primary = document.getElementById('Sim4Primary');
                var Sim1PrimaryText = 'true';
                var Sim2PrimaryText = 'false';
                var Sim3PrimaryText = 'false';
                var Sim4PrimaryText = 'false';

                var tcodee1 = document.getElementById('countryCode1');
                var tcode1 = tcodee1.options[tcodee1.selectedIndex].value;
                var tcodee2 = document.getElementById('countryCode2');
                var tcode2 = tcodee2.options[tcodee2.selectedIndex].value;
                var tcodee3 = document.getElementById('countryCode3');
                var tcode3 = tcodee3.options[tcodee3.selectedIndex].value;
                var tcodee4 = document.getElementById('countryCode4');
                var tcode4 = tcodee4.options[tcodee4.selectedIndex].value;


                if (Sim1Primary.checked == true) {
                    Sim1PrimaryText = 'true';
                    Sim2PrimaryText = 'false';
                    Sim3PrimaryText = 'false';
                    Sim4PrimaryText = 'false';
                }
                if (Sim2Primary.checked == true) {
                    Sim1PrimaryText = 'false';
                    Sim2PrimaryText = 'true';
                    Sim3PrimaryText = 'false';
                    Sim4PrimaryText = 'false';
                }
                if (Sim3Primary.checked == true) {
                    Sim1PrimaryText = 'false';
                    Sim2PrimaryText = 'false';
                    Sim3PrimaryText = 'true';
                    Sim4PrimaryText = 'false';
                }
                if (Sim4Primary.checked == true) {
                    Sim1PrimaryText = 'false';
                    Sim2PrimaryText = 'false';
                    Sim3PrimaryText = 'false';
                    Sim4PrimaryText = 'true';
                }

                if (Sim1Primary.checked && tcode1 != "+243") {
                    swal('<%=GetContentA("Only local numbers can be used for payment", LanguageID)%>');
                    return false;
                }
                if (Sim2Primary.checked && tcode2 != "+243") {
                    swal('<%=GetContentA("Only local numbers can be used for payment", LanguageID)%>');
                    return false;
                }
                if (Sim3Primary.checked && tcode3 != "+243") {
                    swal('<%=GetContentA("Only local numbers can be used for payment", LanguageID)%>');
                    return false;
                }
                if (Sim4Primary.checked && tcode4 != "+243") {
                    swal('<%=GetContentA("Only local numbers can be used for payment", LanguageID)%>');
                    return false;
                }

                if (imri1.value == "") {
                    swal('<%=GetContentA("Invalid IMEI 1", LanguageID)%>');
                    return false;
                }
                if (imri1.value.length != 15) {
                    swal('<%=GetContentA("Make sure your IMEI is 15 digits.", LanguageID)%>');
                    return false;
                }
                if (msis1.value == "") {
                    swal('<%=GetContentA("Missing Mobile Number 1", LanguageID)%>');
                    return false;
                }
                if (imri2.value == "") {
                    swal('<%=GetContentA("Invalid IMEI 2", LanguageID)%>');
                    return false;
                }
                if (imri2.value.length != 15) {
                    swal('<%=GetContentA("Make sure your IMEI is 15 digits.", LanguageID)%>');
                    return false;
                }
                if (msis2.value == "") {
                    swal('<%=GetContentA("Missing Mobile Number 2", LanguageID)%>');
                    return false;
                }
                swal({
                    text: "<%=GetContentA("Please wait", LanguageID)%>.",
                    button: false
                });

                var msisdn1 = "";
                var msisdn2 = "";
                var msisdn3 = "";
                var msisdn4 = "";

                if (msis1.value != "") {
                    var phonenumstring = msis1.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 10) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    } else {
                        msisdn1 = tcode1.replace('+', '') + msis1.value;
                    }
                }
                if (msis2.value != "") {
                    var phonenumstring = msis2.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 10) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    } else {
                        msisdn2 = tcode2.replace('+', '') + msis2.value;
                    }

                }
                if (msis3.value != "") {
                    var phonenumstring = msis3.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 10) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    } else {
                        msisdn3 = tcode3.replace('+', '') + msis3.value;
                    }

                }
                if (msis4.value != "") {
                    var phonenumstring = msis4.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 10) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    } else {
                        msisdn4 = tcode4.replace('+', '') + msis4.value;
                    }

                }


                var result = PageMethods.RegisterDualSim(imri1.value, msisdn1, imri2.value, msisdn2, imri3.value, msisdn3, imri4.value, msisdn4, Sim1PrimaryText, Sim2PrimaryText, Sim3PrimaryText, Sim4PrimaryText, <%=LanguageID%>, function (response) {
                    swal(response);
                    imri1.value = '';
                    imri2.value = '';
                    imri3.value = '';
                    imri4.value = '';
                    msis1.value = '';
                    msis2.value = '';
                    msis3.value = '';
                    msis4.value = '';
                    swal.close();

                });

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


    <!-- Main jQuery -->
    <script src="js/services-register-multi-sim.js"></script>
    <script>
        $(document).ready(function () {
            /* Get iframe src attribute value i.e. YouTube video url
            and store it in a variable */
            var url = $("#cartoonVideo").attr('src');

            /* Assign empty url value to the iframe src attribute when
            modal hide, which stop the video playing */
            $("#myModal").on('hide.bs.modal', function () {
                $("#cartoonVideo").attr('src', '');
            });

            /* Assign the initially stored url back to the iframe src
            attribute when modal is displayed again */
            $("#myModal").on('show.bs.modal', function () {
                $("#cartoonVideo").attr('src', url);
            });
        });
    </script>
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
                                <div class="vry-a2">
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
                                <div class="vry-a1" style="background-color: #2675E7;">
                                    <img src="img/VerifyMultiple_Selected.png" alt="images not found" />
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
                    <div class="col-md-9 col-lg-10" style="padding-left: 0px;">
                        <div class="vry-right scrollto2">
                            <div class="vry-b1 vry-f1">
                                <p><%=GetContent("Services_Dual_FormInstruction") %></p>
                                <table class='table table-sm table-borderless '>
                                    <tr>
                                        <th scope="row">
                                            <input type="radio" class="radiocontrol" checked="checked" id="Sim1Primary" name="PrimarySim" />
                                        </th>
                                        <td>
                                            <input style="padding-left: 2px; padding-right: 2px;" class="forminput respFontSize" maxlength="15" id="txtIMEI1" name="txtIMEI1" type="number" placeholder="<%=GetContent("IMEI1 Number") %>" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="white-space: nowrap">
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 2, "visibility:hidden;display:none;", "") %>" class="forminput input-block-level respFontSize" id="countryCode1<%=IIf(LanguageID = 2, "NotUsed", "") %>" name="countryCode1<%=IIf(LanguageID = 2, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93">Afghanistan (+93)</option>
                                                <option data-countrycode="AL" value="+355">Albania (+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algeria (+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorra (+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola (+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla (+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua &amp; Barbuda (+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentina (+54)</option>
                                                <option data-countrycode="AM" value="+374">Armenia (+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba (+297)</option>
                                                <option data-countrycode="AC" value="+247">Ascension Island (+247)</option>
                                                <option data-countrycode="AU" value="+61">Australia (+61)</option>
                                                <option data-countrycode="AT" value="+43">Austria (+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaijan (+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas (+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahrain (+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh (+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbados (+1246)</option>
                                                <option data-countrycode="BY" value="+375">Belarus (+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgium (+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize (+501)</option>
                                                <option data-countrycode="BJ" value="+229">Benin (+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermuda (+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhutan (+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivia (+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba and Sint Eustatius (+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnia Herzegovina (+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana (+267)</option>
                                                <option data-countrycode="BR" value="+55">Brazil (+55)</option>
                                                <option data-countrycode="IO" value="+246">British Indian Ocean Territory (+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei (+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgaria (+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso (+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi (+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodia (+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroon (+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada (+1)</option>
                                                <option data-countrycode="CV" value="+238">Cape Verde Islands (+238)</option>
                                                <option data-countrycode="KY" value="+1345">Cayman Islands (+1345)</option>
                                                <option data-countrycode="CF" value="+236">Central African Republic (+236)</option>
                                                <option data-countrycode="TD" value="+235">Chad (+235)</option>
                                                <option data-countrycode="CL" value="+56">Chile (+56)</option>
                                                <option data-countrycode="CN" value="+86">China (+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombia (+57)</option>
                                                <option data-countrycode="KM" value="+269">Comoros (+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo (+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, Democratic Republic of the (+243)</option>
                                                <option data-countrycode="CK" value="+682">Cook Islands (+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica (+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatia (+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba (+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curaçao (+5999)</option>
                                                <option data-countrycode="CY" value="+357">Cyprus (+357)</option>
                                                <option data-countrycode="CZ" value="+420">Czech Republic (+420)</option>
                                                <option data-countrycode="DK" value="+45">Denmark (+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti (+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominica (+1767)</option>
                                                <option data-countrycode="DO" value="+1809">Dominican Republic (+1809)</option>
                                                <option data-countrycode="TL" value="+670">East Timor (+670)</option>
                                                <option data-countrycode="EC" value="+593">Ecuador (+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypt (+20)</option>
                                                <option data-countrycode="SV" value="+503">El Salvador (+503)</option>
                                                <option data-countrycode="GQ" value="+240">Equatorial Guinea (+240)</option>
                                                <option data-countrycode="ER" value="+291">Eritrea (+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonia (+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini (+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopia (+251)</option>
                                                <option data-countrycode="FK" value="+500">Falkland Islands (+500)</option>
                                                <option data-countrycode="FO" value="+298">Faroe Islands (+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fiji (+679)</option>
                                                <option data-countrycode="FI" value="+358">Finland (+358)</option>
                                                <option data-countrycode="FR" value="+33">France (+33)</option>
                                                <option data-countrycode="GF" value="+594">French Guiana (+594)</option>
                                                <option data-countrycode="PF" value="+689">French Polynesia (+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon (+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambia (+220)</option>
                                                <option data-countrycode="GE" value="+995">Georgia (+995)</option>
                                                <option data-countrycode="DE" value="+49">Germany (+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana (+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar (+350)</option>
                                                <option data-countrycode="GR" value="+30">Greece (+30)</option>
                                                <option data-countrycode="GL" value="+299">Greenland (+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenada (+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe (+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam (+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala (+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinea (+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinea - Bissau (+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyana (+592)</option>
                                                <option data-countrycode="HT" value="+509">Haiti (+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras (+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong (+852)</option>
                                                <option data-countrycode="HU" value="+36">Hungary (+36)</option>
                                                <option data-countrycode="IS" value="+354">Iceland (+354)</option>
                                                <option data-countrycode="IN" value="+91">India (+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonesia (+62)</option>
                                                <option data-countrycode="IR" value="+98">Iran (+98)</option>
                                                <option data-countrycode="IQ" value="+964">Iraq (+964)</option>
                                                <option data-countrycode="IE" value="+353">Ireland (+353)</option>
                                                <option data-countrycode="IL" value="+972">Israel (+972)</option>
                                                <option data-countrycode="IT" value="+39">Italy (+39)</option>
                                                <option data-countrycode="CI" value="+225">Ivory Coast (+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaica (+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japan (+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan (+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan (+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya (+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati (+686)</option>
                                                <option data-countrycode="KP" value="+850">Korea, North (+850)</option>
                                                <option data-countrycode="KR" value="+82">Korea, South (+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo (+383)</option>
                                                <option data-countrycode="KW" value="+965">Kuwait (+965)</option>
                                                <option data-countrycode="KG" value="+996">Kyrgyzstan (+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos (+856)</option>
                                                <option data-countrycode="LV" value="+371">Latvia (+371)</option>
                                                <option data-countrycode="LB" value="+961">Lebanon (+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho (+266)</option>
                                                <option data-countrycode="LR" value="+231">Liberia (+231)</option>
                                                <option data-countrycode="LY" value="+218">Libya (+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein (+423)</option>
                                                <option data-countrycode="LT" value="+370">Lithuania (+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg (+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao (+853)</option>
                                                <option data-countrycode="MK" value="+389">Macedonia (+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar (+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi (+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaysia (+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives (+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali (+223)</option>
                                                <option data-countrycode="MT" value="+356">Malta (+356)</option>
                                                <option data-countrycode="MH" value="+692">Marshall Islands (+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique (+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritania (+222)</option>
                                                <option data-countrycode="MU" value="+230">Mauritius (+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte (+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexico (+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronesia (+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldova (+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco (+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolia (+976)</option>
                                                <option data-countrycode="ME" value="+382">Montenegro (+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat (+1664)</option>
                                                <option data-countrycode="MA" value="+212">Morocco (+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique (+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar (+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibia (+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru (+674)</option>
                                                <option data-countrycode="NP" value="+977">Nepal (+977)</option>
                                                <option data-countrycode="NL" value="+31">Netherlands (+31)</option>
                                                <option data-countrycode="NC" value="+687">New Caledonia (+687)</option>
                                                <option data-countrycode="NZ" value="+64">New Zealand (+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua (+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger (+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria (+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue (+683)</option>
                                                <option data-countrycode="NF" value="+672">Norfolk Islands (+672)</option>
                                                <option data-countrycode="NP" value="+1670">Northern Mariana Islands (+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norway (+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman (+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan (+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau (+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine (+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama (+507)</option>
                                                <option data-countrycode="PG" value="+675">Papua New Guinea (+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay (+595)</option>
                                                <option data-countrycode="PE" value="+51">Peru (+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines (+63)</option>
                                                <option data-countrycode="PL" value="+48">Poland (+48)</option>
                                                <option data-countrycode="PT" value="+351">Portugal (+351)</option>
                                                <option data-countrycode="PR" value="+1787">Puerto Rico (+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar (+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion (+262)</option>
                                                <option data-countrycode="RO" value="+40">Romania (+40)</option>
                                                <option data-countrycode="RU" value="+7">Russia (+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda (+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa (+685)</option>
                                                <option data-countrycode="SM" value="+378">San Marino (+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé &amp; Principe (+239)</option>
                                                <option data-countrycode="SA" value="+966">Saudi Arabia (+966)</option>
                                                <option data-countrycode="SN" value="+221">Senegal (+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbia (+381)</option>
                                                <option data-countrycode="SC" value="+248">Seychelles (+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone (+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapore (+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovakia (+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovenia (+386)</option>
                                                <option data-countrycode="SB" value="+677">Solomon Islands (+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalia (+252)</option>
                                                <option data-countrycode="ZA" value="+27">South Africa (+27)</option>
                                                <option data-countrycode="SS" value="+211">South Sudan (+211)</option>
                                                <option data-countrycode="ES" value="+34">Spain (+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka (+94)</option>
                                                <option data-countrycode="SH" value="+290">St. Helena (+290)</option>
                                                <option data-countrycode="KN" value="+1869">St. Kitts and Nevis (+1869)</option>
                                                <option data-countrycode="SC" value="+1758">St. Lucia (+1758)</option>
                                                <option data-countrycode="PM" value="+508">St. Pierre and Miquelon (+508)</option>
                                                <option data-countrycode="SD" value="+249">Sudan (+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname (+597)</option>
                                                <option data-countrycode="SE" value="+46">Sweden (+46)</option>
                                                <option data-countrycode="CH" value="+41">Switzerland (+41)</option>
                                                <option data-countrycode="SI" value="+963">Syria (+963)</option>
                                                <option data-countrycode="TW" value="+886">Taiwan (+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tajikstan (+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzania (+255)</option>
                                                <option data-countrycode="TH" value="+66">Thailand (+66)</option>
                                                <option data-countrycode="TG" value="+228">Togo (+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau (+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga (+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad &amp; Tobago (+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisia (+216)</option>
                                                <option data-countrycode="TR" value="+90">Turkey (+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkmenistan (+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turks &amp; Caicos Islands (+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu (+688)</option>
                                                <option data-countrycode="UG" value="+256">Uganda (+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine (+380)</option>
                                                <option data-countrycode="AE" value="+971">United Arab Emirates (+971)</option>
                                                <option data-countrycode="GB" value="+44">United Kingdom (+44)</option>
                                                <option data-countrycode="US" value="+1">United States of America (+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay (+598)</option>
                                                <option data-countrycode="UZ" value="+998">Uzbekistan (+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu (+678)</option>
                                                <option data-countrycode="VA" value="+39">Vatican City (+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela (+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam (+84)</option>
                                                <option data-countrycode="VG" value="+1284">Virgin Islands - British (+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Virgin Islands - US (+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis &amp; Futuna (+681)</option>
                                                <option data-countrycode="EH" value="+967">Western Sahara (+212)</option>
                                                <option data-countrycode="YE" value="+967">Yemen (+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambia (+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe (+263)</option>
                                            </select>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 1, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode1<%=IIf(LanguageID = 1, "NotUsed", "") %>" name="countryCode1<%=IIf(LanguageID = 1, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93" label="93">Afghanistan(+93)</option>
                                                <option data-countrycode="AL" value="+355">Albanie(+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algérie(+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorre(+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola(+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla(+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua & amp; Barbuda(+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentine(+54)</option>
                                                <option data-countrycode="AM" value="+374">Arménie(+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba(+297)</option>
                                                <option data-countrycode="AC" value="+247">Île de l'Ascension(+247)</option>
                                                <option data-countrycode="AU" value="+61">Australie(+61)</option>
                                                <option data-countrycode="AT" value="+43">L'Autriche(+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaïdjan(+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas(+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahreïn(+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh(+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbade(+1246)</option>
                                                <option data-countrycode="BY" value="+375">Biélorussie(+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgique(+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize(+501)</option>
                                                <option data-countrycode="BJ" value="+229">Bénin(+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermudes(+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhoutan(+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivie(+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba et Saint-Eustache(+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnie-Herzégovine(+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana(+267)</option>
                                                <option data-countrycode="BR" value="+55">Brésil(+55)</option>
                                                <option data-countrycode="IO" value="+246">Territoire britannique de l'océan Indien(+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei(+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgarie(+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso(+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi(+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodge(+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroun(+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada(+1)</option>
                                                <option data-countrycode="CV" value="+238">Îles du Cap-Vert(+238)</option>
                                                <option data-countrycode="KY" value="+1345">Îles Caïmans(+1345)</option>
                                                <option data-countrycode="CF" value="+236">République centrafricaine(+236)</option>
                                                <option data-countrycode="TD" value="+235">Tchad(+235)</option>
                                                <option data-countrycode="CL" value="+56">Chili(+56)</option>
                                                <option data-countrycode="CN" value="+86">Chine(+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombie(+57)</option>
                                                <option data-countrycode="KM" value="+269">Comores(+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo(+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, République démocratique du (+243)</option>
                                                <option data-countrycode="CI" value="+225">Côte d'Ivoire(+225)</option>
                                                <option data-countrycode="CK" value="+682">les Îles Cook(+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica(+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatie(+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba(+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curacao(+5999)</option>
                                                <option data-countrycode="CY" value="+357">Chypre(+357)</option>
                                                <option data-countrycode="CZ" value="+420">République Tchèque(+420)</option>
                                                <option data-countrycode="DK" value="+45">Danemark(+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti(+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominique(+1767)</option>
                                                <option data-countrycode="DO" value="+1809">République Dominicaine(+1809)</option>
                                                <option data-countrycode="TL" value="+670">Timor oriental(+670)</option>
                                                <option data-countrycode="EC" value="+593">Equateur(+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypte(+20)</option>
                                                <option data-countrycode="SV" value="+503">Le Salvador(+503)</option>
                                                <option data-countrycode="GQ" value="+240">Guinée Équatoriale(+240)</option>
                                                <option data-countrycode="ER" value="+291">Érythrée(+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonie(+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini(+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopie(+251)</option>
                                                <option data-countrycode="FK" value="+500">les îles Falkland(+500)</option>
                                                <option data-countrycode="FO" value="+298">Îles Féroé(+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fidji(+679)</option>
                                                <option data-countrycode="FI" value="+358">Finlande(+358)</option>
                                                <option data-countrycode="FR" value="+33">France(+33)</option>
                                                <option data-countrycode="GF" value="+594">Guyane Française(+594)</option>
                                                <option data-countrycode="PF" value="+689">Polynésie française(+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon(+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambie(+220)</option>
                                                <option data-countrycode="GE" value="+995">Géorgie(+995)</option>
                                                <option data-countrycode="DE" value="+49">Allemagne(+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana(+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar(+350)</option>
                                                <option data-countrycode="GR" value="+30">Grèce(+30)</option>
                                                <option data-countrycode="GL" value="+299">Groenland(+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenade(+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe(+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam(+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala(+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinée(+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinée - Bissau(+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyane(+592)</option>
                                                <option data-countrycode="HT" value="+509">Haïti(+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras(+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong(+852)</option>
                                                <option data-countrycode="HU" value="+36">Hongrie(+36)</option>
                                                <option data-countrycode="IS" value="+354">Islande(+354)</option>
                                                <option data-countrycode="IN" value="+91">Inde(+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonésie(+62)</option>
                                                <option data-countrycode="IR" value="+98">L'Iran(+98)</option>
                                                <option data-countrycode="IQ" value="+964">Irak(+964)</option>
                                                <option data-countrycode="IE" value="+353">Irlande(+353)</option>
                                                <option data-countrycode="IL" value="+972">Israël(+972)</option>
                                                <option data-countrycode="IT" value="+39">Italie(+39)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaïque(+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japon(+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan(+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan(+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya(+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati(+686)</option>
                                                <option data-countrycode="KP" value="+850">Corée du Nord(+850)</option>
                                                <option data-countrycode="KR" value="+82">COREE DU SUD(+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo(+383)</option>
                                                <option data-countrycode="KW" value="+965">Koweit(+965)</option>
                                                <option data-countrycode="KG" value="+996">Kirghizistan(+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos(+856)</option>
                                                <option data-countrycode="LV" value="+371">Lettonie(+371)</option>
                                                <option data-countrycode="LB" value="+961">Liban(+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho(+266)</option>
                                                <option data-countrycode="LR" value="+231">Libéria(+231)</option>
                                                <option data-countrycode="LY" value="+218">Libye(+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein(+423)</option>
                                                <option data-countrycode="LT" value="+370">Lituanie(+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg(+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao(+853)</option>
                                                <option data-countrycode="MK" value="+389">Macédoine(+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar(+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi(+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaisie(+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives(+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali(+223)</option>
                                                <option data-countrycode="MT" value="+356">Malte(+356)</option>
                                                <option data-countrycode="MH" value="+692">Iles Marshall(+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique(+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritanie(+222)</option>
                                                <option data-countrycode="MU" value="+230">Ile Maurice(+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte(+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexique(+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronésie(+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldavie(+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco(+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolie(+976)</option>
                                                <option data-countrycode="ME" value="+382">Monténégro(+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat(+1664)</option>
                                                <option data-countrycode="MA" value="+212">Maroc(+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique(+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar(+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibie(+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru(+674)</option>
                                                <option data-countrycode="NP" value="+977">Népal(+977)</option>
                                                <option data-countrycode="NL" value="+31">Pays-Bas(+31)</option>
                                                <option data-countrycode="NC" value="+687">Nouvelle Calédonie(+687)</option>
                                                <option data-countrycode="NZ" value="+64">Nouvelle-Zélande(+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua(+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger(+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria(+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue(+683)</option>
                                                <option data-countrycode="NF" value="+672">Îles Norfolk(+672)</option>
                                                <option data-countrycode="NP" value="+1670">Îles Mariannes du Nord(+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norvège(+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman(+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan(+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau(+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine(+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama(+507)</option>
                                                <option data-countrycode="PG" value="+675">Papouasie Nouvelle Guinée(+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay(+595)</option>
                                                <option data-countrycode="PE" value="+51">Pérou(+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines(+63)</option>
                                                <option data-countrycode="PL" value="+48">Pologne(+48)</option>
                                                <option data-countrycode="PT" value="+351">le Portugal(+351)</option>
                                                <option data-countrycode="PR" value="+1787">Porto Rico(+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar(+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion(+262)</option>
                                                <option data-countrycode="RO" value="+40">Roumanie(+40)</option>
                                                <option data-countrycode="RU" value="+7">Russie(+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda(+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa(+685)</option>
                                                <option data-countrycode="SM" value="+378">Saint Marin(+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé & amp; Principe(+239)</option>
                                                <option data-countrycode="SA" value="+966">Arabie Saoudite(+966)</option>
                                                <option data-countrycode="SN" value="+221">Sénégal(+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbie(+381)</option>
                                                <option data-countrycode="SC" value="+248">les Seychelles(+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone(+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapour(+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovaquie(+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovénie(+386)</option>
                                                <option data-countrycode="SB" value="+677">îles Salomon(+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalie(+252)</option>
                                                <option data-countrycode="ZA" value="+27">Afrique du Sud(+27)</option>
                                                <option data-countrycode="SS" value="+211">Soudan du sud(+211)</option>
                                                <option data-countrycode="ES" value="+34">Espagne(+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka(+94)</option>
                                                <option data-countrycode="SH" value="+290">Sainte-Hélène(+290)</option>
                                                <option data-countrycode="KN" value="+1869">Saint-Kitts-et-Nevis(+1869)</option>
                                                <option data-countrycode="SC" value="+1758">Sainte Lucie(+1758)</option>
                                                <option data-countrycode="PM" value="+508">Saint-Pierre et Miquelon(+508)</option>
                                                <option data-countrycode="SD" value="+249">Soudan(+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname(+597)</option>
                                                <option data-countrycode="SE" value="+46">Suède(+46)</option>
                                                <option data-countrycode="CH" value="+41">Suisse(+41)</option>
                                                <option data-countrycode="SI" value="+963">Syrie(+963)</option>
                                                <option data-countrycode="TW" value="+886">Taïwan(+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tadjikstan(+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzanie(+255)</option>
                                                <option data-countrycode="TH" value="+66">Thaïlande(+66)</option>
                                                <option data-countrycode="TG" value="+228">Aller(+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau(+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga(+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad & amp; Tobago(+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisie(+216)</option>
                                                <option data-countrycode="TR" value="+90">dinde(+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkménistan(+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turcs & amp; Îles Caïques(+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu(+688)</option>
                                                <option data-countrycode="UG" value="+256">Ouganda(+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine(+380)</option>
                                                <option data-countrycode="AE" value="+971">Emirats Arabes Unis(+971)</option>
                                                <option data-countrycode="GB" value="+44">Royaume-Uni(+44)</option>
                                                <option data-countrycode="US" value="+1">les États-Unis d'Amérique(+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay(+598)</option>
                                                <option data-countrycode="UZ" value="+998">Ouzbékistan(+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu(+678)</option>
                                                <option data-countrycode="VA" value="+39">Cité du Vatican(+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela(+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam(+84)</option>
                                                <option data-countrycode="VG" value="+1284">Îles Vierges britanniques(+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Îles Vierges - États-Unis(+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis & amp; Futuna(+681)</option>
                                                <option data-countrycode="EH" value="+967">Sahara occidental(+212)</option>
                                                <option data-countrycode="YE" value="+967">Yémen(+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambie(+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe(+263)</option>
                                            </select>
                                            <input style="width: 68%; padding-left: 2px; padding-right: 0;" class="forminput respFontSize" id="txtPhoneNumber1" min="0" name="txtPhoneNumber1" type="number" placeholder="<%=GetContent("Phone1 Number") %>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <input type="radio" class="radiocontrol" id="Sim2Primary" name="PrimarySim" />
                                        </th>
                                        <td>
                                            <input style="padding-left: 2px; padding-right: 0;" class="forminput respFontSize" maxlength="15" id="txtIMEI2" name="txtIMEI2" type="number" placeholder="<%=GetContent("IMEI2 Number") %>" />
                                        </td>
                                        <td>&nbsp;</td>

                                        <td nowrap>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 2, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode2<%=IIf(LanguageID = 2, "NotUsed", "") %>" name="countryCode2<%=IIf(LanguageID = 2, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93">Afghanistan (+93)</option>
                                                <option data-countrycode="AL" value="+355">Albania (+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algeria (+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorra (+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola (+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla (+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua &amp; Barbuda (+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentina (+54)</option>
                                                <option data-countrycode="AM" value="+374">Armenia (+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba (+297)</option>
                                                <option data-countrycode="AC" value="+247">Ascension Island (+247)</option>
                                                <option data-countrycode="AU" value="+61">Australia (+61)</option>
                                                <option data-countrycode="AT" value="+43">Austria (+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaijan (+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas (+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahrain (+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh (+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbados (+1246)</option>
                                                <option data-countrycode="BY" value="+375">Belarus (+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgium (+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize (+501)</option>
                                                <option data-countrycode="BJ" value="+229">Benin (+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermuda (+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhutan (+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivia (+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba and Sint Eustatius (+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnia Herzegovina (+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana (+267)</option>
                                                <option data-countrycode="BR" value="+55">Brazil (+55)</option>
                                                <option data-countrycode="IO" value="+246">British Indian Ocean Territory (+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei (+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgaria (+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso (+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi (+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodia (+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroon (+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada (+1)</option>
                                                <option data-countrycode="CV" value="+238">Cape Verde Islands (+238)</option>
                                                <option data-countrycode="KY" value="+1345">Cayman Islands (+1345)</option>
                                                <option data-countrycode="CF" value="+236">Central African Republic (+236)</option>
                                                <option data-countrycode="TD" value="+235">Chad (+235)</option>
                                                <option data-countrycode="CL" value="+56">Chile (+56)</option>
                                                <option data-countrycode="CN" value="+86">China (+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombia (+57)</option>
                                                <option data-countrycode="KM" value="+269">Comoros (+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo (+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, Democratic Republic of the (+243)</option>
                                                <option data-countrycode="CK" value="+682">Cook Islands (+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica (+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatia (+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba (+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curaçao (+5999)</option>
                                                <option data-countrycode="CY" value="+357">Cyprus (+357)</option>
                                                <option data-countrycode="CZ" value="+420">Czech Republic (+420)</option>
                                                <option data-countrycode="DK" value="+45">Denmark (+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti (+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominica (+1767)</option>
                                                <option data-countrycode="DO" value="+1809">Dominican Republic (+1809)</option>
                                                <option data-countrycode="TL" value="+670">East Timor (+670)</option>
                                                <option data-countrycode="EC" value="+593">Ecuador (+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypt (+20)</option>
                                                <option data-countrycode="SV" value="+503">El Salvador (+503)</option>
                                                <option data-countrycode="GQ" value="+240">Equatorial Guinea (+240)</option>
                                                <option data-countrycode="ER" value="+291">Eritrea (+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonia (+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini (+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopia (+251)</option>
                                                <option data-countrycode="FK" value="+500">Falkland Islands (+500)</option>
                                                <option data-countrycode="FO" value="+298">Faroe Islands (+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fiji (+679)</option>
                                                <option data-countrycode="FI" value="+358">Finland (+358)</option>
                                                <option data-countrycode="FR" value="+33">France (+33)</option>
                                                <option data-countrycode="GF" value="+594">French Guiana (+594)</option>
                                                <option data-countrycode="PF" value="+689">French Polynesia (+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon (+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambia (+220)</option>
                                                <option data-countrycode="GE" value="+995">Georgia (+995)</option>
                                                <option data-countrycode="DE" value="+49">Germany (+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana (+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar (+350)</option>
                                                <option data-countrycode="GR" value="+30">Greece (+30)</option>
                                                <option data-countrycode="GL" value="+299">Greenland (+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenada (+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe (+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam (+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala (+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinea (+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinea - Bissau (+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyana (+592)</option>
                                                <option data-countrycode="HT" value="+509">Haiti (+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras (+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong (+852)</option>
                                                <option data-countrycode="HU" value="+36">Hungary (+36)</option>
                                                <option data-countrycode="IS" value="+354">Iceland (+354)</option>
                                                <option data-countrycode="IN" value="+91">India (+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonesia (+62)</option>
                                                <option data-countrycode="IR" value="+98">Iran (+98)</option>
                                                <option data-countrycode="IQ" value="+964">Iraq (+964)</option>
                                                <option data-countrycode="IE" value="+353">Ireland (+353)</option>
                                                <option data-countrycode="IL" value="+972">Israel (+972)</option>
                                                <option data-countrycode="IT" value="+39">Italy (+39)</option>
                                                <option data-countrycode="CI" value="+225">Ivory Coast (+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaica (+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japan (+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan (+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan (+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya (+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati (+686)</option>
                                                <option data-countrycode="KP" value="+850">Korea, North (+850)</option>
                                                <option data-countrycode="KR" value="+82">Korea, South (+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo (+383)</option>
                                                <option data-countrycode="KW" value="+965">Kuwait (+965)</option>
                                                <option data-countrycode="KG" value="+996">Kyrgyzstan (+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos (+856)</option>
                                                <option data-countrycode="LV" value="+371">Latvia (+371)</option>
                                                <option data-countrycode="LB" value="+961">Lebanon (+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho (+266)</option>
                                                <option data-countrycode="LR" value="+231">Liberia (+231)</option>
                                                <option data-countrycode="LY" value="+218">Libya (+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein (+423)</option>
                                                <option data-countrycode="LT" value="+370">Lithuania (+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg (+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao (+853)</option>
                                                <option data-countrycode="MK" value="+389">Macedonia (+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar (+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi (+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaysia (+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives (+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali (+223)</option>
                                                <option data-countrycode="MT" value="+356">Malta (+356)</option>
                                                <option data-countrycode="MH" value="+692">Marshall Islands (+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique (+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritania (+222)</option>
                                                <option data-countrycode="MU" value="+230">Mauritius (+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte (+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexico (+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronesia (+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldova (+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco (+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolia (+976)</option>
                                                <option data-countrycode="ME" value="+382">Montenegro (+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat (+1664)</option>
                                                <option data-countrycode="MA" value="+212">Morocco (+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique (+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar (+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibia (+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru (+674)</option>
                                                <option data-countrycode="NP" value="+977">Nepal (+977)</option>
                                                <option data-countrycode="NL" value="+31">Netherlands (+31)</option>
                                                <option data-countrycode="NC" value="+687">New Caledonia (+687)</option>
                                                <option data-countrycode="NZ" value="+64">New Zealand (+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua (+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger (+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria (+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue (+683)</option>
                                                <option data-countrycode="NF" value="+672">Norfolk Islands (+672)</option>
                                                <option data-countrycode="NP" value="+1670">Northern Mariana Islands (+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norway (+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman (+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan (+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau (+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine (+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama (+507)</option>
                                                <option data-countrycode="PG" value="+675">Papua New Guinea (+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay (+595)</option>
                                                <option data-countrycode="PE" value="+51">Peru (+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines (+63)</option>
                                                <option data-countrycode="PL" value="+48">Poland (+48)</option>
                                                <option data-countrycode="PT" value="+351">Portugal (+351)</option>
                                                <option data-countrycode="PR" value="+1787">Puerto Rico (+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar (+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion (+262)</option>
                                                <option data-countrycode="RO" value="+40">Romania (+40)</option>
                                                <option data-countrycode="RU" value="+7">Russia (+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda (+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa (+685)</option>
                                                <option data-countrycode="SM" value="+378">San Marino (+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé &amp; Principe (+239)</option>
                                                <option data-countrycode="SA" value="+966">Saudi Arabia (+966)</option>
                                                <option data-countrycode="SN" value="+221">Senegal (+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbia (+381)</option>
                                                <option data-countrycode="SC" value="+248">Seychelles (+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone (+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapore (+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovakia (+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovenia (+386)</option>
                                                <option data-countrycode="SB" value="+677">Solomon Islands (+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalia (+252)</option>
                                                <option data-countrycode="ZA" value="+27">South Africa (+27)</option>
                                                <option data-countrycode="SS" value="+211">South Sudan (+211)</option>
                                                <option data-countrycode="ES" value="+34">Spain (+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka (+94)</option>
                                                <option data-countrycode="SH" value="+290">St. Helena (+290)</option>
                                                <option data-countrycode="KN" value="+1869">St. Kitts and Nevis (+1869)</option>
                                                <option data-countrycode="SC" value="+1758">St. Lucia (+1758)</option>
                                                <option data-countrycode="PM" value="+508">St. Pierre and Miquelon (+508)</option>
                                                <option data-countrycode="SD" value="+249">Sudan (+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname (+597)</option>
                                                <option data-countrycode="SE" value="+46">Sweden (+46)</option>
                                                <option data-countrycode="CH" value="+41">Switzerland (+41)</option>
                                                <option data-countrycode="SI" value="+963">Syria (+963)</option>
                                                <option data-countrycode="TW" value="+886">Taiwan (+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tajikstan (+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzania (+255)</option>
                                                <option data-countrycode="TH" value="+66">Thailand (+66)</option>
                                                <option data-countrycode="TG" value="+228">Togo (+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau (+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga (+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad &amp; Tobago (+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisia (+216)</option>
                                                <option data-countrycode="TR" value="+90">Turkey (+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkmenistan (+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turks &amp; Caicos Islands (+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu (+688)</option>
                                                <option data-countrycode="UG" value="+256">Uganda (+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine (+380)</option>
                                                <option data-countrycode="AE" value="+971">United Arab Emirates (+971)</option>
                                                <option data-countrycode="GB" value="+44">United Kingdom (+44)</option>
                                                <option data-countrycode="US" value="+1">United States of America (+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay (+598)</option>
                                                <option data-countrycode="UZ" value="+998">Uzbekistan (+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu (+678)</option>
                                                <option data-countrycode="VA" value="+39">Vatican City (+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela (+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam (+84)</option>
                                                <option data-countrycode="VG" value="+1284">Virgin Islands - British (+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Virgin Islands - US (+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis &amp; Futuna (+681)</option>
                                                <option data-countrycode="EH" value="+967">Western Sahara (+212)</option>
                                                <option data-countrycode="YE" value="+967">Yemen (+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambia (+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe (+263)</option>
                                            </select>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 1, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode2<%=IIf(LanguageID = 1, "NotUsed", "") %>" name="countryCode2<%=IIf(LanguageID = 1, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93" label="93">Afghanistan(+93)</option>
                                                <option data-countrycode="AL" value="+355">Albanie(+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algérie(+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorre(+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola(+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla(+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua & amp; Barbuda(+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentine(+54)</option>
                                                <option data-countrycode="AM" value="+374">Arménie(+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba(+297)</option>
                                                <option data-countrycode="AC" value="+247">Île de l'Ascension(+247)</option>
                                                <option data-countrycode="AU" value="+61">Australie(+61)</option>
                                                <option data-countrycode="AT" value="+43">L'Autriche(+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaïdjan(+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas(+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahreïn(+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh(+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbade(+1246)</option>
                                                <option data-countrycode="BY" value="+375">Biélorussie(+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgique(+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize(+501)</option>
                                                <option data-countrycode="BJ" value="+229">Bénin(+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermudes(+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhoutan(+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivie(+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba et Saint-Eustache(+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnie-Herzégovine(+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana(+267)</option>
                                                <option data-countrycode="BR" value="+55">Brésil(+55)</option>
                                                <option data-countrycode="IO" value="+246">Territoire britannique de l'océan Indien(+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei(+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgarie(+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso(+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi(+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodge(+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroun(+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada(+1)</option>
                                                <option data-countrycode="CV" value="+238">Îles du Cap-Vert(+238)</option>
                                                <option data-countrycode="KY" value="+1345">Îles Caïmans(+1345)</option>
                                                <option data-countrycode="CF" value="+236">République centrafricaine(+236)</option>
                                                <option data-countrycode="TD" value="+235">Tchad(+235)</option>
                                                <option data-countrycode="CL" value="+56">Chili(+56)</option>
                                                <option data-countrycode="CN" value="+86">Chine(+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombie(+57)</option>
                                                <option data-countrycode="KM" value="+269">Comores(+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo(+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, République démocratique du (+243)</option>
                                                <option data-countrycode="CK" value="+682">les Îles Cook(+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica(+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatie(+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba(+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curacao(+5999)</option>
                                                <option data-countrycode="CY" value="+357">Chypre(+357)</option>
                                                <option data-countrycode="CZ" value="+420">République Tchèque(+420)</option>
                                                <option data-countrycode="DK" value="+45">Danemark(+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti(+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominique(+1767)</option>
                                                <option data-countrycode="DO" value="+1809">République Dominicaine(+1809)</option>
                                                <option data-countrycode="TL" value="+670">Timor oriental(+670)</option>
                                                <option data-countrycode="EC" value="+593">Equateur(+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypte(+20)</option>
                                                <option data-countrycode="SV" value="+503">Le Salvador(+503)</option>
                                                <option data-countrycode="GQ" value="+240">Guinée Équatoriale(+240)</option>
                                                <option data-countrycode="ER" value="+291">Érythrée(+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonie(+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini(+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopie(+251)</option>
                                                <option data-countrycode="FK" value="+500">les îles Falkland(+500)</option>
                                                <option data-countrycode="FO" value="+298">Îles Féroé(+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fidji(+679)</option>
                                                <option data-countrycode="FI" value="+358">Finlande(+358)</option>
                                                <option data-countrycode="FR" value="+33">France(+33)</option>
                                                <option data-countrycode="GF" value="+594">Guyane Française(+594)</option>
                                                <option data-countrycode="PF" value="+689">Polynésie française(+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon(+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambie(+220)</option>
                                                <option data-countrycode="GE" value="+995">Géorgie(+995)</option>
                                                <option data-countrycode="DE" value="+49">Allemagne(+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana(+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar(+350)</option>
                                                <option data-countrycode="GR" value="+30">Grèce(+30)</option>
                                                <option data-countrycode="GL" value="+299">Groenland(+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenade(+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe(+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam(+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala(+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinée(+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinée - Bissau(+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyane(+592)</option>
                                                <option data-countrycode="HT" value="+509">Haïti(+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras(+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong(+852)</option>
                                                <option data-countrycode="HU" value="+36">Hongrie(+36)</option>
                                                <option data-countrycode="IS" value="+354">Islande(+354)</option>
                                                <option data-countrycode="IN" value="+91">Inde(+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonésie(+62)</option>
                                                <option data-countrycode="IR" value="+98">L'Iran(+98)</option>
                                                <option data-countrycode="IQ" value="+964">Irak(+964)</option>
                                                <option data-countrycode="IE" value="+353">Irlande(+353)</option>
                                                <option data-countrycode="IL" value="+972">Israël(+972)</option>
                                                <option data-countrycode="IT" value="+39">Italie(+39)</option>
                                                <option data-countrycode="CI" value="+225">Côte d'Ivoire(+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaïque(+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japon(+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan(+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan(+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya(+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati(+686)</option>
                                                <option data-countrycode="KP" value="+850">Corée du Nord(+850)</option>
                                                <option data-countrycode="KR" value="+82">COREE DU SUD(+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo(+383)</option>
                                                <option data-countrycode="KW" value="+965">Koweit(+965)</option>
                                                <option data-countrycode="KG" value="+996">Kirghizistan(+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos(+856)</option>
                                                <option data-countrycode="LV" value="+371">Lettonie(+371)</option>
                                                <option data-countrycode="LB" value="+961">Liban(+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho(+266)</option>
                                                <option data-countrycode="LR" value="+231">Libéria(+231)</option>
                                                <option data-countrycode="LY" value="+218">Libye(+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein(+423)</option>
                                                <option data-countrycode="LT" value="+370">Lituanie(+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg(+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao(+853)</option>
                                                <option data-countrycode="MK" value="+389">Macédoine(+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar(+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi(+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaisie(+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives(+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali(+223)</option>
                                                <option data-countrycode="MT" value="+356">Malte(+356)</option>
                                                <option data-countrycode="MH" value="+692">Iles Marshall(+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique(+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritanie(+222)</option>
                                                <option data-countrycode="MU" value="+230">Ile Maurice(+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte(+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexique(+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronésie(+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldavie(+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco(+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolie(+976)</option>
                                                <option data-countrycode="ME" value="+382">Monténégro(+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat(+1664)</option>
                                                <option data-countrycode="MA" value="+212">Maroc(+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique(+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar(+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibie(+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru(+674)</option>
                                                <option data-countrycode="NP" value="+977">Népal(+977)</option>
                                                <option data-countrycode="NL" value="+31">Pays-Bas(+31)</option>
                                                <option data-countrycode="NC" value="+687">Nouvelle Calédonie(+687)</option>
                                                <option data-countrycode="NZ" value="+64">Nouvelle-Zélande(+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua(+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger(+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria(+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue(+683)</option>
                                                <option data-countrycode="NF" value="+672">Îles Norfolk(+672)</option>
                                                <option data-countrycode="NP" value="+1670">Îles Mariannes du Nord(+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norvège(+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman(+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan(+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau(+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine(+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama(+507)</option>
                                                <option data-countrycode="PG" value="+675">Papouasie Nouvelle Guinée(+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay(+595)</option>
                                                <option data-countrycode="PE" value="+51">Pérou(+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines(+63)</option>
                                                <option data-countrycode="PL" value="+48">Pologne(+48)</option>
                                                <option data-countrycode="PT" value="+351">le Portugal(+351)</option>
                                                <option data-countrycode="PR" value="+1787">Porto Rico(+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar(+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion(+262)</option>
                                                <option data-countrycode="RO" value="+40">Roumanie(+40)</option>
                                                <option data-countrycode="RU" value="+7">Russie(+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda(+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa(+685)</option>
                                                <option data-countrycode="SM" value="+378">Saint Marin(+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé & amp; Principe(+239)</option>
                                                <option data-countrycode="SA" value="+966">Arabie Saoudite(+966)</option>
                                                <option data-countrycode="SN" value="+221">Sénégal(+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbie(+381)</option>
                                                <option data-countrycode="SC" value="+248">les Seychelles(+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone(+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapour(+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovaquie(+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovénie(+386)</option>
                                                <option data-countrycode="SB" value="+677">îles Salomon(+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalie(+252)</option>
                                                <option data-countrycode="ZA" value="+27">Afrique du Sud(+27)</option>
                                                <option data-countrycode="SS" value="+211">Soudan du sud(+211)</option>
                                                <option data-countrycode="ES" value="+34">Espagne(+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka(+94)</option>
                                                <option data-countrycode="SH" value="+290">Sainte-Hélène(+290)</option>
                                                <option data-countrycode="KN" value="+1869">Saint-Kitts-et-Nevis(+1869)</option>
                                                <option data-countrycode="SC" value="+1758">Sainte Lucie(+1758)</option>
                                                <option data-countrycode="PM" value="+508">Saint-Pierre et Miquelon(+508)</option>
                                                <option data-countrycode="SD" value="+249">Soudan(+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname(+597)</option>
                                                <option data-countrycode="SE" value="+46">Suède(+46)</option>
                                                <option data-countrycode="CH" value="+41">Suisse(+41)</option>
                                                <option data-countrycode="SI" value="+963">Syrie(+963)</option>
                                                <option data-countrycode="TW" value="+886">Taïwan(+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tadjikstan(+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzanie(+255)</option>
                                                <option data-countrycode="TH" value="+66">Thaïlande(+66)</option>
                                                <option data-countrycode="TG" value="+228">Aller(+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau(+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga(+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad & amp; Tobago(+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisie(+216)</option>
                                                <option data-countrycode="TR" value="+90">dinde(+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkménistan(+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turcs & amp; Îles Caïques(+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu(+688)</option>
                                                <option data-countrycode="UG" value="+256">Ouganda(+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine(+380)</option>
                                                <option data-countrycode="AE" value="+971">Emirats Arabes Unis(+971)</option>
                                                <option data-countrycode="GB" value="+44">Royaume-Uni(+44)</option>
                                                <option data-countrycode="US" value="+1">les États-Unis d'Amérique(+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay(+598)</option>
                                                <option data-countrycode="UZ" value="+998">Ouzbékistan(+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu(+678)</option>
                                                <option data-countrycode="VA" value="+39">Cité du Vatican(+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela(+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam(+84)</option>
                                                <option data-countrycode="VG" value="+1284">Îles Vierges britanniques(+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Îles Vierges - États-Unis(+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis & amp; Futuna(+681)</option>
                                                <option data-countrycode="EH" value="+967">Sahara occidental(+212)</option>
                                                <option data-countrycode="YE" value="+967">Yémen(+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambie(+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe(+263)</option>
                                            </select>
                                            <input style="width: 68%; padding-left: 2px; padding-right: 0;" class="forminput" id="txtPhoneNumber2" min="0" name="txtPhoneNumber2" type="number" placeholder="<%=GetContent("Phone2 Number") %>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <input type="radio" class="radiocontrol" id="Sim3Primary" name="PrimarySim" />
                                        </th>
                                        <td>
                                            <input style="padding-left: 2px; padding-right: 0;" class="forminput respFontSize" maxlength="15" id="txtIMEI3" name="txtIMEI3" type="number" placeholder="<%=GetContent("IMEI3 Number") %>" />
                                        </td>
                                        <td>&nbsp;</td>

                                        <td nowrap>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 2, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode3<%=IIf(LanguageID = 2, "NotUsed", "") %>" name="countryCode3<%=IIf(LanguageID = 2, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93">Afghanistan (+93)</option>
                                                <option data-countrycode="AL" value="+355">Albania (+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algeria (+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorra (+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola (+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla (+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua &amp; Barbuda (+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentina (+54)</option>
                                                <option data-countrycode="AM" value="+374">Armenia (+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba (+297)</option>
                                                <option data-countrycode="AC" value="+247">Ascension Island (+247)</option>
                                                <option data-countrycode="AU" value="+61">Australia (+61)</option>
                                                <option data-countrycode="AT" value="+43">Austria (+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaijan (+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas (+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahrain (+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh (+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbados (+1246)</option>
                                                <option data-countrycode="BY" value="+375">Belarus (+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgium (+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize (+501)</option>
                                                <option data-countrycode="BJ" value="+229">Benin (+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermuda (+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhutan (+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivia (+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba and Sint Eustatius (+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnia Herzegovina (+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana (+267)</option>
                                                <option data-countrycode="BR" value="+55">Brazil (+55)</option>
                                                <option data-countrycode="IO" value="+246">British Indian Ocean Territory (+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei (+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgaria (+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso (+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi (+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodia (+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroon (+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada (+1)</option>
                                                <option data-countrycode="CV" value="+238">Cape Verde Islands (+238)</option>
                                                <option data-countrycode="KY" value="+1345">Cayman Islands (+1345)</option>
                                                <option data-countrycode="CF" value="+236">Central African Republic (+236)</option>
                                                <option data-countrycode="TD" value="+235">Chad (+235)</option>
                                                <option data-countrycode="CL" value="+56">Chile (+56)</option>
                                                <option data-countrycode="CN" value="+86">China (+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombia (+57)</option>
                                                <option data-countrycode="KM" value="+269">Comoros (+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo (+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, Democratic Republic of the (+243)</option>
                                                <option data-countrycode="CK" value="+682">Cook Islands (+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica (+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatia (+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba (+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curaçao (+5999)</option>
                                                <option data-countrycode="CY" value="+357">Cyprus (+357)</option>
                                                <option data-countrycode="CZ" value="+420">Czech Republic (+420)</option>
                                                <option data-countrycode="DK" value="+45">Denmark (+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti (+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominica (+1767)</option>
                                                <option data-countrycode="DO" value="+1809">Dominican Republic (+1809)</option>
                                                <option data-countrycode="TL" value="+670">East Timor (+670)</option>
                                                <option data-countrycode="EC" value="+593">Ecuador (+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypt (+20)</option>
                                                <option data-countrycode="SV" value="+503">El Salvador (+503)</option>
                                                <option data-countrycode="GQ" value="+240">Equatorial Guinea (+240)</option>
                                                <option data-countrycode="ER" value="+291">Eritrea (+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonia (+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini (+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopia (+251)</option>
                                                <option data-countrycode="FK" value="+500">Falkland Islands (+500)</option>
                                                <option data-countrycode="FO" value="+298">Faroe Islands (+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fiji (+679)</option>
                                                <option data-countrycode="FI" value="+358">Finland (+358)</option>
                                                <option data-countrycode="FR" value="+33">France (+33)</option>
                                                <option data-countrycode="GF" value="+594">French Guiana (+594)</option>
                                                <option data-countrycode="PF" value="+689">French Polynesia (+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon (+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambia (+220)</option>
                                                <option data-countrycode="GE" value="+995">Georgia (+995)</option>
                                                <option data-countrycode="DE" value="+49">Germany (+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana (+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar (+350)</option>
                                                <option data-countrycode="GR" value="+30">Greece (+30)</option>
                                                <option data-countrycode="GL" value="+299">Greenland (+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenada (+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe (+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam (+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala (+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinea (+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinea - Bissau (+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyana (+592)</option>
                                                <option data-countrycode="HT" value="+509">Haiti (+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras (+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong (+852)</option>
                                                <option data-countrycode="HU" value="+36">Hungary (+36)</option>
                                                <option data-countrycode="IS" value="+354">Iceland (+354)</option>
                                                <option data-countrycode="IN" value="+91">India (+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonesia (+62)</option>
                                                <option data-countrycode="IR" value="+98">Iran (+98)</option>
                                                <option data-countrycode="IQ" value="+964">Iraq (+964)</option>
                                                <option data-countrycode="IE" value="+353">Ireland (+353)</option>
                                                <option data-countrycode="IL" value="+972">Israel (+972)</option>
                                                <option data-countrycode="IT" value="+39">Italy (+39)</option>
                                                <option data-countrycode="CI" value="+225">Ivory Coast (+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaica (+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japan (+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan (+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan (+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya (+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati (+686)</option>
                                                <option data-countrycode="KP" value="+850">Korea, North (+850)</option>
                                                <option data-countrycode="KR" value="+82">Korea, South (+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo (+383)</option>
                                                <option data-countrycode="KW" value="+965">Kuwait (+965)</option>
                                                <option data-countrycode="KG" value="+996">Kyrgyzstan (+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos (+856)</option>
                                                <option data-countrycode="LV" value="+371">Latvia (+371)</option>
                                                <option data-countrycode="LB" value="+961">Lebanon (+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho (+266)</option>
                                                <option data-countrycode="LR" value="+231">Liberia (+231)</option>
                                                <option data-countrycode="LY" value="+218">Libya (+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein (+423)</option>
                                                <option data-countrycode="LT" value="+370">Lithuania (+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg (+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao (+853)</option>
                                                <option data-countrycode="MK" value="+389">Macedonia (+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar (+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi (+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaysia (+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives (+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali (+223)</option>
                                                <option data-countrycode="MT" value="+356">Malta (+356)</option>
                                                <option data-countrycode="MH" value="+692">Marshall Islands (+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique (+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritania (+222)</option>
                                                <option data-countrycode="MU" value="+230">Mauritius (+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte (+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexico (+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronesia (+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldova (+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco (+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolia (+976)</option>
                                                <option data-countrycode="ME" value="+382">Montenegro (+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat (+1664)</option>
                                                <option data-countrycode="MA" value="+212">Morocco (+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique (+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar (+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibia (+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru (+674)</option>
                                                <option data-countrycode="NP" value="+977">Nepal (+977)</option>
                                                <option data-countrycode="NL" value="+31">Netherlands (+31)</option>
                                                <option data-countrycode="NC" value="+687">New Caledonia (+687)</option>
                                                <option data-countrycode="NZ" value="+64">New Zealand (+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua (+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger (+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria (+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue (+683)</option>
                                                <option data-countrycode="NF" value="+672">Norfolk Islands (+672)</option>
                                                <option data-countrycode="NP" value="+1670">Northern Mariana Islands (+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norway (+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman (+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan (+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau (+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine (+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama (+507)</option>
                                                <option data-countrycode="PG" value="+675">Papua New Guinea (+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay (+595)</option>
                                                <option data-countrycode="PE" value="+51">Peru (+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines (+63)</option>
                                                <option data-countrycode="PL" value="+48">Poland (+48)</option>
                                                <option data-countrycode="PT" value="+351">Portugal (+351)</option>
                                                <option data-countrycode="PR" value="+1787">Puerto Rico (+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar (+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion (+262)</option>
                                                <option data-countrycode="RO" value="+40">Romania (+40)</option>
                                                <option data-countrycode="RU" value="+7">Russia (+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda (+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa (+685)</option>
                                                <option data-countrycode="SM" value="+378">San Marino (+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé &amp; Principe (+239)</option>
                                                <option data-countrycode="SA" value="+966">Saudi Arabia (+966)</option>
                                                <option data-countrycode="SN" value="+221">Senegal (+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbia (+381)</option>
                                                <option data-countrycode="SC" value="+248">Seychelles (+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone (+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapore (+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovakia (+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovenia (+386)</option>
                                                <option data-countrycode="SB" value="+677">Solomon Islands (+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalia (+252)</option>
                                                <option data-countrycode="ZA" value="+27">South Africa (+27)</option>
                                                <option data-countrycode="SS" value="+211">South Sudan (+211)</option>
                                                <option data-countrycode="ES" value="+34">Spain (+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka (+94)</option>
                                                <option data-countrycode="SH" value="+290">St. Helena (+290)</option>
                                                <option data-countrycode="KN" value="+1869">St. Kitts and Nevis (+1869)</option>
                                                <option data-countrycode="SC" value="+1758">St. Lucia (+1758)</option>
                                                <option data-countrycode="PM" value="+508">St. Pierre and Miquelon (+508)</option>
                                                <option data-countrycode="SD" value="+249">Sudan (+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname (+597)</option>
                                                <option data-countrycode="SE" value="+46">Sweden (+46)</option>
                                                <option data-countrycode="CH" value="+41">Switzerland (+41)</option>
                                                <option data-countrycode="SI" value="+963">Syria (+963)</option>
                                                <option data-countrycode="TW" value="+886">Taiwan (+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tajikstan (+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzania (+255)</option>
                                                <option data-countrycode="TH" value="+66">Thailand (+66)</option>
                                                <option data-countrycode="TG" value="+228">Togo (+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau (+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga (+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad &amp; Tobago (+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisia (+216)</option>
                                                <option data-countrycode="TR" value="+90">Turkey (+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkmenistan (+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turks &amp; Caicos Islands (+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu (+688)</option>
                                                <option data-countrycode="UG" value="+256">Uganda (+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine (+380)</option>
                                                <option data-countrycode="AE" value="+971">United Arab Emirates (+971)</option>
                                                <option data-countrycode="GB" value="+44">United Kingdom (+44)</option>
                                                <option data-countrycode="US" value="+1">United States of America (+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay (+598)</option>
                                                <option data-countrycode="UZ" value="+998">Uzbekistan (+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu (+678)</option>
                                                <option data-countrycode="VA" value="+39">Vatican City (+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela (+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam (+84)</option>
                                                <option data-countrycode="VG" value="+1284">Virgin Islands - British (+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Virgin Islands - US (+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis &amp; Futuna (+681)</option>
                                                <option data-countrycode="EH" value="+967">Western Sahara (+212)</option>
                                                <option data-countrycode="YE" value="+967">Yemen (+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambia (+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe (+263)</option>
                                            </select>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 1, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode3<%=IIf(LanguageID = 1, "NotUsed", "") %>" name="countryCode3<%=IIf(LanguageID = 1, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93" label="93">Afghanistan(+93)</option>
                                                <option data-countrycode="AL" value="+355">Albanie(+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algérie(+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorre(+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola(+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla(+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua & amp; Barbuda(+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentine(+54)</option>
                                                <option data-countrycode="AM" value="+374">Arménie(+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba(+297)</option>
                                                <option data-countrycode="AC" value="+247">Île de l'Ascension(+247)</option>
                                                <option data-countrycode="AU" value="+61">Australie(+61)</option>
                                                <option data-countrycode="AT" value="+43">L'Autriche(+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaïdjan(+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas(+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahreïn(+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh(+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbade(+1246)</option>
                                                <option data-countrycode="BY" value="+375">Biélorussie(+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgique(+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize(+501)</option>
                                                <option data-countrycode="BJ" value="+229">Bénin(+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermudes(+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhoutan(+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivie(+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba et Saint-Eustache(+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnie-Herzégovine(+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana(+267)</option>
                                                <option data-countrycode="BR" value="+55">Brésil(+55)</option>
                                                <option data-countrycode="IO" value="+246">Territoire britannique de l'océan Indien(+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei(+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgarie(+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso(+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi(+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodge(+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroun(+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada(+1)</option>
                                                <option data-countrycode="CV" value="+238">Îles du Cap-Vert(+238)</option>
                                                <option data-countrycode="KY" value="+1345">Îles Caïmans(+1345)</option>
                                                <option data-countrycode="CF" value="+236">République centrafricaine(+236)</option>
                                                <option data-countrycode="TD" value="+235">Tchad(+235)</option>
                                                <option data-countrycode="CL" value="+56">Chili(+56)</option>
                                                <option data-countrycode="CN" value="+86">Chine(+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombie(+57)</option>
                                                <option data-countrycode="KM" value="+269">Comores(+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo(+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, République démocratique du (+243)</option>
                                                <option data-countrycode="CK" value="+682">les Îles Cook(+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica(+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatie(+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba(+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curacao(+5999)</option>
                                                <option data-countrycode="CY" value="+357">Chypre(+357)</option>
                                                <option data-countrycode="CZ" value="+420">République Tchèque(+420)</option>
                                                <option data-countrycode="DK" value="+45">Danemark(+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti(+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominique(+1767)</option>
                                                <option data-countrycode="DO" value="+1809">République Dominicaine(+1809)</option>
                                                <option data-countrycode="TL" value="+670">Timor oriental(+670)</option>
                                                <option data-countrycode="EC" value="+593">Equateur(+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypte(+20)</option>
                                                <option data-countrycode="SV" value="+503">Le Salvador(+503)</option>
                                                <option data-countrycode="GQ" value="+240">Guinée Équatoriale(+240)</option>
                                                <option data-countrycode="ER" value="+291">Érythrée(+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonie(+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini(+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopie(+251)</option>
                                                <option data-countrycode="FK" value="+500">les îles Falkland(+500)</option>
                                                <option data-countrycode="FO" value="+298">Îles Féroé(+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fidji(+679)</option>
                                                <option data-countrycode="FI" value="+358">Finlande(+358)</option>
                                                <option data-countrycode="FR" value="+33">France(+33)</option>
                                                <option data-countrycode="GF" value="+594">Guyane Française(+594)</option>
                                                <option data-countrycode="PF" value="+689">Polynésie française(+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon(+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambie(+220)</option>
                                                <option data-countrycode="GE" value="+995">Géorgie(+995)</option>
                                                <option data-countrycode="DE" value="+49">Allemagne(+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana(+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar(+350)</option>
                                                <option data-countrycode="GR" value="+30">Grèce(+30)</option>
                                                <option data-countrycode="GL" value="+299">Groenland(+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenade(+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe(+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam(+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala(+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinée(+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinée - Bissau(+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyane(+592)</option>
                                                <option data-countrycode="HT" value="+509">Haïti(+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras(+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong(+852)</option>
                                                <option data-countrycode="HU" value="+36">Hongrie(+36)</option>
                                                <option data-countrycode="IS" value="+354">Islande(+354)</option>
                                                <option data-countrycode="IN" value="+91">Inde(+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonésie(+62)</option>
                                                <option data-countrycode="IR" value="+98">L'Iran(+98)</option>
                                                <option data-countrycode="IQ" value="+964">Irak(+964)</option>
                                                <option data-countrycode="IE" value="+353">Irlande(+353)</option>
                                                <option data-countrycode="IL" value="+972">Israël(+972)</option>
                                                <option data-countrycode="IT" value="+39">Italie(+39)</option>
                                                <option data-countrycode="CI" value="+225">Côte d'Ivoire(+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaïque(+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japon(+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan(+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan(+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya(+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati(+686)</option>
                                                <option data-countrycode="KP" value="+850">Corée du Nord(+850)</option>
                                                <option data-countrycode="KR" value="+82">COREE DU SUD(+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo(+383)</option>
                                                <option data-countrycode="KW" value="+965">Koweit(+965)</option>
                                                <option data-countrycode="KG" value="+996">Kirghizistan(+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos(+856)</option>
                                                <option data-countrycode="LV" value="+371">Lettonie(+371)</option>
                                                <option data-countrycode="LB" value="+961">Liban(+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho(+266)</option>
                                                <option data-countrycode="LR" value="+231">Libéria(+231)</option>
                                                <option data-countrycode="LY" value="+218">Libye(+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein(+423)</option>
                                                <option data-countrycode="LT" value="+370">Lituanie(+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg(+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao(+853)</option>
                                                <option data-countrycode="MK" value="+389">Macédoine(+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar(+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi(+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaisie(+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives(+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali(+223)</option>
                                                <option data-countrycode="MT" value="+356">Malte(+356)</option>
                                                <option data-countrycode="MH" value="+692">Iles Marshall(+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique(+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritanie(+222)</option>
                                                <option data-countrycode="MU" value="+230">Ile Maurice(+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte(+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexique(+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronésie(+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldavie(+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco(+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolie(+976)</option>
                                                <option data-countrycode="ME" value="+382">Monténégro(+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat(+1664)</option>
                                                <option data-countrycode="MA" value="+212">Maroc(+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique(+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar(+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibie(+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru(+674)</option>
                                                <option data-countrycode="NP" value="+977">Népal(+977)</option>
                                                <option data-countrycode="NL" value="+31">Pays-Bas(+31)</option>
                                                <option data-countrycode="NC" value="+687">Nouvelle Calédonie(+687)</option>
                                                <option data-countrycode="NZ" value="+64">Nouvelle-Zélande(+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua(+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger(+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria(+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue(+683)</option>
                                                <option data-countrycode="NF" value="+672">Îles Norfolk(+672)</option>
                                                <option data-countrycode="NP" value="+1670">Îles Mariannes du Nord(+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norvège(+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman(+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan(+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau(+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine(+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama(+507)</option>
                                                <option data-countrycode="PG" value="+675">Papouasie Nouvelle Guinée(+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay(+595)</option>
                                                <option data-countrycode="PE" value="+51">Pérou(+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines(+63)</option>
                                                <option data-countrycode="PL" value="+48">Pologne(+48)</option>
                                                <option data-countrycode="PT" value="+351">le Portugal(+351)</option>
                                                <option data-countrycode="PR" value="+1787">Porto Rico(+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar(+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion(+262)</option>
                                                <option data-countrycode="RO" value="+40">Roumanie(+40)</option>
                                                <option data-countrycode="RU" value="+7">Russie(+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda(+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa(+685)</option>
                                                <option data-countrycode="SM" value="+378">Saint Marin(+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé & amp; Principe(+239)</option>
                                                <option data-countrycode="SA" value="+966">Arabie Saoudite(+966)</option>
                                                <option data-countrycode="SN" value="+221">Sénégal(+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbie(+381)</option>
                                                <option data-countrycode="SC" value="+248">les Seychelles(+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone(+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapour(+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovaquie(+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovénie(+386)</option>
                                                <option data-countrycode="SB" value="+677">îles Salomon(+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalie(+252)</option>
                                                <option data-countrycode="ZA" value="+27">Afrique du Sud(+27)</option>
                                                <option data-countrycode="SS" value="+211">Soudan du sud(+211)</option>
                                                <option data-countrycode="ES" value="+34">Espagne(+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka(+94)</option>
                                                <option data-countrycode="SH" value="+290">Sainte-Hélène(+290)</option>
                                                <option data-countrycode="KN" value="+1869">Saint-Kitts-et-Nevis(+1869)</option>
                                                <option data-countrycode="SC" value="+1758">Sainte Lucie(+1758)</option>
                                                <option data-countrycode="PM" value="+508">Saint-Pierre et Miquelon(+508)</option>
                                                <option data-countrycode="SD" value="+249">Soudan(+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname(+597)</option>
                                                <option data-countrycode="SE" value="+46">Suède(+46)</option>
                                                <option data-countrycode="CH" value="+41">Suisse(+41)</option>
                                                <option data-countrycode="SI" value="+963">Syrie(+963)</option>
                                                <option data-countrycode="TW" value="+886">Taïwan(+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tadjikstan(+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzanie(+255)</option>
                                                <option data-countrycode="TH" value="+66">Thaïlande(+66)</option>
                                                <option data-countrycode="TG" value="+228">Aller(+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau(+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga(+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad & amp; Tobago(+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisie(+216)</option>
                                                <option data-countrycode="TR" value="+90">dinde(+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkménistan(+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turcs & amp; Îles Caïques(+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu(+688)</option>
                                                <option data-countrycode="UG" value="+256">Ouganda(+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine(+380)</option>
                                                <option data-countrycode="AE" value="+971">Emirats Arabes Unis(+971)</option>
                                                <option data-countrycode="GB" value="+44">Royaume-Uni(+44)</option>
                                                <option data-countrycode="US" value="+1">les États-Unis d'Amérique(+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay(+598)</option>
                                                <option data-countrycode="UZ" value="+998">Ouzbékistan(+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu(+678)</option>
                                                <option data-countrycode="VA" value="+39">Cité du Vatican(+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela(+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam(+84)</option>
                                                <option data-countrycode="VG" value="+1284">Îles Vierges britanniques(+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Îles Vierges - États-Unis(+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis & amp; Futuna(+681)</option>
                                                <option data-countrycode="EH" value="+967">Sahara occidental(+212)</option>
                                                <option data-countrycode="YE" value="+967">Yémen(+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambie(+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe(+263)</option>
                                            </select>
                                            <input style="width: 68%; padding-left: 2px; padding-right: 0;" class="forminput" id="txtPhoneNumber3" min="0" name="txtPhoneNumber3" type="number" placeholder="<%=GetContent("Phone3 Number") %>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <input type="radio" class="radiocontrol" id="Sim4Primary" name="PrimarySim" />
                                        </th>
                                        <td>
                                            <input style="padding-left: 2px; padding-right: 0;" class="forminput respFontSize" maxlength="15" id="txtIMEI4" name="txtIMEI4" type="number" placeholder="<%=GetContent("IMEI4 Number") %>" />
                                        </td>
                                        <td>&nbsp;</td>

                                        <td nowrap>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 2, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode4<%=IIf(LanguageID = 2, "NotUsed", "") %>" name="countryCode4<%=IIf(LanguageID = 2, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93">Afghanistan (+93)</option>
                                                <option data-countrycode="AL" value="+355">Albania (+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algeria (+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorra (+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola (+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla (+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua &amp; Barbuda (+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentina (+54)</option>
                                                <option data-countrycode="AM" value="+374">Armenia (+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba (+297)</option>
                                                <option data-countrycode="AC" value="+247">Ascension Island (+247)</option>
                                                <option data-countrycode="AU" value="+61">Australia (+61)</option>
                                                <option data-countrycode="AT" value="+43">Austria (+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaijan (+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas (+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahrain (+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh (+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbados (+1246)</option>
                                                <option data-countrycode="BY" value="+375">Belarus (+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgium (+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize (+501)</option>
                                                <option data-countrycode="BJ" value="+229">Benin (+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermuda (+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhutan (+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivia (+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba and Sint Eustatius (+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnia Herzegovina (+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana (+267)</option>
                                                <option data-countrycode="BR" value="+55">Brazil (+55)</option>
                                                <option data-countrycode="IO" value="+246">British Indian Ocean Territory (+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei (+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgaria (+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso (+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi (+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodia (+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroon (+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada (+1)</option>
                                                <option data-countrycode="CV" value="+238">Cape Verde Islands (+238)</option>
                                                <option data-countrycode="KY" value="+1345">Cayman Islands (+1345)</option>
                                                <option data-countrycode="CF" value="+236">Central African Republic (+236)</option>
                                                <option data-countrycode="TD" value="+235">Chad (+235)</option>
                                                <option data-countrycode="CL" value="+56">Chile (+56)</option>
                                                <option data-countrycode="CN" value="+86">China (+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombia (+57)</option>
                                                <option data-countrycode="KM" value="+269">Comoros (+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo (+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, Democratic Republic of the (+243)</option>
                                                <option data-countrycode="CK" value="+682">Cook Islands (+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica (+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatia (+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba (+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curaçao (+5999)</option>
                                                <option data-countrycode="CY" value="+357">Cyprus (+357)</option>
                                                <option data-countrycode="CZ" value="+420">Czech Republic (+420)</option>
                                                <option data-countrycode="DK" value="+45">Denmark (+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti (+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominica (+1767)</option>
                                                <option data-countrycode="DO" value="+1809">Dominican Republic (+1809)</option>
                                                <option data-countrycode="TL" value="+670">East Timor (+670)</option>
                                                <option data-countrycode="EC" value="+593">Ecuador (+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypt (+20)</option>
                                                <option data-countrycode="SV" value="+503">El Salvador (+503)</option>
                                                <option data-countrycode="GQ" value="+240">Equatorial Guinea (+240)</option>
                                                <option data-countrycode="ER" value="+291">Eritrea (+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonia (+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini (+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopia (+251)</option>
                                                <option data-countrycode="FK" value="+500">Falkland Islands (+500)</option>
                                                <option data-countrycode="FO" value="+298">Faroe Islands (+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fiji (+679)</option>
                                                <option data-countrycode="FI" value="+358">Finland (+358)</option>
                                                <option data-countrycode="FR" value="+33">France (+33)</option>
                                                <option data-countrycode="GF" value="+594">French Guiana (+594)</option>
                                                <option data-countrycode="PF" value="+689">French Polynesia (+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon (+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambia (+220)</option>
                                                <option data-countrycode="GE" value="+995">Georgia (+995)</option>
                                                <option data-countrycode="DE" value="+49">Germany (+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana (+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar (+350)</option>
                                                <option data-countrycode="GR" value="+30">Greece (+30)</option>
                                                <option data-countrycode="GL" value="+299">Greenland (+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenada (+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe (+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam (+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala (+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinea (+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinea - Bissau (+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyana (+592)</option>
                                                <option data-countrycode="HT" value="+509">Haiti (+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras (+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong (+852)</option>
                                                <option data-countrycode="HU" value="+36">Hungary (+36)</option>
                                                <option data-countrycode="IS" value="+354">Iceland (+354)</option>
                                                <option data-countrycode="IN" value="+91">India (+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonesia (+62)</option>
                                                <option data-countrycode="IR" value="+98">Iran (+98)</option>
                                                <option data-countrycode="IQ" value="+964">Iraq (+964)</option>
                                                <option data-countrycode="IE" value="+353">Ireland (+353)</option>
                                                <option data-countrycode="IL" value="+972">Israel (+972)</option>
                                                <option data-countrycode="IT" value="+39">Italy (+39)</option>
                                                <option data-countrycode="CI" value="+225">Ivory Coast (+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaica (+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japan (+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan (+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan (+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya (+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati (+686)</option>
                                                <option data-countrycode="KP" value="+850">Korea, North (+850)</option>
                                                <option data-countrycode="KR" value="+82">Korea, South (+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo (+383)</option>
                                                <option data-countrycode="KW" value="+965">Kuwait (+965)</option>
                                                <option data-countrycode="KG" value="+996">Kyrgyzstan (+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos (+856)</option>
                                                <option data-countrycode="LV" value="+371">Latvia (+371)</option>
                                                <option data-countrycode="LB" value="+961">Lebanon (+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho (+266)</option>
                                                <option data-countrycode="LR" value="+231">Liberia (+231)</option>
                                                <option data-countrycode="LY" value="+218">Libya (+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein (+423)</option>
                                                <option data-countrycode="LT" value="+370">Lithuania (+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg (+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao (+853)</option>
                                                <option data-countrycode="MK" value="+389">Macedonia (+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar (+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi (+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaysia (+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives (+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali (+223)</option>
                                                <option data-countrycode="MT" value="+356">Malta (+356)</option>
                                                <option data-countrycode="MH" value="+692">Marshall Islands (+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique (+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritania (+222)</option>
                                                <option data-countrycode="MU" value="+230">Mauritius (+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte (+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexico (+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronesia (+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldova (+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco (+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolia (+976)</option>
                                                <option data-countrycode="ME" value="+382">Montenegro (+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat (+1664)</option>
                                                <option data-countrycode="MA" value="+212">Morocco (+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique (+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar (+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibia (+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru (+674)</option>
                                                <option data-countrycode="NP" value="+977">Nepal (+977)</option>
                                                <option data-countrycode="NL" value="+31">Netherlands (+31)</option>
                                                <option data-countrycode="NC" value="+687">New Caledonia (+687)</option>
                                                <option data-countrycode="NZ" value="+64">New Zealand (+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua (+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger (+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria (+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue (+683)</option>
                                                <option data-countrycode="NF" value="+672">Norfolk Islands (+672)</option>
                                                <option data-countrycode="NP" value="+1670">Northern Mariana Islands (+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norway (+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman (+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan (+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau (+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine (+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama (+507)</option>
                                                <option data-countrycode="PG" value="+675">Papua New Guinea (+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay (+595)</option>
                                                <option data-countrycode="PE" value="+51">Peru (+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines (+63)</option>
                                                <option data-countrycode="PL" value="+48">Poland (+48)</option>
                                                <option data-countrycode="PT" value="+351">Portugal (+351)</option>
                                                <option data-countrycode="PR" value="+1787">Puerto Rico (+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar (+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion (+262)</option>
                                                <option data-countrycode="RO" value="+40">Romania (+40)</option>
                                                <option data-countrycode="RU" value="+7">Russia (+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda (+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa (+685)</option>
                                                <option data-countrycode="SM" value="+378">San Marino (+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé &amp; Principe (+239)</option>
                                                <option data-countrycode="SA" value="+966">Saudi Arabia (+966)</option>
                                                <option data-countrycode="SN" value="+221">Senegal (+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbia (+381)</option>
                                                <option data-countrycode="SC" value="+248">Seychelles (+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone (+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapore (+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovakia (+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovenia (+386)</option>
                                                <option data-countrycode="SB" value="+677">Solomon Islands (+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalia (+252)</option>
                                                <option data-countrycode="ZA" value="+27">South Africa (+27)</option>
                                                <option data-countrycode="SS" value="+211">South Sudan (+211)</option>
                                                <option data-countrycode="ES" value="+34">Spain (+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka (+94)</option>
                                                <option data-countrycode="SH" value="+290">St. Helena (+290)</option>
                                                <option data-countrycode="KN" value="+1869">St. Kitts and Nevis (+1869)</option>
                                                <option data-countrycode="SC" value="+1758">St. Lucia (+1758)</option>
                                                <option data-countrycode="PM" value="+508">St. Pierre and Miquelon (+508)</option>
                                                <option data-countrycode="SD" value="+249">Sudan (+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname (+597)</option>
                                                <option data-countrycode="SE" value="+46">Sweden (+46)</option>
                                                <option data-countrycode="CH" value="+41">Switzerland (+41)</option>
                                                <option data-countrycode="SI" value="+963">Syria (+963)</option>
                                                <option data-countrycode="TW" value="+886">Taiwan (+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tajikstan (+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzania (+255)</option>
                                                <option data-countrycode="TH" value="+66">Thailand (+66)</option>
                                                <option data-countrycode="TG" value="+228">Togo (+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau (+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga (+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad &amp; Tobago (+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisia (+216)</option>
                                                <option data-countrycode="TR" value="+90">Turkey (+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkmenistan (+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turks &amp; Caicos Islands (+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu (+688)</option>
                                                <option data-countrycode="UG" value="+256">Uganda (+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine (+380)</option>
                                                <option data-countrycode="AE" value="+971">United Arab Emirates (+971)</option>
                                                <option data-countrycode="GB" value="+44">United Kingdom (+44)</option>
                                                <option data-countrycode="US" value="+1">United States of America (+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay (+598)</option>
                                                <option data-countrycode="UZ" value="+998">Uzbekistan (+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu (+678)</option>
                                                <option data-countrycode="VA" value="+39">Vatican City (+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela (+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam (+84)</option>
                                                <option data-countrycode="VG" value="+1284">Virgin Islands - British (+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Virgin Islands - US (+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis &amp; Futuna (+681)</option>
                                                <option data-countrycode="EH" value="+967">Western Sahara (+212)</option>
                                                <option data-countrycode="YE" value="+967">Yemen (+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambia (+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe (+263)</option>
                                            </select>
                                            <select style="padding-left: 2px; padding-right: 0; width: 30%; <%=IIf(LanguageID = 1, "visibility:hidden;display:none;", "") %>" class="forminput respFontSize input-block-level" id="countryCode4<%=IIf(LanguageID = 1, "NotUsed", "") %>" name="countryCode4<%=IIf(LanguageID = 1, "NotUsed", "") %>">
                                                <option data-countrycode="AF" value="+93" label="93">Afghanistan(+93)</option>
                                                <option data-countrycode="AL" value="+355">Albanie(+355)</option>
                                                <option data-countrycode="DZ" value="+213">Algérie(+213)</option>
                                                <option data-countrycode="AD" value="+376">Andorre(+376)</option>
                                                <option data-countrycode="AO" value="+244">Angola(+244)</option>
                                                <option data-countrycode="AI" value="+1264">Anguilla(+1264)</option>
                                                <option data-countrycode="AG" value="+1268">Antigua & amp; Barbuda(+1268)</option>
                                                <option data-countrycode="AR" value="+54">Argentine(+54)</option>
                                                <option data-countrycode="AM" value="+374">Arménie(+374)</option>
                                                <option data-countrycode="AW" value="+297">Aruba(+297)</option>
                                                <option data-countrycode="AC" value="+247">Île de l'Ascension(+247)</option>
                                                <option data-countrycode="AU" value="+61">Australie(+61)</option>
                                                <option data-countrycode="AT" value="+43">L'Autriche(+43)</option>
                                                <option data-countrycode="AZ" value="+994">Azerbaïdjan(+994)</option>
                                                <option data-countrycode="BS" value="+1242">Bahamas(+1242)</option>
                                                <option data-countrycode="BH" value="+973">Bahreïn(+973)</option>
                                                <option data-countrycode="BD" value="+880">Bangladesh(+880)</option>
                                                <option data-countrycode="BB" value="+1246">Barbade(+1246)</option>
                                                <option data-countrycode="BY" value="+375">Biélorussie(+375)</option>
                                                <option data-countrycode="BE" value="+32">Belgique(+32)</option>
                                                <option data-countrycode="BZ" value="+501">Belize(+501)</option>
                                                <option data-countrycode="BJ" value="+229">Bénin(+229)</option>
                                                <option data-countrycode="BM" value="+1441">Bermudes(+1441)</option>
                                                <option data-countrycode="BT" value="+975">Bhoutan(+975)</option>
                                                <option data-countrycode="BO" value="+591">Bolivie(+591)</option>
                                                <option data-countrycode="BQ" value="+599">Bonaire, Saba et Saint-Eustache(+599)</option>
                                                <option data-countrycode="BA" value="+387">Bosnie-Herzégovine(+387)</option>
                                                <option data-countrycode="BW" value="+267">Botswana(+267)</option>
                                                <option data-countrycode="BR" value="+55">Brésil(+55)</option>
                                                <option data-countrycode="IO" value="+246">Territoire britannique de l'océan Indien(+246)</option>
                                                <option data-countrycode="BN" value="+673">Brunei(+673)</option>
                                                <option data-countrycode="BG" value="+359">Bulgarie(+359)</option>
                                                <option data-countrycode="BF" value="+226">Burkina Faso(+226)</option>
                                                <option data-countrycode="BI" value="+257">Burundi(+257)</option>
                                                <option data-countrycode="KH" value="+855">Cambodge(+855)</option>
                                                <option data-countrycode="CM" value="+237">Cameroun(+237)</option>
                                                <option data-countrycode="CA" value="+1">Canada(+1)</option>
                                                <option data-countrycode="CV" value="+238">Îles du Cap-Vert(+238)</option>
                                                <option data-countrycode="KY" value="+1345">Îles Caïmans(+1345)</option>
                                                <option data-countrycode="CF" value="+236">République centrafricaine(+236)</option>
                                                <option data-countrycode="TD" value="+235">Tchad(+235)</option>
                                                <option data-countrycode="CL" value="+56">Chili(+56)</option>
                                                <option data-countrycode="CN" value="+86">Chine(+86)</option>
                                                <option data-countrycode="CO" value="+57">Colombie(+57)</option>
                                                <option data-countrycode="KM" value="+269">Comores(+269)</option>
                                                <option data-countrycode="CG" value="+242">Congo(+242)</option>
                                                <option data-countrycode="CD" value="+243" selected="selected">Congo, République démocratique du (+243)</option>
                                                <option data-countrycode="CK" value="+682">les Îles Cook(+682)</option>
                                                <option data-countrycode="CR" value="+506">Costa Rica(+506)</option>
                                                <option data-countrycode="HR" value="+385">Croatie(+385)</option>
                                                <option data-countrycode="CU" value="+53">Cuba(+53)</option>
                                                <option data-countrycode="CW" value="+5999">Curacao(+5999)</option>
                                                <option data-countrycode="CY" value="+357">Chypre(+357)</option>
                                                <option data-countrycode="CZ" value="+420">République Tchèque(+420)</option>
                                                <option data-countrycode="DK" value="+45">Danemark(+45)</option>
                                                <option data-countrycode="DJ" value="+253">Djibouti(+253)</option>
                                                <option data-countrycode="DM" value="+1767">Dominique(+1767)</option>
                                                <option data-countrycode="DO" value="+1809">République Dominicaine(+1809)</option>
                                                <option data-countrycode="TL" value="+670">Timor oriental(+670)</option>
                                                <option data-countrycode="EC" value="+593">Equateur(+593)</option>
                                                <option data-countrycode="EG" value="+20">Egypte(+20)</option>
                                                <option data-countrycode="SV" value="+503">Le Salvador(+503)</option>
                                                <option data-countrycode="GQ" value="+240">Guinée Équatoriale(+240)</option>
                                                <option data-countrycode="ER" value="+291">Érythrée(+291)</option>
                                                <option data-countrycode="EE" value="+372">Estonie(+372)</option>
                                                <option data-countrycode="SZ" value="+268">Eswatini(+268)</option>
                                                <option data-countrycode="ET" value="+251">Ethiopie(+251)</option>
                                                <option data-countrycode="FK" value="+500">les îles Falkland(+500)</option>
                                                <option data-countrycode="FO" value="+298">Îles Féroé(+298)</option>
                                                <option data-countrycode="FJ" value="+679">Fidji(+679)</option>
                                                <option data-countrycode="FI" value="+358">Finlande(+358)</option>
                                                <option data-countrycode="FR" value="+33">France(+33)</option>
                                                <option data-countrycode="GF" value="+594">Guyane Française(+594)</option>
                                                <option data-countrycode="PF" value="+689">Polynésie française(+689)</option>
                                                <option data-countrycode="GA" value="+241">Gabon(+241)</option>
                                                <option data-countrycode="GM" value="+220">Gambie(+220)</option>
                                                <option data-countrycode="GE" value="+995">Géorgie(+995)</option>
                                                <option data-countrycode="DE" value="+49">Allemagne(+49)</option>
                                                <option data-countrycode="GH" value="+233">Ghana(+233)</option>
                                                <option data-countrycode="GI" value="+350">Gibraltar(+350)</option>
                                                <option data-countrycode="GR" value="+30">Grèce(+30)</option>
                                                <option data-countrycode="GL" value="+299">Groenland(+299)</option>
                                                <option data-countrycode="GD" value="+1473">Grenade(+1473)</option>
                                                <option data-countrycode="GP" value="+590">Guadeloupe(+590)</option>
                                                <option data-countrycode="GU" value="+1671">Guam(+1671)</option>
                                                <option data-countrycode="GT" value="+502">Guatemala(+502)</option>
                                                <option data-countrycode="GN" value="+224">Guinée(+224)</option>
                                                <option data-countrycode="GW" value="+245">Guinée - Bissau(+245)</option>
                                                <option data-countrycode="GY" value="+592">Guyane(+592)</option>
                                                <option data-countrycode="HT" value="+509">Haïti(+509)</option>
                                                <option data-countrycode="HN" value="+504">Honduras(+504)</option>
                                                <option data-countrycode="HK" value="+852">Hong Kong(+852)</option>
                                                <option data-countrycode="HU" value="+36">Hongrie(+36)</option>
                                                <option data-countrycode="IS" value="+354">Islande(+354)</option>
                                                <option data-countrycode="IN" value="+91">Inde(+91)</option>
                                                <option data-countrycode="ID" value="+62">Indonésie(+62)</option>
                                                <option data-countrycode="IR" value="+98">L'Iran(+98)</option>
                                                <option data-countrycode="IQ" value="+964">Irak(+964)</option>
                                                <option data-countrycode="IE" value="+353">Irlande(+353)</option>
                                                <option data-countrycode="IL" value="+972">Israël(+972)</option>
                                                <option data-countrycode="IT" value="+39">Italie(+39)</option>
                                                <option data-countrycode="CI" value="+225">Côte d'Ivoire(+225)</option>
                                                <option data-countrycode="JM" value="+1876">Jamaïque(+1876)</option>
                                                <option data-countrycode="JP" value="+81">Japon(+81)</option>
                                                <option data-countrycode="JO" value="+962">Jordan(+962)</option>
                                                <option data-countrycode="KZ" value="+7">Kazakhstan(+7)</option>
                                                <option data-countrycode="KE" value="+254">Kenya(+254)</option>
                                                <option data-countrycode="KI" value="+686">Kiribati(+686)</option>
                                                <option data-countrycode="KP" value="+850">Corée du Nord(+850)</option>
                                                <option data-countrycode="KR" value="+82">COREE DU SUD(+82)</option>
                                                <option data-countrycode="XK" value="+383">Kosovo(+383)</option>
                                                <option data-countrycode="KW" value="+965">Koweit(+965)</option>
                                                <option data-countrycode="KG" value="+996">Kirghizistan(+996)</option>
                                                <option data-countrycode="LA" value="+856">Laos(+856)</option>
                                                <option data-countrycode="LV" value="+371">Lettonie(+371)</option>
                                                <option data-countrycode="LB" value="+961">Liban(+961)</option>
                                                <option data-countrycode="LS" value="+266">Lesotho(+266)</option>
                                                <option data-countrycode="LR" value="+231">Libéria(+231)</option>
                                                <option data-countrycode="LY" value="+218">Libye(+218)</option>
                                                <option data-countrycode="LI" value="+423">Liechtenstein(+423)</option>
                                                <option data-countrycode="LT" value="+370">Lituanie(+370)</option>
                                                <option data-countrycode="LU" value="+352">Luxembourg(+352)</option>
                                                <option data-countrycode="MO" value="+853">Macao(+853)</option>
                                                <option data-countrycode="MK" value="+389">Macédoine(+389)</option>
                                                <option data-countrycode="MG" value="+261">Madagascar(+261)</option>
                                                <option data-countrycode="MW" value="+265">Malawi(+265)</option>
                                                <option data-countrycode="MY" value="+60">Malaisie(+60)</option>
                                                <option data-countrycode="MV" value="+960">Maldives(+960)</option>
                                                <option data-countrycode="ML" value="+223">Mali(+223)</option>
                                                <option data-countrycode="MT" value="+356">Malte(+356)</option>
                                                <option data-countrycode="MH" value="+692">Iles Marshall(+692)</option>
                                                <option data-countrycode="MQ" value="+596">Martinique(+596)</option>
                                                <option data-countrycode="MR" value="+222">Mauritanie(+222)</option>
                                                <option data-countrycode="MU" value="+230">Ile Maurice(+230)</option>
                                                <option data-countrycode="YT" value="+262">Mayotte(+262)</option>
                                                <option data-countrycode="MX" value="+52">Mexique(+52)</option>
                                                <option data-countrycode="FM" value="+691">Micronésie(+691)</option>
                                                <option data-countrycode="MD" value="+373">Moldavie(+373)</option>
                                                <option data-countrycode="MC" value="+377">Monaco(+377)</option>
                                                <option data-countrycode="MN" value="+976">Mongolie(+976)</option>
                                                <option data-countrycode="ME" value="+382">Monténégro(+382)</option>
                                                <option data-countrycode="MS" value="+1664">Montserrat(+1664)</option>
                                                <option data-countrycode="MA" value="+212">Maroc(+212)</option>
                                                <option data-countrycode="MZ" value="+258">Mozambique(+258)</option>
                                                <option data-countrycode="MN" value="+95">Myanmar(+95)</option>
                                                <option data-countrycode="NA" value="+264">Namibie(+264)</option>
                                                <option data-countrycode="NR" value="+674">Nauru(+674)</option>
                                                <option data-countrycode="NP" value="+977">Népal(+977)</option>
                                                <option data-countrycode="NL" value="+31">Pays-Bas(+31)</option>
                                                <option data-countrycode="NC" value="+687">Nouvelle Calédonie(+687)</option>
                                                <option data-countrycode="NZ" value="+64">Nouvelle-Zélande(+64)</option>
                                                <option data-countrycode="NI" value="+505">Nicaragua(+505)</option>
                                                <option data-countrycode="NE" value="+227">Niger(+227)</option>
                                                <option data-countrycode="NG" value="+234">Nigeria(+234)</option>
                                                <option data-countrycode="NU" value="+683">Niue(+683)</option>
                                                <option data-countrycode="NF" value="+672">Îles Norfolk(+672)</option>
                                                <option data-countrycode="NP" value="+1670">Îles Mariannes du Nord(+1670)</option>
                                                <option data-countrycode="NO" value="+47">Norvège(+47)</option>
                                                <option data-countrycode="OM" value="+968">Oman(+968)</option>
                                                <option data-countrycode="PK" value="+92">Pakistan(+92)</option>
                                                <option data-countrycode="PW" value="+680">Palau(+680)</option>
                                                <option data-countrycode="PS" value="+970">Palestine(+970)</option>
                                                <option data-countrycode="PA" value="+507">Panama(+507)</option>
                                                <option data-countrycode="PG" value="+675">Papouasie Nouvelle Guinée(+675)</option>
                                                <option data-countrycode="PY" value="+595">Paraguay(+595)</option>
                                                <option data-countrycode="PE" value="+51">Pérou(+51)</option>
                                                <option data-countrycode="PH" value="+63">Philippines(+63)</option>
                                                <option data-countrycode="PL" value="+48">Pologne(+48)</option>
                                                <option data-countrycode="PT" value="+351">le Portugal(+351)</option>
                                                <option data-countrycode="PR" value="+1787">Porto Rico(+1787)</option>
                                                <option data-countrycode="QA" value="+974">Qatar(+974)</option>
                                                <option data-countrycode="RE" value="+262">Réunion(+262)</option>
                                                <option data-countrycode="RO" value="+40">Roumanie(+40)</option>
                                                <option data-countrycode="RU" value="+7">Russie(+7)</option>
                                                <option data-countrycode="RW" value="+250">Rwanda(+250)</option>
                                                <option data-countrycode="WS" value="+685">Samoa(+685)</option>
                                                <option data-countrycode="SM" value="+378">Saint Marin(+378)</option>
                                                <option data-countrycode="ST" value="+239">São Tomé & amp; Principe(+239)</option>
                                                <option data-countrycode="SA" value="+966">Arabie Saoudite(+966)</option>
                                                <option data-countrycode="SN" value="+221">Sénégal(+221)</option>
                                                <option data-countrycode="CS" value="+381">Serbie(+381)</option>
                                                <option data-countrycode="SC" value="+248">les Seychelles(+248)</option>
                                                <option data-countrycode="SL" value="+232">Sierra Leone(+232)</option>
                                                <option data-countrycode="SG" value="+65">Singapour(+65)</option>
                                                <option data-countrycode="SK" value="+421">Slovaquie(+421)</option>
                                                <option data-countrycode="SI" value="+386">Slovénie(+386)</option>
                                                <option data-countrycode="SB" value="+677">îles Salomon(+677)</option>
                                                <option data-countrycode="SO" value="+252">Somalie(+252)</option>
                                                <option data-countrycode="ZA" value="+27">Afrique du Sud(+27)</option>
                                                <option data-countrycode="SS" value="+211">Soudan du sud(+211)</option>
                                                <option data-countrycode="ES" value="+34">Espagne(+34)</option>
                                                <option data-countrycode="LK" value="+94">Sri Lanka(+94)</option>
                                                <option data-countrycode="SH" value="+290">Sainte-Hélène(+290)</option>
                                                <option data-countrycode="KN" value="+1869">Saint-Kitts-et-Nevis(+1869)</option>
                                                <option data-countrycode="SC" value="+1758">Sainte Lucie(+1758)</option>
                                                <option data-countrycode="PM" value="+508">Saint-Pierre et Miquelon(+508)</option>
                                                <option data-countrycode="SD" value="+249">Soudan(+249)</option>
                                                <option data-countrycode="SR" value="+597">Suriname(+597)</option>
                                                <option data-countrycode="SE" value="+46">Suède(+46)</option>
                                                <option data-countrycode="CH" value="+41">Suisse(+41)</option>
                                                <option data-countrycode="SI" value="+963">Syrie(+963)</option>
                                                <option data-countrycode="TW" value="+886">Taïwan(+886)</option>
                                                <option data-countrycode="TJ" value="+992">Tadjikstan(+992)</option>
                                                <option data-countrycode="TZ" value="+255">Tanzanie(+255)</option>
                                                <option data-countrycode="TH" value="+66">Thaïlande(+66)</option>
                                                <option data-countrycode="TG" value="+228">Aller(+228)</option>
                                                <option data-countrycode="TK" value="+690">Tokelau(+690)</option>
                                                <option data-countrycode="TO" value="+676">Tonga(+676)</option>
                                                <option data-countrycode="TT" value="+1868">Trinidad & amp; Tobago(+1868)</option>
                                                <option data-countrycode="TN" value="+216">Tunisie(+216)</option>
                                                <option data-countrycode="TR" value="+90">dinde(+90)</option>
                                                <option data-countrycode="TM" value="+993">Turkménistan(+993)</option>
                                                <option data-countrycode="TC" value="+1649">Turcs & amp; Îles Caïques(+1649)</option>
                                                <option data-countrycode="TV" value="+688">Tuvalu(+688)</option>
                                                <option data-countrycode="UG" value="+256">Ouganda(+256)</option>
                                                <option data-countrycode="UA" value="+380">Ukraine(+380)</option>
                                                <option data-countrycode="AE" value="+971">Emirats Arabes Unis(+971)</option>
                                                <option data-countrycode="GB" value="+44">Royaume-Uni(+44)</option>
                                                <option data-countrycode="US" value="+1">les États-Unis d'Amérique(+1)</option>
                                                <option data-countrycode="UY" value="+598">Uruguay(+598)</option>
                                                <option data-countrycode="UZ" value="+998">Ouzbékistan(+998)</option>
                                                <option data-countrycode="VU" value="+678">Vanuatu(+678)</option>
                                                <option data-countrycode="VA" value="+39">Cité du Vatican(+39)</option>
                                                <option data-countrycode="VE" value="+58">Venezuela(+58)</option>
                                                <option data-countrycode="VN" value="+84">Vietnam(+84)</option>
                                                <option data-countrycode="VG" value="+1284">Îles Vierges britanniques(+1284)</option>
                                                <option data-countrycode="VI" value="+1340">Îles Vierges - États-Unis(+1340)</option>
                                                <option data-countrycode="WF" value="+681">Wallis & amp; Futuna(+681)</option>
                                                <option data-countrycode="EH" value="+967">Sahara occidental(+212)</option>
                                                <option data-countrycode="YE" value="+967">Yémen(+967)</option>
                                                <option data-countrycode="ZM" value="+260">Zambie(+260)</option>
                                                <option data-countrycode="ZW" value="+263">Zimbabwe(+263)</option>
                                            </select>
                                            <input style="width: 68%; padding-left: 2px; padding-right: 0;" class="forminput" id="txtPhoneNumber4" min="0" name="txtPhoneNumber4" type="number" placeholder="<%=GetContent("Phone4 Number") %>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" align="right" nowrap>
                                            <div class="row no-gutters" style="align: left">
                                                <div class="col-lg-12 col-md-12 captchaS">
                                                </div>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" align="right" nowrap class="px-contact-input">
                                            <button class="submit forminputbutton g-recaptcha" data-sitekey="6Lf0U8MaAAAAAE4gubHH3oeaG1rBa7Hrl8bcS3au" data-callback='onSubmit' data-action='submit' type="button" onclick="return nothuman(this);" align="right" runat="server" id="btnBlock">
                                                <i class="fa fa-angle-right"></i><%=GetContent("RegisterButton") %>
                                            </button>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                            <!-- degg_top-area start -->
                            <div class="degg_top-area">
                                <div class="container" id="results" name="results">
                                </div>
                            </div>
                            <div class="degg_top-area degg_top-area-margin">
                                <div class="container">
                                    <div class="degg_top_b1">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-12">
                                                <div class="degg_top">
                                                    <span class="degg_top1"></span>
                                                    <p>
                                                        <%=GetContent("Services_Dual_SIM_PageIntro") %>
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
                                        <h2><%=GetContent("Services_Dual_SIM_3SimpleSteps") %></h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4">
                                            <div class="deg-part_a1 justify-content-center">
                                                <h2>01</h2>
                                                <span class="drg_spn"></span>
                                                <p>
                                                    <%=GetContent("Services_Dual_SIM_3SimpleSteps_Step1Heading") %>
                                                </p>
                                                <p style="min-height: 225px;">
                                                    <img src="img/sr2.png" alt="images not found" />
                                                </p>
                                                <span class="drg_spns"></span>
                                                <h5 style="font-size: 10px; text-align: center"><%=GetContent("Services_Dual_SIM_3SimpleSteps_Step1Description") %></h5>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4">
                                            <div class="deg-part_a1 justify-content-center">
                                                <h2>02</h2>
                                                <span class="drg_spn"></span>
                                                <p>
                                                    <%=GetContent("Services_Dual_SIM_3SimpleSteps_Step2Heading") %>
                                                </p>
                                                <p style="min-height: 218px; max-height: 225px">
                                                    <img src="img/sr3.png" alt="images not found" style="margin-left: -73px"/>
                                                </p>
                                                <span class="drg_spns"></span>
                                                <h5 style="font-size: 10px; text-align: center"><%=GetContent("Services_Dual_SIM_3SimpleSteps_Step2Description") %></h5>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4">
                                            <div class="deg-part_a1 justify-content-center">
                                                <h2>03</h2>
                                                <span class="drg_spn"></span>
                                                <p>
                                                    <%=GetContent("Services_Dual_SIM_3SimpleSteps_Step3Heading") %>
                                                </p>
                                                <p style="min-height: 225px;">
                                                    <img src="img/sr4.png" alt="images not found" style="margin-left: -73px"/>
                                                </p>
                                                <span class="drg_spns"></span>
                                                <h5 style="font-size: 10px; text-align: center"><%=GetContent("Services_Dual_SIM_3SimpleSteps_Step3Description") %></h5>
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
        <script>
            txtIMEI1.oninput = function () {
                if (this.value.length > 15) {
                    this.value = this.value.slice(0, 15);
                }
            }
            txtPhoneNumber1.oninput = function () {
                if (this.value.length > 12) {
                    this.value = this.value.slice(0, 12);
                }
            }
            txtIMEI2.oninput = function () {
                if (this.value.length > 15) {
                    this.value = this.value.slice(0, 15);
                }
            }
            txtPhoneNumber2.oninput = function () {
                if (this.value.length > 12) {
                    this.value = this.value.slice(0, 12);
                }
            }
            txtIMEI3.oninput = function () {
                if (this.value.length > 15) {
                    this.value = this.value.slice(0, 15);
                }
            }
            txtPhoneNumber3.oninput = function () {
                if (this.value.length > 12) {
                    this.value = this.value.slice(0, 12);
                }
            }
            txtIMEI4.oninput = function () {
                if (this.value.length > 15) {
                    this.value = this.value.slice(0, 15);
                }
            }
            txtPhoneNumber4.oninput = function () {
                if (this.value.length > 12) {
                    this.value = this.value.slice(0, 12);
                }
            }
        </script>

        <uc1:SiteFooter runat="server" ID="SiteFooter" />

        <!-- Main jQuery -->

        <script src="https://unpkg.com/jquery-input-mask-phone-number@1.0.14/dist/jquery-input-mask-phone-number.js"></script>
        <!-- Bootstrap Propper jQuery -->
        <script src="js/popper.js"></script>

        <!-- Bootstrap jQuery -->
        <script src="bootstrap/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

        <!-- Custom jQuery -->
        <script src="js/scripts.js"></script>

        <script src="js/ziehharmonika.js"></script>

        <!-- Scroll-Top button -->
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
        <script>

            $('#countryCode1').on('change', function (e) {
                var optionSelected = $("option:selected", this);
                var valueSelected = this.value;
                optionSelected.text(valueSelected);
            });
            $('#countryCode2').on('change', function (e) {
                var optionSelected = $("option:selected", this);
                var valueSelected = this.value;
                optionSelected.text(valueSelected);
            });
            $('#countryCode3').on('change', function (e) {
                var optionSelected = $("option:selected", this);
                var valueSelected = this.value;
                optionSelected.text(valueSelected);
            });
            $('#countryCode4').on('change', function (e) {
                var optionSelected = $("option:selected", this);
                var valueSelected = this.value;
                optionSelected.text(valueSelected);
            });
            $('select :selected').text($('select :selected').val());

        </script>
    </form>
</body>
</html>
