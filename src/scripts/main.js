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
	$('.banner-slide').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		dots: false,
		autoplay: true,
		autoplaySpeed: 5000,
		infinite: false,
		asNavFor: '.banner-nav'
	});
	$('.banner-nav').slick({
		slidesToShow: 7,
		slidesToScroll: 7,
		asNavFor: '.banner-slide',
		dots: false,
		arrows: false,
		infinite: false,
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


	// Cache selectors
		var lastId,
		topMenu = $(".top-nav"),
		topMenuHeight = topMenu.outerHeight() + $('header').outerHeight(),
		// All list items
		menuItems = topMenu.find("a"),
		allHeight = $('header').height() + $('.top-nav').height() + 30,
		// Anchors corresponding to menu items
		scrollItems = menuItems.map(function(){
			var item = $($(this).attr("href"));
			if (item.length) { return item; }
		});

		// Bind click handler to menu items
		// so we can get a fancy scroll animation
		menuItems.click(function(e){
			var href = $(this).attr("href"),
			offsetTop = href === "#" ? 0 : $(href).offset().top;
			$('html, body').stop().animate({
				scrollTop: offsetTop - allHeight
			}, 300);
			e.preventDefault();
		});

		// Bind to scroll
		$(window).scroll(function(){
			// Get container scroll position
			var fromTop = $(this).scrollTop()+topMenuHeight;

			// Get id of current scroll item
			var cur = scrollItems.map(function(){
			if ($(this).offset().top < fromTop)
				return this;
			});
			// Get the id of the current element
			cur = cur[cur.length-1];
			var id = cur && cur.length ? cur[0].id : "";

			if (lastId !== id) {
			lastId = id;
			// Set/remove active class -- This is the part.
			menuItems
				.parent().find('a').removeClass("active")
				.find('a').end().filter("[href='#"+id+"']").addClass("active");
			}
		});


			// Page name breadcrumb

			$(".pagename").append($('.breadcrumb li a').eq(1).find('span').html());
			$('.breadcrumb-content').attr('id','ccbreadcrumb');
			$('#ccbreadcrumb').appendTo('.breadcrumb-wrap .container ');

		});