$(document).ready(function () {

    //sidebar
    $('#sidebar a[href="' + window.location.href.split("#")[0] + '"]').parents('li').addClass('active').parents('ul').show(0, function () {
        $(this).closest('li').addClass('active');
    });

    $('#sidebar a[href="#"]').on('click', function (e) {
        e.preventDefault();
        $(this).closest('li').toggleClass('active');
        $(this).next('ul').slideToggle(300, function () {
            // Animation complete.
        });
    });

    //add h2 from main list to main content
    $('#main_content .main_list li a').each(function (i, e) {
        $(e).clone().prependTo($('#main_content').find('div#' + $(e).attr('href').substring(1))).wrap('<h2>');
    })

    $('.info').on('click', "a[href^='#']", function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 500);
    });
});
