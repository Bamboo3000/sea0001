'use strict';

module.exports = {

 init: function() {
 
	$('#home-text-points').owlCarousel({
		itemsCustom: [
			[0, 1],
			[320, 1],
			[580, 2],
			[850, 3]
		]
	});

  	$('#home-tile-articles').owlCarousel({
	  	itemsCustom: [
	  		[0, 1],
	  		[320, 1],
	  		[768, 2],
	  		[1000, 3]
	  	]
	});

	$('#tile-articles').owlCarousel({
	  	itemsCustom: [
	  		[0, 1],
	  		[320, 1],
	  		[768, 2],
	  		[1000, 3]
	  	]
	});

	$('#products-text-points').owlCarousel({
		itemsCustom: [
			[0,1],
			[320, 1],
			[500, 2],
			[1000, 4]
		]
	});

	$('.accordion__toggle').click(function(e) {
	  	e.preventDefault();
	  
	    var $this = $(this);
	  
	    if ($this.next().hasClass('show')) {
	    	$this.find('.accordion__less').hide()
	    	$this.find('.accordion__more').show()
	    	$this.find('.accordion__arrow').removeClass('rotate')
	        $this.next().removeClass('show');
	        $this.next().slideUp(300);
	    } else {
	    	$this.find('.accordion__more').hide()
	    	$this.find('.accordion__less').show()
	    	$this.find('.accordion__arrow').addClass('rotate')
	        $this.parent().parent().find('li .inner').removeClass('show');
	        $this.parent().parent().find('li .inner').slideUp(300);
	        $this.next().toggleClass('show');
	        $this.next().slideToggle(300);
	    }
	});

	$('[data-id=sub-nav__item], [data-id=sub-nav__container]').hover(function() {
		$('[data-id=sub-nav__container]').stop().slideDown();
		}, function() {
		$('[data-id=sub-nav__container]').stop().slideUp();
	});

	$('[data-dropdown=controller]').on('click', function() {
		$('[data-dropdown=controller]').stop().toggleClass('dropped');
		$('[data-dropdown=dropdown]').stop().slideToggle(300);
	});

	$('[data-reveal=controller]').on('click', function() {
		$('[data-menu=open]').stop().toggle();
		$('[data-menu=closed]').stop().toggle();
		$('[data-reveal=controller]').stop().toggleClass('revealed');
		$('[data-reveal=content]').stop().slideToggle(300);
	});

	$('[data-modal=container]').height($(document).height());

	$('window').resize(function() {
		$('[data-modal=container]').height($(document).height());
	});

	$('[data-modal=open]').on('click', function() {
		$('[data-modal=container]').addClass('show');
	});

	$('[data-modal=close], [data-modal=background]').on('click', function() {
		$('[data-modal=container]').removeClass('show');
	});

	$('[data-message=close]').on('click', function(){
		$('[data-message=contact]').slideUp();
	});

	$('[data-scroll=home-hero]').on('click', function() {
		var hero_height = $('.hero--full').outerHeight();
		var menu_height = $('header').outerHeight();

		$('html, body').animate({
			scrollTop: hero_height + menu_height
		}, 300);

	});


	// console.log(($('.hero--natural')[0].getBoundingClientRect()['top']) - (window.innerHeight));
	// console.log('test');

	// $(window).scroll(function() {
	// 	console.log(($('.hero--natural')[0].getBoundingClientRect()['top']) - (window.innerHeight));
	// });

	// $('[data-scroll=home-hero]').on('click', function() {
	// 	$('html, body').animate({scrollTop: $("#page").offset().top}, 2000);
	// });
	 
 }

};