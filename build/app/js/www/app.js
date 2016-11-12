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


