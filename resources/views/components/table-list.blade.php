<div class="table-responsive">
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            @foreach ($fields as $name => $field)
                <th>{{$field['trans']??$name}}</th>
            @endforeach
            <th>
                <a class="btn btn-danger" href="{{$getLink('create')}}">
                    <i class="fas fa-plus"></i>
                </a>
            </th>
        </tr>
        </thead>
        <tbody>
        @foreach ($rows as $row)
            <tr>
                @foreach ($fields  as $name => $field)
                    @if (isset($field['callback']))
                        <td>{{ $field['callback']($row) }} </td>
                    @else
                        <td>{{$row->$name }}</td>
                    @endif
                @endforeach
                <td>
                    <a class="btn btn-success" href="{{$getLink('edit',$row->id)}}">
                        <i class="far fa-edit"></i>
                    </a>
                    <a class="btn btn-danger" data-method="delete" href="{{$getLink($row->id)}}">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
@push('scripts')
    <script>
        $('table a.btn[data-method]').on('click', function (e) {
            e.preventDefault();
            var target = $(this);
            $.ajax({
                method: target.data('method'),
                url: target.attr('href'),
                data: {"_token": "{{ csrf_token() }}"},
                dataType: 'json',
                success: function (data) {
                    toastr.success(data);
                    target.closest('tr').fadeOut(500, function () {
                        $(this).remove();
                    });
                },
                error: function (e) {
                    console.log(e);
                    alert(e.responseJSON.message);
                }
            });
        });
    </script>
@endpush
