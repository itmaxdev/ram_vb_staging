(function ($) {
    $(document).ready(function () {



        window.onload = function () {
            if (screen.width < 760) {
                jQuery("html").animate({ scrollTop: "1000px" }, 400);
            } else {
                jQuery("html").animate({ scrollTop: "0px" }, 400);
            }

            return false;
        }
    });
})(jQuery);
