<h6>Editor</h6>
<hr class="mb-2">
<div class="d-flex flex-wrap mb-3">
    <div id="sidebar_config_editor">
        <div class="mb-1">
            <input type="radio" class="mr-1" value="ck_editor" name="editor">
            <a target="_blank" href="https://ckeditor.com/">Ck editor</a>
        </div>
        <div class="mb-1">
            <input type="radio" class="mr-1" value="code_mirror" name="editor">
            <a href="https://codemirror.net/" target="_blank">Code mirror</a>
        </div>
        <div class="mb-1">
            <input type="radio" class="mr-1" value="default" name="editor">
            <span>Default</span>
        </div>
    </div>
</div>
<script>

    $('input[name="editor"][value="{{session('editor','ck_editor')}}"]').prop("checked", true);

    $('#sidebar_config')
        .on('change', 'input[name="editor"]', function () {
            ajaxSend({
                data: {
                    key: $(this).attr('name'),
                    value: $(this).val(),
                },
                url: '{{ route('session_set') }}',
                success: function (data) {
                    toastr.success(data, 'Title', {timeOut: 500});
                },
            });
        }).on('change', 'some_element', function () {

    });
</script>
