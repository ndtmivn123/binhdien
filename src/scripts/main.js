$(document).ready(function() {
	// header script

	if ($(window).width() < 1200) {
		$('.search').insertAfter('.language');
	}
	if ($(window).width() < 768) {
		$('header .social').insertAfter('.menu-wrap');
		$('header .language').insertAfter('header .social');
	}

	$('.btn-showmenu').click(function() {
		$('.menu').toggleClass('open');
		$('.overlay').fadeToggle(500);
		$(this).toggleClass('active');
	})
	$('.overlay').click(function() {
		$(this).fadeOut(500);
		$('.menu').removeClass('open');
		$('.btn-showmenu').removeClass('active');
	})

	$(window).bind('scroll', function() {
		if ($(window).scrollTop() > 100) {
			$('header').addClass('minimal');
		} else {
			$('header').removeClass('minimal');
		}
	});

	$('.search-toggle').click(function() {
		$(this).toggleClass('active');
		$('.search-wrap').fadeToggle(300);
	})

	// BANNER
		$('.banner-wrap .banner-slide').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			fade: true,
			dots: false,
			autoplay: false,
			autoplaySpeed: 5000,
			infinite: false,
			asNavFor: '.banner-wrap .banner-nav'
		});
		$('.banner-wrap .banner-nav').not('.slick-initialized').slick({
			slidesToShow: 7,
			slidesToScroll: 7,
			asNavFor: '.banner-wrap .banner-slide',
			dots: false,
			arrows: false,
			infinite: true,
			// centerMode: true,
			focusOnSelect: true,
			// centerPadding: 0,
			responsive: [{
					breakpoint: 1199,
					settings: {
						slidesToShow: 6,
						slidesToScroll: 1,
					}
				},
				{
					breakpoint: 991,
					settings: {
						slidesToShow: 4,
						slidesToScroll: 1,
					}
				},
				{
					breakpoint: 767,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 1,
						variableWidth: true,
					}
				}
			]
		});

	$('.news-slick').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		arrows: true,
		dots: false,
		speed: 500,
		responsive: [{
				breakpoint: 1199,
				settings: {
					slidesToShow: 3,
				}
			},
			{
				breakpoint: 991,
				settings: {
					slidesToShow: 2,
				}
			},
			{
				breakpoint: 767,
				settings: {
					slidesToShow: 1,
				}
			}
		]
	});

	$('.qc-slide').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: true,
		speed: 500,
		autoplay: true,
		autoplaySpeed: 3000,
	});

	// Partner slide
	$('.partner-slick').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		arrows: true,
		dots: false,
		infinite: true,
		responsive: [{
					breakpoint: 1199,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 3,
					}
				},
				{
					breakpoint: 991,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2,
					}
				},
				{
					breakpoint: 767,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1,
					}
				}
			]
			// autoplay: true,
			// autoplaySpeed: 5000,
	});

	// Product slide
	$('.cate-slide').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		dots: false,
		fade: true,
		asNavFor: '.cate-nav'
	});
	$('.cate-nav').slick({
		slidesToShow: 5,
		slidesToScroll: 1,
		asNavFor: '.cate-slide',
		dots: false,
		arrows: false,
		focusOnSelect: true
	});

	// SERVICE TOGGLE
	$('.feature .feature-name').click(function() {
		if ($(this).parent().hasClass('active') == true) {
			$(this).parent().removeClass('active')
			$(this).parent().find('.feature-des').slideUp(500);
		} else {
			$('.feature').removeClass('active');
			$('.feature').find('.feature-des').slideUp(500);
			$(this).parent().addClass('active')
			$(this).parent().find('.feature-des').slideDown(500);
		}
	});

	// FAQ toggle
	$('.faq .faq-title').click(function() {
		if ($(this).parent().hasClass('active') == true) {
			$(this).parent().removeClass('active')
			$(this).parent().find('.faq-content').slideUp(500);
		} else {
			$('.faq').removeClass('active');
			$('.faq').find('.faq-content').slideUp(500);
			$(this).parent().addClass('active')
			$(this).parent().find('.faq-content').slideDown(500);
		}
	});

	// Mobile nav toggle
	$('.btn-navtoggle').click(function() {
		$(this).toggleClass('active');
		$(this).siblings('ul').slideToggle(500);
	})

	// top nav fixed
	if ($(window).width() > 1199) {
		$('.top-nav ').scrollToFixed({
			marginTop: 80,
			zIndex: 100,
		});
	} else {
		$('.top-nav ').scrollToFixed({
			marginTop: $('header').outerHeight(),
			zIndex: 100,
		});
	}

	// Page scroll to id

	// $(".top-nav ul li a[href*='#']").mPageScroll2id({
	//     offset: '#id',
	//     // highlightClass: 'active',
	//     forceSingleHighlight: true,
	// });

	$('.service-section .service-img-list').slick({
		prevArrow: '.service-img .service-arrow span.lnr.lnr-chevron-left',
		nextArrow: '.service-img .service-arrow span.lnr.lnr-chevron-right',
		appendDots: $('.slide-controls'),
		dotsClass: 'custom-dots',
		dots: true,
		customPaging: function (slider, i) {
			//FYI just have a look at the object to find aviable information
			//press f12 to access the console
			//you could also debug or look in the source
			console.log(slider);
			var slideNumber = (i + 1),
				totalSlides = slider.slideCount;
			return '<a class="dot" role="button" title="' + slideNumber + ' of ' + totalSlides + '"><span class="string">' + slideNumber + '/' + totalSlides + '</span></a>';
		}
	});

			// Page name breadcrumb

			$(".pagename").append($('.breadcrumb li a').eq(1).find('span').html());
			$('.breadcrumb-content').attr('id','ccbreadcrumb');
			$('#ccbreadcrumb').appendTo('.breadcrumb-wrap .container ');
			// append form faq
			$('.ccFaqForm ').appendTo('.support-page .send-mess ');


	// Video

	// $(".home-about .about-wrap").lightGallery({
	// 	youtubePlayerParams: {
	// 		modestbranding: 1,
	// 		showinfo: 0,
	// 		rel: 0,
	// 		controls: 0
	// 	},
	// 	width: '700px',
	// 	height: '470px',
	// 	mode: 'lg-fade',
	// 	// addClass: 'home-about canhcam-video-fixed-size',
	// 	counter: false,
	// 	download: false,
	// 	startClass: '',
	// 	enableSwipe: false,
	// 	enableDrag: false,
	// 	speed: 500,
	// 	loadYoutubeThumbnail: true,
	// 	youtubeThumbSize: 'default',
	// 	thumbnail: true,
	// 	animateThumb: false,
	// 	showThumbByDefault: false,
	// 	selector: '.about-video'
	// });

});

// Bg plugin
function CanhCamResponsive() {
	// Set BG Resposive
	$('[bg-img]').each(function () {
		var bgimg = $(this).attr('bg-img');
		var pos = $(this).attr('bg-pos');
		var size = $(this).attr('bg-size');
		if (pos && pos.length > 0) {
			$(this).css({
				"background-position": pos
			});
		} else {
			$(this).css({
				"background-position": "center center"
			});
		}
		if (size && size.length > 0) {
			$(this).css({
				"background-size": size
			});
		} else {
			$(this).css({
				"background-size": "cover"
			});
		}
		$(this).css({
			"background-image": "url(" + bgimg + ")"
		});
	});

	$('[bg-img-responsive]').each(function () {
		var bgimg = $(this).attr('bg-img-responsive');
		var bgimgsm = $(this).attr('bg-img-responsive-sm');
		var bgimgxs = $(this).attr('bg-img-responsive-xs');
		if ($(window).width() >= 992) {
			$(this).css({
				"background-image": "url(" + bgimg + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		} else if ($(window).width() < 992 && $(window).width() > 768) {
			$(this).css({
				"background-image": "url(" + bgimgsm + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		} else {
			$(this).css({
				"background-image": "url(" + bgimgxs + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		}
	});

	$('[img-src-responsive]').each(function () {
		var bgimg2 = $(this).attr('img-src-responsive');
		var bgimg2sm = $(this).attr('img-src-responsive-sm');
		var bgimg2xs = $(this).attr('img-src-responsive-xs');
		if ($(window).width() >= 992) {
			$(this).attr("src", "" + bgimg2 + "");
		} else if ($(window).width() < 992 && $(window).width() > 768) {
			$(this).attr("src", "" + bgimg2sm + "");
		} else {
			$(this).attr("src", "" + bgimg2xs + "");
		}
	});

}

$(function () {
		CanhCamResponsive();
});

$(window).resize(function () {
		CanhCamResponsive();
});