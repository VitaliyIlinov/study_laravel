<div class="table-responsive">
    <table id="dataTable" class="table table-bordered table-hover text-center">
        <thead>
        <tr>
            @foreach ($getFields() as $name => $field)
                @continue(empty($field['show_in_table']))
                <th class="{{ $field['show_table_filter']??''}}">{{$field['trans']??$name}}</th>
            @endforeach
            <th style="min-width: 80px">
                {!! $buildCreateButton() !!}
            </th>
        </tr>
        </thead>
        <tbody>
        @foreach ($getRows() as $row)
            <tr data-id={{$row->id}} @isset($row->status) data-status={{$row->status}} @endisset>
                @foreach ($getFields()  as $name => $field)
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
