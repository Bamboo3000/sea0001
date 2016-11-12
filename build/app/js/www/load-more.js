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
