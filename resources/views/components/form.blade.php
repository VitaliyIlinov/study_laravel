@push('ClassicEditor')
    <script>
        ClassicEditor
            .create(document.querySelector('textarea'), {
                toolbar: {
                    items: [
                        'heading',
                        '|',
                        'bold',
                        'italic',
                        'link',
                        'bulletedList',
                        'numberedList',
                        '|',
                        'indent',
                        'outdent',
                        '|',
                        'codeBlock',
                        'imageUpload',
                        'blockQuote',
                        'insertTable',
                        'mediaEmbed',
                        'undo',
                        'redo',
                        'alignment',
                        'code',
                        'exportPdf',
                        'fontBackgroundColor',
                        'fontColor',
                        'fontSize',
                        'highlight',
                        'specialCharacters',
                        'todoList'
                    ]
                },
                language: 'ru',
                image: {
                    toolbar: [
                        'imageTextAlternative',
                        'imageStyle:full',
                        'imageStyle:side'
                    ]
                },
                table: {
                    contentToolbar: [
                        'tableColumn',
                        'tableRow',
                        'mergeTableCells'
                    ]
                },
                licenseKey: '',

            })
            .then(editor => {
                window.editor = editor;
            })
            .catch(error => {
                console.error('Oops, something went wrong!');
                console.error('Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:');
                console.warn('Build id: 1inafeqm1kue-x8axumo66lfr');
                console.error(error);
            });
    </script>
@endpush
<form method="{{$method}}" action="{{$action}}" class="px-md-4">
    @csrf
    @foreach ($fields as $name => $field)
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
            @stack('ClassicEditor')
{{--            <script>--}}
{{--                var editor = CodeMirror.fromTextArea(document.getElementById("text"), {--}}
{{--                    lineNumbers: true,--}}
{{--                });--}}
{{--            </script>--}}
        @endif
    @endforeach
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='{{$currentPrefix}}'">Back</button>
</form>
<style>
    .ck-editor__editable {
        min-height: 400px;
        /*max-height: 500px;*/
    }
</style>

