<div class="table-responsive">
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            @foreach ($fields as $name => $field)
                <th>{{$field['trans']??$name}}</th>
            @endforeach
            <th>
                <a data-method="get" class="btn btn-danger" data-href="/{{$prefix}}/create">
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
                        <td>{{ $field['callback']($row)}}</td>
                    @else
                        <td>{{ $row->$name }}</td>
                    @endif
                @endforeach
                <td>
                    <a class="btn btn-success" data-method="get" data-href="/{{$prefix}}/edit/{{$row->id}}">
                        <i class="far fa-edit"></i>
                    </a>
                    <a class="btn btn-danger" data-method="delete" data-href="/{{$prefix}}/{{$row->id}}">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

@include('admin.modal')
@push('scripts')
    <script>
        $('table a.btn[data-method]').on('click', function (e) {
            var target = $(this);
            $.ajax({
                method: target.data('method'),
                url: target.data('href'),
            }).done(function (form) {
                var data = $(form);
                data.attr('action', target.data('href'));
                $('#editModal').find('div.modal-body').html(data);
                $('#editModal').modal('show')
            });
        });
    </script>
@endpush
