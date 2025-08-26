/*
 Theme Name: Cargo Pifour - Logistic and Transportation HTML Template
 Theme URL: themewar.com/html/pifour/
 Author: ExpandTHeme
 Author URI: http://themeforest.net/user/expandtheme
 Description: Cargo Pifour
 Version: 1.0
 */

(function ($) {
    'use strict';

    //=========================
    // Revolution Slider
    //=========================
    if ($(".sliderSection").length > 0)
    {
        $('.tp-banner').revolution({
            delay: 9000,
            startwidth: 1140,
            startheight: 454,
            startWithSlide: 0,
            fullScreenAlignForce: "off",
            navigationType: "bullet",
            navigationArrows: "on",
            navigationStyle: "round",
            touchenabled: "on",
            onHoverStop: "off",
            navOffsetHorizontal: 0,
            navOffsetVertical: 20,
            shadow: 0,
            fullWidth: "off",
            fullScreen: "off",
            navigationVOffset: 35

        });
    }
    ;

    //========================
    // Flug dropdown
    //========================
    if ($('.currentFlg').length > 0) {
        $('.currentFlg').on('click', function () {
            $(this).toggleClass("active");
            $('.language > .flagList').slideToggle('slow');
        });
    }
    ;

    //=========================
    // Home1 Services Testmonial
    //=========================
    if ($('#sercarosel').length > 0) {
        $("#sercarosel").owlCarousel({
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                480: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });
    }
    //=========================
    // Home3 Testmonial
    //=========================
    if ($('#testmH3Carowsel').length > 0) {
        $("#testmH3Carowsel").owlCarousel({
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                480: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });
    }
    var owl = $("#testmH3Carowsel").data('owlCarousel');
    $('.slidePrev').on('click', function (e) {
        e.preventDefault();
        owl.prev();
    });
    $('.slideNext').on('click', function (e) {
        e.preventDefault();
        owl.next();
    });

    //=========================
    // Home1 Testmonial
    //=========================
    if ($('#testcarosel').length > 0) {
        $("#testcarosel").owlCarousel({
            items: 1,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
        });
    }
    //===================================
    // Bootstrap collaps pluse minuse
    //===================================
    if ($('.collapse').length > 0) {
        $('.collapse').on('shown.bs.collapse', function () {
            $(this).parent().find(".fa-plus").removeClass("fa-plus").addClass("fa-minus");
        }).on('hidden.bs.collapse', function () {
            $(this).parent().find(".fa-minus").removeClass("fa-minus").addClass("fa-plus");
        });
    }
    $('.panelHeading a').on('click', function () {
        $('.panelHeading a').removeClass('active');
        $(this).addClass('active');
    });


    //=========================
    // Home1 Services Testmonial
    //=========================
    if ($('#clientCaro').length > 0) {
        $("#clientCaro").owlCarousel({
            items: 6,
            dots: false,
            responsive: {
                0: {
                    items: 2
                },
                768: {
                    items: 4
                },
                1200: {
                    items: 6
                }
            }
        });
    }
    //========================
    // Mobile Menu
    //========================
    if ($('.mobileMenu, .mobileMenu2').length > 0) {
        $('.mobileMenu, .mobileMenu2').on('click', function () {
            $(this).toggleClass('active');
            $('.mainnav > ul, .mainnav2 > ul').slideToggle('slow');
        });
        if ($(window).width() < 768)
        {
            $(".mainnav li.has-menu-items > a, .mainnav2 li.has-menu-items > a").on('click', function () {
                $(this).parent().toggleClass('active');
                $(this).parent().children('.sub-menu').slideToggle('slow');
                return false;
            });
        }
    }
    ;
    //=========================
    // Home1 Services Testmonial
    //=========================
    if ($('.testCaro').length > 0) {
        $(".testCaro").owlCarousel({
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });
    }
    //=========================
    // Home1 Services Testmonial
    //=========================
    if ($('#sblogImgGall').length > 0) {
        $("#sblogImgGall").owlCarousel({
            items: 1,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
        });
    }

    //=======================================================
    // Video Section
    //=======================================================
    var vid1 = document.getElementById("myVideo1");
    function playPause1() {
        if (vid1.paused) {
            vid1.play();
        } else {
            vid1.pause();
        }
    }
    if ($("#videoWrap1").length > 0)
    {
        $('#playVideos').on('click', function (e) {
            e.preventDefault();
            playPause1();
            if ($(this).hasClass('active'))
            {
                $(this).removeClass('active');
                vid1.pause();
            } else
            {
                $(this).addClass('active');
                vid1.play();
            }
        });
    }
    ;
    //=======================================================
    // Google map
    //=======================================================
    if ($('#map').length > 0) {
        var map;
        map = new GMaps({
            el: '#map',
            lat: 51.4584218,
            lng: -0.0813982,
            zoomControlOpt: {
                style: 'SMALL',
                position: 'TOP_LEFT'
            },
            scrollwheel: false,
            zoom: 16,
            zoomControl: false,
            panControl: false,
            streetViewControl: false,
            mapTypeControl: false,
            overviewMapControl: false,
            clickable: false
        });
        map.addMarker({
            lat: 51.4584218,
            lng: -0.0813982
        });
    }


    //=======================================================
    // magnificPopup
    //=======================================================
    if ($('a.popUp').length > 0) {
        $("a.popUp").magnificPopup({
            type: 'image',
            gallery: {
                enabled: true
            }
        });
    }


    //===================================
    // Fixed Header
    //===================================
    $(window).on('scroll', function () {
        if ($(window).scrollTop() > 40)
        {
            $("header").addClass('fixedHeader');
        } else
        {
            $("header").removeClass('fixedHeader');
        }
    });



})(jQuery);
