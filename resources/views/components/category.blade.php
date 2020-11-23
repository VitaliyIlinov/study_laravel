<div class="container-fluid">
    <div class="col-11">
        <ul id="sortable-items" class="list-group nested-sortable" data-id="0">
            @include('admin.category.child_category',['categories'=>$tree($rows)])
        </ul>
    </div>
    <div class="col-1">
        <div class="fixed-top" style="left:calc(100% - 70px);top:5%">
            <a class="btn btn-primary" data-onsave="createRow" data-href="{{ $getLink('create') }}" data-method="get">
                Create
            </a>
            <a id="save" class="btn btn-primary" href="#" role="button"
               onclick="ajaxSend({url:'{{ route('ajaxCatUpdate') }}',data:{list:JSON.parse(localStorage.getItem('cat_list'))}})">
                Save
            </a>
        </div>
    </div>
</div>

@include('helpers.modal')

@push('scripts')
    <script>
        window.onbeforeunload = function () {
            return false ? 'There are unsaved data.' : null;
        }

        function deleteRow(el,response){
            el.closest('li').fadeOut(500, function () {
                $(this).remove();
            });
        }

        function saveRow(el,response,formData){
            var catStatus = 0;
            for (i=0; i<formData.length; i++) {
                if(formData[i].name==='name'){
                    el.closest('li').children('span.name').html(formData[i].value);
                }
                if(formData[i].name==='status'){
                    catStatus=1
                }
            }
            el.closest('li').attr('data-status',catStatus);
        }

        function createRow(el,response,formData){
            location.reload();
        }

        const ajaxSend = (data) => {
            var options = $.extend(true, {
                dataType: 'json',
                method: 'post',
                url: '',
                data: {
                    _token: '{{ csrf_token() }}',
                },
                success: function (data) {
                    toastr.success(data);
                },
                error: function (e) {
                    toastr.error(e.responseJSON.message);
                }
            }, data);

            $.ajax(options);
        }

        const formEdit = (el,response) => {
            var modal = $('#modal');
            var onsave_func = el.data('onsave');
            var form = $(response.form).on('submit', function (e) {
                var form = $(this);
                var formData = form.serializeArray();
                var options = {
                    method: form.attr('method'),
                    url: form.attr('action'),
                    data: formData,
                    success: function (data) {
                        if(onsave_func!==undefined){
                            window[onsave_func](el,response,formData);
                        }else{
                            toastr.success(data);
                        }
                    },
                    error: function (e) {
                        toastr.error(e.responseJSON.message);
                    }
                };
                modal.modal('hide');
                e.preventDefault();
                ajaxSend(options);
            });
            modal.find('.modal-body').html(form);
            modal.modal();
        }

        var el = [].slice.call(document.querySelectorAll('.nested-sortable'));
        var list = [];
        for (var i = 0; i < el.length; i++) {
            list[i] = new Sortable(el[i], {
                group: 'nested',
                handle: '.handle', // handle's class
                fallbackOnBody: true,
                swapThreshold: 0.65,
                animation: 250,
                store: {
                    /**
                     * Get the order of elements. Called once during initialization.
                     * @param   {Sortable}  sortable
                     * @returns {Array}
                     */
                    get: function (sortable) {
                        // var order = localStorage.getItem('co');
                        // // console.log(JSON.parse(order));
                        // return order ? order.split("|") : [];
                    },

                    /**
                     * Save the order of elements. Called onEnd (when the item is dropped).
                     * @param {Sortable}  sortable
                     */
                    set: function (sortable) {
                        var order = sortable.toArray();
                        var parent_id = $(sortable.el).closest('li').data('id') ?? 0;
                        let itemsArray = localStorage.getItem('cat_list') ? JSON.parse(localStorage.getItem('cat_list')) : {};
                        localStorage.setItem(parent_id, order.join("|"));
                        itemsArray[parent_id] = order.join("|");
                        localStorage.setItem('cat_list', JSON.stringify(itemsArray));
                    },
                },
            });
        }

        $('a.btn[data-href]').on('click', function (e) {
            //edit,delete,create
            e.preventDefault();
            var target = $(this);
            var onsuccess_func = target.data('onsuccess');
            var options = {
                method: target.data('method'),
                url: target.data('href'),
                success: function (response) {
                    if(onsuccess_func!==undefined){
                        window[onsuccess_func](target,response);
                    }else{
                        formEdit(target,response)
                    }
                },
            };
            ajaxSend(options);
        });
    </script>
@endpush
