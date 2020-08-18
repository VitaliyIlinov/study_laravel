<form method="post" action="" class="px-md-4">
    @csrf
    @foreach ($fields as $name => $field)
        @if (in_array($field['type'],['text','number','email']))
            <div class="form-group">
                <label for="{{ $name }}">{{ $field['trans']??$name }}</label>
                <input type="{{ $field['type'] }}"
                       class="form-control"
                       value="{{$row->$name}}"
                       name="{{ $name }}"
                       id="{{ $name }}"
                       placeholder="{{ $name }}">
            </div>
        @elseif ($field['type'] ==='checkbox')
            <div class="form-check form-group">
                <input type="{{ $field['type'] }}"
                       checked="{{$row->$name?true:false}}"
                       class="form-check-input"
                       name="{{ $name }}"
                       id="{{ $name }}">
                <label class="form-check-label" for="{{ $name }}"> {{ $field['trans']??$name }}</label>
            </div>
        @elseif ($field['type'] ==='option')
            <div class="form-group">
                <label for="{{ $name }}">{{ $field['trans']??$name }}</label> <select class="form-control"
                                                                                      id="{{ $name }}"
                                                                                      name="{{ $name }}">
                    @foreach ($field['values'] as $id => $value)
                        <option {{$row->$name === $id ?'selected':''}} value="{{$id}}">{{$value}}</option>
                    @endforeach
                </select>
            </div>
        @endif

    @endforeach
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</form>

