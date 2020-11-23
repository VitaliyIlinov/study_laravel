<form method="{{$getMethod()}}" action="{{$getAction()}}" class="px-md-4">
    @csrf
    @foreach ($getFields() as $name => $field)
        @if (in_array($field['type'],['text','number','email']))
            <div class="form-group">
                {!! $buildLabel($name) !!}
                {!! $buildInput($name) !!}
            </div>
        @elseif ($field['type'] ==='checkbox')
            <div class="form-check form-group">
                {!! $buildCheckbox($name,'form-check-input') !!}
                {!! $buildLabel($name,'form-check-label') !!}
            </div>
        @elseif ($field['type'] ==='option')
            <div class="form-group">
                {!! $buildLabel($name) !!}
                {!! $buildSelect($name) !!}
            </div>
        @elseif ($field['type'] ==='textarea')
            <div class="form-group">
                {!! $buildLabel($name) !!}
                {!! $buildTextarea($name) !!}
            </div>
            @include('helpers.editor', ['id' => $name])
        @endif
    @endforeach
    <button type="submit" class="btn btn-primary">Submit</button>
{{--    <button type="button" class="btn btn-secondary" onclick="location.href='{{url()->previous()}}'">Back</button>--}}
</form>
@stack('editor')
