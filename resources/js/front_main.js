$(document).ready(function () {

    let $width = $(window).width();

    let repository = {
        data: {},
        run: function (key) {
            this.renderContent(this.get(key), key);
            console.log('Is hit ' + key);
        },
        renderContent: function (response, href) {
            window.history.pushState({href: href}, response.title, href);
            animateCSS($('[data-render="content"]').html(response.content), 'fadeIn');
            setAnchor();
            setActive();
            if ($width < 800) {
                $('#sidebar').toggleClass('active');
            }
            hljs.highlightAll();
        },
        getContent: function ($href) {
            let _this = this;

            if (this.isExist($href)) {
                this.run($href);
                return;
            }

            ajaxSend({
                method: 'get',
                url: $href,
                success: function (data) {
                    _this.set($href, data).renderContent(data, $href);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    toastr.error(jqXHR + ':' + textStatus);
                },
            });
        },
        set: function (key, data) {
            localStorage.setItem(key, JSON.stringify(data));
            return this;
        },
        get: function (key) {
            return JSON.parse(localStorage.getItem(key));
        },
        isExist: function (key) {
            return localStorage.getItem(key) !== null;
        },
        delete(key) {
            localStorage.removeItem(this.dbPrefix + key);
        },
        dropAll() {
            localStorage.clear();
        }
    };

    setActive();
    setAnchor();

    $('#sidebar').on('click', 'a[href="#"]', function (e) {
        e.preventDefault();
        $(this).closest('li').toggleClass('open');
        $(this).next('ul').slideToggle(300, function () {
            // Animation complete.
        });
    })
        .on('click', 'a[href!="#"]', function (e) {
            e.preventDefault();
            repository.getContent($(this).attr('href'));
        });
});

function setActive() {
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

    $('.info, #arrow-top').on('click', "a[href^='#']", function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top - 75}, 500);
    });
}
