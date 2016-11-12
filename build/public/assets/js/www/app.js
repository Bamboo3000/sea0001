(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
'use strict';

var app = {

    init: function() {
        $(document).ready(function() {
            var $body = $('body');
            var page = $body.data('page');
            var template = null;
            if ($body.attr('data-template')) {
                template = $body.data('template');
            }
            if('home' === page) {
                app.loadTwitter();
            }
        });
    },

    loadTwitter: function () {

        var i = 0;
        $.get('/dynamic-content/twitter-posts', function(tweets) {
            console.log('retetet', tweets);

            function updateContent(){
                if(Array.isArray(tweets)) {
                    var tweet = tweets[i];
                    $('#tweet-text').html(tweet.message);
                    $('#tweet-time').html(tweet.time);
                    tweet.user;
                    i++;
                    if(i >= tweets.length) i = 0;
                }
            }
            updateContent();
            setInterval(function() {
                updateContent();
            }, 10000);

        });

    }
};

module.exports = app.init();

require('./prototype/app.js').init();
require('./load-more.js').init();



},{"./load-more.js":2,"./prototype/app.js":3}],2:[function(require,module,exports){
module.exports = {
    init: function() {
        $(document).ready(function($) {
            $('.load-more').click(function(){
                var btn = $(this),
                params  = btn.data('params'),
                url     = btn.data('url'),
                target  = btn.data('target');
                
                $.get(url, {}, function( data ) {
                	
                    var params = data.params;
                    console.log(params);

                    if(!params.has_next){
                        btn.fadeOut(400, function(){
                            $(this).remove();
                        });
                    }

                    btn.data('url', (url = params.next_url));

                    $.when($(target).append(data.items)).then(function(){
                        $('html, body').animate({
                        scrollTop: $("#load-more-item-id-" + params.first_id).offset().top
                        }, 1000);
                    });
                });
            });
        });
    }
};

},{}],3:[function(require,module,exports){
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
},{}]},{},[1]);
