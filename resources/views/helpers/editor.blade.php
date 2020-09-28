@if ($editor = session()->get('editor','ck_editor'))
    @push('editor')
        <script>
            @switch($editor)

            @case('ck_editor')
            ClassicEditor
                .create(document.getElementById('<?=$id?>'), {
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
            @break

            @case('code_mirror')
            var editor = CodeMirror.fromTextArea(document.getElementById('<?=$id?>'), {
                lineNumbers: true,
                // theme:"darcula",
            });
            @break
            @endswitch
        </script>
    @endpush
@endif
