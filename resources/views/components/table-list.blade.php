<div class="table-responsive">
    <table class="table table-bordered table-hover text-center">
        <thead>
        <tr>
            @foreach ($fields as $name => $field)
                @continue(empty($field['show_in_table']))
                <th>{{$field['trans']??$name}}</th>
            @endforeach
            <th style="min-width: 80px">
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

<script>

    function deleteRow(el, response) {
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
