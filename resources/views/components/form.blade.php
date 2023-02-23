<div class="col-12">
    <form id="form" method="{{$getMethod()}}" action="{{$getAction()}}" class="px-md-4 orm-horizontal needs-validation">
        @csrf
        <div class="card-header submit-btn">
            <button type="submit" class="btn btn-info">Submit</button>
            <button type="button" class="btn btn-default float-right">Cancel</button>
        </div>
        <div class="card-body">
            @foreach ($getFields() as $name => $field)
                @continue(!isset($field['type']))
                <div class="form-group row">
                    @if (in_array($field['type'],['text','number','email']))
                        {!! $buildLabel($name) !!}
                        <div class="col-sm-10">
                            {!! $buildInput($name) !!}
                        </div>
                    @elseif ($field['type'] ==='checkbox')
                        {!! $buildLabel($name) !!}
                        <div class="col-sm-10">
                            {!! $buildCheckbox($name) !!}
                        </div>
                    @elseif ($field['type'] ==='option')
                        {!! $buildLabel($name) !!}
                        <div class="col-sm-10">
                            {!! $buildSelect($name) !!}
                        </div>
                    @elseif ($field['type'] ==='textarea')
                        {!! $buildLabel($name) !!}
                        <div class="col-sm-12">
                            {!! $buildTextarea($name) !!}
                        </div>
                        @include('admin.helpers.editor', ['id' => $name])
                    @endif
                    @error($name)
                    <span style="display: block" class="error invalid-feedback">{{ $errors->first($name) }}</span>
                    @enderror
                </div>
            @endforeach
        </div>
    </form>
</div>

@stack('editor')
