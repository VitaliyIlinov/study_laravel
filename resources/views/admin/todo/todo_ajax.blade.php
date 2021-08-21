<div class="col-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">
                <a data-href="{{action('Admin\TodoListController@create')}}" data-method="get"
                   data-onsuccess="createRow" class="btn">
                    <i class="fas fa-lg fa-plus"></i>
                </a>
            </h3>
        </div>
        <div class="card-body">
            <ul id="sortable-items" class="list-group nested-sortable" data-id="0">
                @foreach($rows as $row)
                    <li class="list-group-item" data-status={{$row->status}} data-id={{$row->id}}>
                        <i role="button" class="fas fa-bars handle"></i>
                        <div style="display: inline-block" class="custom-control custom-checkbox">
                            <input onchange="sendActive(this)"
                                   data-url="{{route('todoStatus', $row->id)}}"
                                   class="custom-control-input"
                                   type="checkbox"
                                   {{ $row->status ?'checked':''}}
                                   id="{{$row->id}}"
                            >
                            <label for="{{$row->id}}" data-name="description"
                                   class="custom-control-label">{!! $row->description !!}</label>
                        </div>
                        <span class="badge badge-success" data-name="label">{{$row->label}}</span>
                        <span class="badge badge-primary" data-name="updated_at">{{$row->updated_at}}</span>
                        <span class="badge">
                        <a data-href="{{action('Admin\TodoListController@show',$row->id)}}" data-method="get"
                           data-onsuccess="saveRow" class="btn">
                            <i class="far fa-edit"></i>
                        </a>
                        <a data-href="{{action('Admin\TodoListController@destroy',$row->id)}}" data-method="delete"
                           data-onsuccess="deleteRow" class="btn">
                            <i class="fas fa-trash"></i>
                        </a>
                        </span>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
<script>
    function sendActive(el) {
        ajaxSend({
            data: {
                status: $(el).is(':checked') ? 1 : 0,
            },
            url: $(el).data('url')
        });
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
                    ajaxSend({
                        data: {
                            list: order.join("|")
                        },
                        url: '{{ route('ajaxToDoUpdate') }}'
                    });
                },
            },
        });
    }
</script>
