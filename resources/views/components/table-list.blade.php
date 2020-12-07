<div class="table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            @foreach ($fields as $name => $field)
                @continue(empty($field['show_in_table']))
                <th>{{$field['trans']??$name}}</th>
            @endforeach
            <th>
                {!! $buildCreateButton() !!}
            </th>
        </tr>
        </thead>
        <tbody>
        @foreach ($rows as $row)
            <tr data-id={{$row->id}}>
                @foreach ($fields  as $name => $field)
                    @continue(empty($field['show_in_table']))
                    <td data-name="{{$name}}">
                        @if (isset($field['callback']))
                            {{ $field['callback']($row) }}
                        @else
                            {{$row->$name }}
                        @endif
                    </td>
                @endforeach
                <td>
                    {!! $buildEditButton($row->id) !!}
                    {!! $buildDeleteButton($row->id) !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

@include('helpers.modal')

@push('scripts')
    <script>

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

        const formEdit = (el, response, onSuccess = null) => {
            var modal = $('#modal');
            var form = $(response.form).on('submit', function (e) {
                var form = $(this);
                // console.log(editor);
                // editor.updateSourceElement();
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
            modal.find('.modal-body').html('');
            modal.find('.modal-body').html(form);
            modal.modal();
        }

        const ajaxSend = (data) => {
            var options = $.extend(true, {
                dataType: 'json',
                method: 'post',
                url: '',
                data: {
                    _token: '{{ csrf_token() }}',
                },
                success: function (data) {
                    toastr.success(data);
                },
                error: function (e) {
                    toastr.error(e.responseJSON.message);
                }
            }, data);

            $.ajax(options);
        }

        function deleteRow(el, response) {
            toastr.success(response.message);
            el.closest('tr').fadeOut(500, function () {
                $(this).remove();
            });
        }

        function saveRow(el, response) {

            var onResponse = function (data) {
                var result = data.result, model = data.model, tr = el.closest('tr');
                if (!result) {
                    toastr.error(result);
                    return;
                }
                for (var key in model) {
                    tr.find('[data-name=' + key + ']').html(model[key]);
                }
                toastr.success(result);
            };

            formEdit(el, response, onResponse)

        }

        function createRow(el, response) {

            var onResponse = function (data) {
                var result = data.result, model = data.model, tr = el.closest('tr');
                if (!result) {
                    toastr.error(result);
                    return;
                }
                toastr.success(result);
                location.reload();
            };

            formEdit(el, response, onResponse)

        }

    </script>
@endpush
