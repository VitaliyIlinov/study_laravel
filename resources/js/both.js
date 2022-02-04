ajaxSend = (data) => {
    var options = $.extend(true, {
        dataType: 'json',
        method: 'post',
        url: '',
        data: {},
        success: function (data) {
            toastr.success(data);
        },
        error: function (e) {
            toastr.error(e.responseJSON.message, 'Error', {timeOut: 3500});
        }
    }, data);

    $.ajax(options);
}

animateCSS = (element, animation, prefix = 'animate__') => {
    const animationName = `${prefix}${animation}`;

    element.addClass(`${prefix}animated ${animationName}`);

    element.on("animationend", function () {
        element.removeClass(`${prefix}animated ${animationName}`);
    })
};
