$(document).ready(function () {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
    toastr.options.timeOut = 1500;

    $('#sidebar a[href="' + location.href + '"]').addClass('active');
    dataTable();

    let repository = {
        data: {},
        run: function ($key) {
            let current = this.data[$key];
            if (current && $.isFunction(current)) {
                current();
                console.log('Is hit ' + $key);
            }
        },

        set: function ($key, $closure) {
            this.data[$key] = $closure;
            return this;
        },
        get: function ($key) {
            return this.data[$key];
        },
        isExist: function ($key) {
            return this.data[$key] !== undefined;
        },
        delete: function ($key) {
            delete this.data[$key];
        }
    };

    let tableActions = {
        data: {},
        showForm: function (response, href, el) {
            this.renderContent(response, href);
        },
        showEditForm: function (response, href, el) {
            this.renderContent(response, href);
        },
        deleteRow: function (response, href, el) {
            el.closest('[data-id]').fadeOut(500, function () {
                $(this).remove();
            });
        },
        renderContent: function (response, href) {
            animateCSS($('[data-render="title"]').html(response.title), 'fadeIn');
            animateCSS($('[data-render="content"]').html(response.content), 'fadeIn');
            window.history.pushState({prev: location.href, href: href}, response.title, href);
        },
        sidebarSetActive: function () {
            $('#sidebar').find('.nav-link.active').removeClass('active');
            $('#sidebar a[href="' + location.href + '"]').addClass('active');
        },
        getContent: function ($href) {
            let _this = this;

            if (repository.isExist($href)) {
                repository.run($href);
                return;
            }

            ajaxSend({
                method: 'get',
                url: $href,
                success: function (response) {
                    repository.set($href, () => {
                        _this.renderContent(response, $href);
                        _this.sidebarSetActive();
                        dataTable();
                    }).run($href);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    toastr.error(jqXHR + ':' + textStatus);
                },
            });
        },
    };

    $('.content-wrapper').on('click', '#dataTable a.btn[href]', function (e) {
        //edit,delete,create buttons
        e.preventDefault();
        var target = $(this);
        var onsuccess = target.data('onsuccess');
        var options = {
            method: target.data('method'),
            url: target.attr('href'),
            success: function (response) {
                if (onsuccess !== undefined) {
                    tableActions[onsuccess](response, target.attr('href'), target);
                }
            },
        };
        ajaxSend(options);
    }).on('click', '#form [type=button].submit-btn', function (e) {
        tableActions.getContent(window.history.state.prev);
    });

    $('#sidebar a[href!="#"]').on('click', function (e) {
        e.preventDefault();
        tableActions.getContent($(this).attr('href'));
    });
});

dataTable = (id = 'dataTable') => {
    $.urlParam = function (name) {
        var results = new RegExp('[\\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (!results) {
            return '';
        }
        return results[1] || '';
    }

    $('#dataTable thead th.input').each(function () {
        var title = $(this).text();
        $(this).html(title + '<br><input class="form-control" type="text" placeholder="Search ' + title + '" />');
    });
    $('#dataTable').DataTable({
        "pageLength": 25,
        "order": [],
        "search": {
            "search": $.urlParam('search')
        },
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
