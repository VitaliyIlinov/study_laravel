window.formEdit = (el, response, onSuccess = null) => {
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
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
})
window.ajaxSend = (data) => {
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

$('.btn[data-href]').on('click', function (e) {
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


