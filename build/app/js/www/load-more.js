load = {
    url: null,
    init: function() {
        $(document).ready(function($) {
            load.more();
            load.filter();
        });
    },

    more: function(){
        $('.load-more').click(function(){
            var btn = $(this),
            params  = btn.data('params'),
            url     = load.url? load.url: btn.data('url'),
            target  = btn.data('target'),
            parentForm = btn.data('filter-form'),
            keyVal = load.getfilters($(parentForm).find('.wpf-filter'));
            
            $.get(url, keyVal, function( data ) {
                var params = data.params;
                (!params.has_next)? btn.hide(): btn.show();
                load.url = null;
                btn.data('url', (url = params.next_url));
                $.when($(target).append(data.items)).then(function(){
                    $('html, body').animate({
                    scrollTop: $("#load-more-item-id-" + params.first_id).offset().top
                    }, 1000);
                });
            });
        });
    },

    filter: function(){
         $('.wpf-filter').bind("change keyup", function(){
            var el = $(this),
            parentForm = el.closest('form'),
            url = parentForm.data('url'),
            target = parentForm.data('target'),
            loadMoreBtn = parentForm.data('load-more'),
            keyVal = load.getfilters(parentForm.find('.wpf-filter'));
            keyVal.page = 1;
            
            $(target).fadeTo(500, 0.6);

            $.get(url, keyVal, function( data ) {
                
                var params = data.params;

                (!params.has_next)? $(loadMoreBtn).hide() :$(loadMoreBtn).show();

                // When we filter we revert back to page one. 
                // Therefore our next url will be on page two
                load.url = url + '?page=2';

                $.when($(target).html(data.items)).then(function(){
                    $(target).fadeTo(200, 1);
                });
            });
        });
    },

    getfilters: function(filterables) {
        var keyVal = {};
        $(filterables).each(function(i, el){
            var value = $(this).val();
            if(value){
                keyVal[$(this).attr('name')] = $(this).val();
            }
        });
        return keyVal;
    }
};

module.exports = load;