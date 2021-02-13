$(document).ready(function () {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })

    formEdit = (el, response, onSuccess = null) => {
        var modal = $('#modal');
        var form = $(response.form).on('submit', function (e) {
            var form = $(this);
            var formData = form.serializeArray();
            var options = {
                method: form.attr('method'),
                url: form.attr('action'),
                data: formData,
                success: function (data) {
                    if (onSuccess !== null) {
                        onSuccess(data);
                    } else {
                        toastr.success(data);
                    }
                },
                error: function (e) {
                    toastr.error(e.responseJSON.message);
                }
            };
            modal.modal('hide');
            e.preventDefault();
            ajaxSend(options);
        });
        modal.find('.modal-body').html(form);
        modal.modal();
    }

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
                toastr.error(e.responseJSON.message);
            }
        }, data);

        $.ajax(options);
    }

    $('.content-wrapper').on('click', '.btn[data-href]', function (e) {
        //edit,delete,create
        e.preventDefault();
        var target = $(this);
        var onsuccess = target.data('onsuccess');
        var options = {
            method: target.data('method'),
            url: target.data('href'),
            success: function (response) {
                if (onsuccess !== undefined) {
                    window[onsuccess](target, response);
                }
            },
        };
        ajaxSend(options);
    });

    $('[data-widget] a[href!="#"]').on('click', function (e) {
        e.preventDefault();
        var $this = $(this);
        if ($this.hasClass('active')) {
            return;
        }
        ajaxSend({
            method: 'get',
            url: $this.attr('href'),
            success: function (data) {
                animateCSS($('[data-render="title"]').html(data.title), 'fadeIn');
                animateCSS($('[data-render="content"]').html(data.content), 'fadeIn');
                $this.closest('ul').find('.nav-link.active').removeClass('active');
                $this.addClass('active');
                history.pushState(null, data.title, $this.attr('href'));
            },
            error: function (jqXHR, textStatus,errorThrown) {
                var msg = '';
                if (jqXHR.status === 0) {
                    msg = 'Not connect.\n Verify Network.';
                } else if (jqXHR.status == 404) {
                    msg = 'Requested page not found. [404]';
                } else if (jqXHR.status == 500) {
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

    animateCSS = (element, animation, prefix = 'animate__') => {
        const animationName = `${prefix}${animation}`;

        element.addClass(`${prefix}animated ${animationName}`);

        element.on("animationend", function () {
            element.removeClass(`${prefix}animated ${animationName}`);
        })
    };
});


deleteRow = (el, response) => {
    el.closest('[data-id]').fadeOut(500, function () {
        $(this).remove();
    });
}

saveRow = (el, response) => {

    var onResponse = function (data) {
        var result = data.result, model = data.model, main_el = el.closest('[data-id]');
        if (!result) {
            toastr.error(result);
            return;
        }
        for (var key in model) {
            main_el.find('[data-name=' + key + ']').html(model[key]);
            if (key === 'status') {
                main_el.attr('data-status', model[key])
            }
        }
    };

    formEdit(el, response, onResponse)
}

createRow = (el, response) => {
    var onResponse = function (data) {
        var result = data.result, model = data.model, tr = el.closest('[data-id]');
        if (!result) {
            toastr.error(result);
            return;
        }
        toastr.success(result);
        location.reload();
    };

    formEdit(el, response, onResponse)
}
