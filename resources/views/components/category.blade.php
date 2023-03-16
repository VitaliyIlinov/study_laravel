<div class="col-11">
    <ul id="sortable-items" class="list-group nested-sortable" data-id="0">
        @include('admin.category.child_category',['categories'=>$getMenu()])
    </ul>
</div>
<div class="col-1 position-relative">
    <div style="position: fixed">
        {!! $buildCreateButton() !!}
        <a class="btn btn-primary" href="#" role="button"
           onclick="ajaxSend({url:'{{ route('admin.category.ajaxCatUpdate') }}',data:{list:JSON.parse(localStorage.getItem('cat_list'))}});localStorage.removeItem('cat_list');">
            Save
        </a>
    </div>
</div>
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
                    itemsArray[parent_id] = order.join("|");
                    localStorage.setItem('cat_list', JSON.stringify(itemsArray));
                },
            },
        });
    }

</script>

