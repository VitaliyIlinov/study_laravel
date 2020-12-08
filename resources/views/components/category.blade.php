<div class="container-fluid">
    <div class="col-11">
        <ul id="sortable-items" class="list-group nested-sortable" data-id="0">
            @include('admin.category.child_category',['categories'=>$tree($rows)])
        </ul>
    </div>
    <div class="col-1">
        <div class="fixed-top" style="left:calc(100% - 70px);top:5%">
            {!! $buildCreateButton() !!}
            <a class="btn btn-primary" href="#" role="button"
               onclick="ajaxSend({url:'{{ route('ajaxCatUpdate') }}',data:{list:JSON.parse(localStorage.getItem('cat_listcat_list'))}})">
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

        function deleteRow(el, response) {
            el.closest('li').fadeOut(500, function () {
                $(this).remove();
            });
        }

        function saveRow(el, response) {

            var onResponse = function (data) {
                var result = data.result, model = data.model, li = el.closest('li');
                if (!result) {
                    toastr.error(result);
                    return;
                }
                for (var key in model) {
                    li.find('[data-name=' + key + ']').html(model[key]);
                    if (key === 'status') {
                        li.attr('data-status', model[key])
                    }
                }
            };

            formEdit(el, response, onResponse)
        }

        function createRow(el, response) {
            var onResponse = function (data) {
                var result = data.result, model = data.model, tr = el.closest('li');
                if (!result) {
                    toastr.error(result);
                    return;
                }
                toastr.success(result);
                location.reload();
            };

            formEdit(el, response, onResponse)
        }

    </script>
@endpush
