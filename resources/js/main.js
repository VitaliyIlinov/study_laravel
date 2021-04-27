$(document).ready(function () {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
    toastr.options.timeOut = 1500;

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

    var ob = {
        data: {},
        success: function (key, onsuccess) {

            if (onsuccess && $.isFunction(onsuccess)) {
                onsuccess(this.get(key));
            }
        },

        set: function (key, data) {
            this.data[key] = data;
        },
        get: function (key) {
            return this.data[key];
        },
        isExist: function (key) {
            return this.data[key] !== undefined;
        },

    };

    $('[data-widget="treeview"] a[href!="#"]').on('click', function (e) {
        e.preventDefault();
        var $this = $(this);
        var $href = $this.attr('href');
        if ($this.hasClass('active')) {
            return;
        }
        var onsuccess = function(data){
            animateCSS($('[data-render="title"]').html(data.title), 'fadeIn');
            animateCSS($('[data-render="content"]').html(data.content), 'fadeIn');
            dataTable('dataTable');
            $this.closest('ul').find('.nav-link.active').removeClass('active');
            $this.addClass('active');

            window.history.pushState({ href: $href }, data.title, $href);
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
            error: function (jqXHR, textStatus, errorThrown) {
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

    dataTable();

    $('#sidebar a[href="' + location.href + '"]').addClass('active');
});

dataTable = (id) => {
    $('#dataTable thead th.input').each(function () {
        var title = $(this).text();
        $(this).html(title + '<br><input class="form-control" type="text" placeholder="Search ' + title + '" />');
    });
    $('#dataTable').DataTable({
        initComplete: function () {
            this.api().columns('.select').every(function () {
                var column = this;

                var select = $('<select style="width: initial;" class="form-control"><option value=""></option></select>')
                    .appendTo($(column.header()))
                    .on('change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search(val ? '^' + val + '$' : '', true, false)
                            .draw();
                    });

                column.data().unique().sort().each(function (d, j) {
                    select.append('<option value="' + d + '">' + d + '</option>')
                });
            });

            this.api().columns('.input').every(function () {
                var that = this;

                $('input', this.header()).on('keyup change clear', function () {
                    if (that.search() !== this.value) {
                        that.search(this.value).draw();
                    }
                }).on('click', function (e) {
                    e.stopPropagation();
                });
            });
        }
    });
}

animateCSS = (element, animation, prefix = 'animate__') => {
    const animationName = `${prefix}${animation}`;

    element.addClass(`${prefix}animated ${animationName}`);

    element.on("animationend", function () {
        element.removeClass(`${prefix}animated ${animationName}`);
    })
};

formEdit = (el, response, onSuccess = null) => {
    var modal = $('#modal');
    var form = $(response.form).on('submit', function (e) {
        var form = $(this).find('form');
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
            toastr.error(e.responseJSON.message, 'Error', {timeOut: 3500});
        }
    }, data);

    $.ajax(options);
}

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
            main_el.find('[data-name=' + key + ']').text(model[key]);
            if (key === 'status') {
                main_el.attr('data-status', model[key])
            }
        }
        toastr.success(data.message);
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
