@if ($editor = session()->get('editor','summernote_editor'))
    @push('editor')
        <script>
            @switch($editor)

            @case('summernote_editor')
            $('#<?=$id?>').summernote({
                dialogsInBody: true,
                prettifyHtml: false,
                codemirror: {
                    theme: 'monokai',
                    lineNumbers: true,
                    matchBrackets: true,
                    autoRefresh: true,
                    lineWrapping: true
                    // htmlMode: true,
                    // mode: "text/html"
                },
                addclass: {
                    debug: false,
                    classTags:
                        [
                            {title: "Button", value: "btn btn-success"},
                            "jumbotron",
                            "img-rounded",
                            "img-circle",
                            "img-responsive",
                            "btn",
                            "btn btn-success",
                            "btn btn-danger",
                            "text-muted",
                            "text-primary",
                            "text-warning",
                            "text-danger",
                            "text-success",
                            "table-bordered",
                            "table-responsive",
                            "alert",
                            "alert alert-success",
                            "alert alert-info",
                            "alert alert-warning",
                            "alert alert-danger",
                            "visible-sm",
                            "hidden-xs",
                            "hidden-md",
                            "hidden-lg",
                            "hidden-print"
                        ]
                },
                toolbar: [
                    // [groupName, [list of button]]
                    ['own', ['highlight']],
                    ['own', ['gxcode']],//code Wrapper(Add <PRE>)
                    ['own', ['format']], //formating
                    ['own', ['addclass']], //add own class
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['fontsize', ['fontsize']],
                    ['fontname', ['fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['height', ['height']],
                    ['view', ['undo', 'redo', 'fullscreen', 'codeview', 'help']],
                ],
                callbacks: {
                    onBlurCodeview: function (contents, $editable) {
                        // $(#desc).val($(desc).summernote('code'));
                        $(this).html(contents);
                        console.log('onBlurCodeview event fire');
                    },
                    // or you can use cntr + shift + e
                    // onPaste: function (e) {
                    //     var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
                    //     e.preventDefault();
                    //     document.execCommand('insertText', false, bufferText);
                    // },
                    onImageUpload: function (files) {
                        for (let i = 0; i < files.length; i++) {
                            uploadImage(files[i]);
                        }
                    },
                    onMediaDelete: function ($target, $editable) {
                        ajaxSend({
                            url: '{{route('fileDelete')}}',
                            method: 'delete',
                            data: {
                                filePath: $target.attr('src')
                            },
                        });
                    }
                }
            });

            function uploadImage(file) {
                var data = new FormData();

                data.append("file", file);
                data.append(" location_path", location.pathname);

                ajaxSend({
                    data: data,
                    url: '{{route('fileUpload')}}',
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (url) {
                        $('#<?=$id?>').summernote("insertImage", url.link);
                    }
                });
            }
            @break

            @case('code_mirror')
            var editor = CodeMirror.fromTextArea(document.getElementById('<?=$id?>'), {
                lineNumbers: true,
                matchBrackets: true,
                autoRefresh: true,
                theme: "monokai"
            });
            @break
            @endswitch
        </script>
    @endpush
@endif
