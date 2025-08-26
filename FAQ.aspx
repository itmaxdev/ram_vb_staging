<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FAQ.aspx.vb" Inherits="Ram.cd.FAQ1" %>

<%@ Register Src="~/controls/SiteFooter.ascx" TagPrefix="uc1" TagName="SiteFooter" %>
<%@ Register Src="~/controls/SiteHeader.ascx" TagPrefix="uc2" TagName="SiteHeader" %>
<%@ Register Src="~/controls/SiteSlider.ascx" TagPrefix="uc3" TagName="SiteSlider" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" translate="no">
<head runat="server">
    <meta name="google" content="notranslate" />
    <title>RAM</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="keywords" content="" />
    <meta name="decription" content="" />
    <meta name="designer" content="Ripon Rishi" />

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
        @media screen and (min-width: 800px) {
            .searchiconstyle {
                left: 94%;
            }
        }

        @media screen and (min-width: 600px) and (max-width:800px) {
            .searchiconstyle {
                left: 90%;
            }
        }

        @media screen and (min-width: 390px) and (max-width:600px) {
            .searchiconstyle {
                left: 88%;
            }
        }

        @media screen and (min-width: 280px) and (max-width:390px) {
            .searchiconstyle {
                left: 84%;
            }
        }

        .header-inner ul li:first-child a:after {
            content: "";
            clear: both;
            display: none;
            width: 100%;
            height: 3px;
            background-color: #e3c600;
        }

        .header-inner ul li:nth-child(4) a:after {
            content: "";
            clear: both;
            display: block;
            width: 100%;
            height: 3px;
            background-color: #e3c600;
        }

        ::-webkit-input-placeholder { /* Edge */
            color: white;
        }

        :-ms-input-placeholder { /* Internet Explorer 10-11 */
            color: white;
        }

        ::placeholder {
            color: white;
        }
    </style>
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
    <form id="form1" runat="server" onsubmit="return false">
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
                                        <li class="active"><a href="/FAQ.aspx"><%=GetContent("MenuFAQ") %></a></li>
                                        <li><a href="/Contacts.aspx"><%=GetContent("MenuContacts") %></a></li>
                                        <li><a href="/FAQ.aspx?Language=2">FR</a></li>
                                        <li><a href="/FAQ.aspx?Language=1">EN</a></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobileheader-area end -->

        <!-- svo-area start -->
        <!-- New SLider -->
        <uc3:SiteSlider runat="server" ID="SiteSlider1" />

        <!-- svo-area end -->
        <!--===== start faq-tp-blk area =====-->
        <section class="faq-tp-blk-area" style="padding-bottom: 30px;">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="px-title">
                            <div class="deg-top text-left">
                                <h2>
                                    <span class="aft-bdr-btm"><%=GetContent("FAQ_HowCanWeHelp") %></span>
                                </h2>
                            </div>
                        </div>
                        <div class="px-search-input">
                            <div class="form-group has-search" onsubmit="return false">
  
                                     <input type="text" name="txtSearch" id="txtSearch" placeholder="<%=GetContent("Search")%>" onkeypress="filter();" onkeyup="filter();" onsubmit="return false" />
  
                               
                                <span class="input-group-append searchiconstyle" style="position: relative; top: -2.8rem;">
                                    <button class="btn btn-outline-secondary border-start-0  rounded-pill ms-n3" style="border: none; pointer-events: none; padding-top: 9px;" type="button">
                                        <i class="fa fa-search" style="color: white;"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--===== completed faq-tp-blk area =====-->
        <!--===== start px-faq area =====-->
        <section class="px-faq-area">
            <%--<img src="./img/sh1.png" alt="" class="shape" />--%>
            <div class="container">

                <div class="col-lg-8">
                    <div class="row">
                        <div class="" style="margin-right: 0 !important; padding-right: 0 !important">
                            <div class="question-cat">
                                <ul style="margin-right: 0 !important; padding-right: 0 !important">
                                    <%=BuildCategories() %>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="faqfull" name="faqfull">
                        <div class="col-lg-12">
                            <div
                                id="accordion"
                                role="tablist"
                                class="accordion_common accordion_style1">
                                <%=BuildFAQs() %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--===== completed px-faq area =====-->

        <!-- lfooter-area start -->
        <uc1:SiteFooter runat="server" ID="SiteFooter" />
        <!-- lfooter-area end -->

        <!-- Main jQuery -->
        <script type="text/javascript" src="jquery/jquery/jquery-3.7.1.min.js"></script>

        <!-- Bootstrap Propper jQuery -->
        <script src="js/popper.js"></script>

        <!-- Bootstrap jQuery -->
        <script src="bootstrap/bootstrap/js/bootstrap.min.js"></script>

        <!-- Fontawesome Script -->
        <script src="https://kit.fontawesome.com/7749c9f08a.js"></script>

        <!-- Custom jQuery -->
        <script src="js/scripts.js"></script>

        <script src="js/ziehharmonika.js"></script>

        <!-- Scroll-Top button -->
        <a href="#" class="scrolltotop"><i class="fas fa-angle-up"></i></a>
<%--        <script type="text/javascript">
            var origfaq = document.getElementById("faqfull");
            var cc = origfaq.innerHTML

            function filter() {
                if (event.keyCode === 13) {
                    var keyword = document.getElementById("txtSearch").value;
                    var fleet = document.getElementById("accordion");
                    var pp = fleet.getElementsByTagName("div");


                    var i;

                    for (i = 0; i < pp.length; i++) {
                        pp[i].style.display = 'block';
                    }

                    i = 0;
                    if (keyword != "") {
                        for (i = 0; i < pp.length; i++) {
                            if (pp[i].innerHTML.includes(keyword)) {
                                pp[i].style.display = 'block';
                                return false;
                            }
                            else {
                                pp[i].style.display = 'none';
                                return false;
                            }
                        }
                    }
                    else {
                        debugger;
                        origfaq.innerHTML = cc;
                    }
                    return false;
                }
            }

        </script>--%>

         <script type="text/javascript">
             var origfaq = document.getElementById("faqfull");
             var cc = origfaq.innerHTML

             function filter() {
                 if (event.keyCode === 13) {
                     var keyword = document.getElementById("txtSearch").value;
                     var fleet = document.getElementById("accordion");
                     var pp = fleet.getElementsByTagName("div");


                     var i;

                     for (i = 0; i < pp.length; i++) {
                         pp[i].style.display = 'block';
                     }

                     i = 0;
                     if (keyword != "") {
                         for (i = 0; i < pp.length; i++) {
                             if (pp[i].innerHTML.includes(keyword)) {
                                 pp[i].style.display = 'block';
                             }
                             else {
                                 pp[i].style.display = 'none';
                             }
                         }
                     }
                     else {
                         debugger;
                         origfaq.innerHTML = cc;
                     }
                 }
                 else {
                     var keyword = document.getElementById("txtSearch").value;
                     var fleet = document.getElementById("accordion");
                     var pp = fleet.getElementsByTagName("div");


                     var i;

                     for (i = 0; i < pp.length; i++) {
                         pp[i].style.display = 'block';
                     }

                     i = 0;
                     if (keyword != "") {
                         for (i = 0; i < pp.length; i++) {
                             if (pp[i].innerHTML.includes(keyword)) {
                                 pp[i].style.display = 'block';
                             }
                             else {
                                 pp[i].style.display = 'none';
                             }
                         }
                     }
                     else {
                         debugger;
                         origfaq.innerHTML = cc;
                     }
                 }
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
    <script type="text/javascript" src="NewSlider/js/mixer.js"></script>
    <script type="text/javascript" src="NewSlider/js/theme.js"></script>
</body>
</html>
