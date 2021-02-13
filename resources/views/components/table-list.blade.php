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
