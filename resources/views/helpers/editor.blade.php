@if ($editor = session()->get('editor','summernote_editor'))
    @push('editor')
        <script>
            @switch($editor)

            @case('summernote_editor')
            $('#<?=$id?>').summernote({
                dialogsInBody: true,
                callbacks: {
                    onImageUpload: function (files) {
                        for (let i = 0; i < files.length; i++) {
                            uploadImage(files[i]);
                        }
                    },
                    onMediaDelete : function ($target, $editable) {
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
                theme: "darcula"
            });
            @break
            @endswitch
        </script>
    @endpush
@endif
