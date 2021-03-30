@if ($editor = session()->get('editor','froala_editor'))
    @push('editor')
        <script>
            @switch($editor)

            @case('froala_editor')
            new FroalaEditor('#<?=$id?>', {
                pastePlain: true,
                language: 'ru',

                // Set the image upload parameter.
                imageUploadParam: 'file',

                // Set the image upload URL.
                imageUploadURL: '{{route('fileUpload')}}',

                // Additional upload params.
                imageUploadParams: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    location_path: location.pathname,
                },

                // Set request type.
                imageUploadMethod: 'POST',

                // Set max image size to 5MB.
                imageMaxSize: 5 * 1024 * 1024,

                // Allow to upload PNG and JPG.
                imageAllowedTypes: ['jpeg', 'jpg', 'png'],

                events: {
                    'image.beforeUpload': function (images) {
                        // Return false if you want to stop the image upload.
                    },
                    'image.uploaded': function (response) {
                        // Image was uploaded to the server.
                    },
                    'image.inserted': function ($img, response) {
                        // Image was inserted in the editor.
                    },
                    'image.replaced': function ($img, response) {
                        // Image was replaced in the editor.
                    },
                    'image.error': function (error, response) {
                        // 1 Bad link.  if (error.code == 1) { ... }
                        // 2 No link in upload response.
                        // 3 Error during image upload.
                        // 4 Parsing response failed.
                        // 5 Image too text-large.
                        // 6 Invalid image type.
                        // 7 Image can be uploaded only to same domain in IE 8 and IE 9.
                        // Response contains the original server response to the request if available.
                    },
                    'image.removed': function ($img) {
                        ajaxSend({
                            url: '{{route('fileDelete')}}',
                            method: 'delete',
                            data: {
                                filePath: $img.attr('src')
                            },
                            success: function (data) {
                            },
                        });
                    }
                }
            });
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
