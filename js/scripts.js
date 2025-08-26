(function ($) {
	$(document).ready(function () {



		// Scroll to Top
		jQuery(".scrolltotop").click(function () {
			jQuery("html").animate({ scrollTop: "0px" }, 400);
			return false;
		});

		jQuery(window).scroll(function () {
			var upto = jQuery(window).scrollTop();
			if (upto > 500) {
				jQuery(".scrolltotop").fadeIn();
			} else {
				jQuery(".scrolltotop").fadeOut();
			}
		});

		$(document).ready(function () {
			$(".ziehharmonika").ziehharmonika({
				collapsible: true,
				prefix: "",
			});
		});

		var forEach = function (t, o, r) {
			if ("[object Object]" === Object.prototype.toString.call(t))
				for (var c in t)
					Object.prototype.hasOwnProperty.call(t, c) && o.call(r, t[c], c, t);
			else for (var e = 0, l = t.length; l > e; e++) o.call(r, t[e], e, t);
		};
		var hamburgers = document.querySelectorAll(".hamburger");
		if (hamburgers.length > 0) {
			forEach(hamburgers, function (hamburger) {
				hamburger.addEventListener(
					"click",
					function () {
						this.classList.toggle("is-active");
					},
					false
				);
			});
		}

		jQuery(".footer-top p i").click(function () {
			jQuery(".footer-top p ").hide();
		});
		customTabs();
		//venoboxPopUpModal();
	});
})(jQuery);

//venoboxPopUpModal
function venoboxPopUpModal() {
	$(".venobox").venobox();
}

//custom tabs
function customTabs() {
	customtab(".px-sub-cat-1", ".px-sub-cat-content-1");
	customtab(".px-sub-cat-2", ".px-sub-cat-content-2");
	customtab(".px-sub-cat-3", ".px-sub-cat-content-3");
	customtab(".px-sub-cat-4", ".px-sub-cat-content-4");
	customtab(".px-sub-cat-5", ".px-sub-cat-content-5");
	customtab(".px-sub-cat-6", ".px-sub-cat-content-6");
	customtab(".px-sub-cat-7", ".px-sub-cat-content-7");
	customtab(".px-sub-cat-8", ".px-sub-cat-content-8");
	customtab(".px-sub-cat-9", ".px-sub-cat-content-9");
	customtab(".px-sub-cat-10", ".px-sub-cat-content-10");
	customtab(".px-sub-cat-11", ".px-sub-cat-content-11");
	customtab(".px-sub-cat-12", ".px-sub-cat-content-12");
	customtab(".px-sub-cat-13", ".px-sub-cat-content-13");
	customtab(".px-sub-cat-14", ".px-sub-cat-content-14");
	customtab(".px-sub-cat-15", ".px-sub-cat-content-15");
	customtab(".px-sub-cat-16", ".px-sub-cat-content-16");
	customtab(".px-sub-cat-17", ".px-sub-cat-content-17");
	customtab(".px-sub-cat-18", ".px-sub-cat-content-18");
	customtab(".px-sub-cat-19", ".px-sub-cat-content-19");
	customtab(".px-sub-cat-20", ".px-sub-cat-content-20");
	customtab(".px-sub-cat-21", ".px-sub-cat-content-21");
	function customtab(trigger, content) {
		$(trigger).click(function () {
			$(this).addClass("active").siblings().removeClass("active");
			$(content).addClass("active").siblings().removeClass("active");
		});
	}
}
