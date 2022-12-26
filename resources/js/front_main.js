$(document).ready(function () {

    setActive();
    setAnchor();

    var ob = {
        data: {},
        success: function (key, onsuccess) {

            if (onsuccess && $.isFunction(onsuccess)) {
                onsuccess(this.get(key));
            }
        },

        set: function (key, data) {
            localStorage.setItem(key, JSON.stringify(data));
            // this.data[key] = data;
        },
        get: function (key) {
            return JSON.parse(localStorage.getItem(key));
            //return this.data[key];
        },
        isExist: function (key) {
            return localStorage.getItem(key) !== null;
            // return this.data[key] !== undefined;
        },

    };

    $('#sidebar').on('click', 'a[href="#"]', function (e) {
        e.preventDefault();
        $(this).closest('li').toggleClass('open');
        $(this).next('ul').slideToggle(300, function () {
            // Animation complete.
        });
    })
        .on('click', 'a[href!="#"]', function (e) {
            e.preventDefault();
            var $this = $(this);
            var $href = $this.attr('href');
            var onsuccess = function (data) {
                window.history.pushState({href: $href}, data.title, $href);
                animateCSS($('[data-render="content"]').html(data.content), 'fadeIn');
                setAnchor();
                setActive();
                hljs.highlightAll();
            };
            if (ob.isExist($href)) {
                ob.success($href, onsuccess);
                return;
            }
            ajaxSend({
                method: 'get',
                url: $href,
                success: function (data) {
                    ob.set($href, data);
                    ob.success($href, onsuccess);
                },
                statusCode: {
                    500: function(jqXHR) {
                        toastr.error(jqXHR.responseText.message);
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    let msg = '';
                    if (jqXHR.status === 0) {
                        msg = 'Not connect.\n Verify Network.';
                    } else if (jqXHR.status === 404) {
                        msg = 'Requested page not found. [404]';
                    } else if (jqXHR.status === 500) {
                        msg = 'Internal Server Error [500].';
                    } else if (textStatus === 'parsererror') {
                        msg = 'Requested JSON parse failed.';
                    } else if (textStatus === 'timeout') {
                        msg = 'Time out error.';
                    } else if (textStatus === 'abort') {
                        msg = 'Ajax request aborted.';
                    } else {
                        msg = 'Uncaught Error.\n' + jqXHR.responseText;
                    }
                    toastr.error(msg);
                },
            });
        });
});

function setActive(){
    $('#sidebar').find('.open').removeClass('open');
    $('#sidebar a[href="' + window.location.href.split("#")[0] + '"]').parents('li').addClass('open').parents('ul').show(0, function () {
        $(this).closest('li').addClass('open');
    });
}

function setAnchor() {
    //add h2 from main list to main content
    $('#main_content .main_list li a[href^=\'#\']').each(function (i, e) {
        $(e).clone().prependTo($('#main_content').find('div#' + $(e).attr('href').substring(1))).wrap('<h2>');
    });

    $('.info').on('click', "a[href^='#']", function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 500);
    });
}
