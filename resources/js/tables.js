$(document).ready(function () {
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
        if($this.hasClass('active')){
            return;
        }
        ajaxSend({
            method: 'get',
            url: $this.attr('href'),
            success: function (data) {
                // $('[data-render="title"]').html(data.title).addClass('animate__animated animate__fast animate__repeat-2 animate__delay-0.5s animate__backInUp');
                $('[data-render="title"]').html(data.title).addClass('animate__animated animate__fast animate__backInUp');
                $('[data-render="content"]').html(data.content).addClass('animate__animated animate__fast animate__backInUp');
                $this.closest('ul').find('.nav-link.active').removeClass('active');
                $this.addClass('active');
                history.pushState(null, data.title,$this.attr('href'));
            },
        });
    });
});


