@foreach ($categories as $category)
    <li class='list-group-item' data-status={{$category['status']}} data-id={{$category['id']}}>
        <i role="button" class="fas fa-arrows-alt handle"></i>
        <span data-name="name">{{$category['name']}}</span>
        <span class="badge badge-primary" data-name="updated_at">{{$category['updated_at']}}</span>
        <span class="badge">
            {!! $buildEditButton($category['id']) !!}
            {!! $buildDeleteButton($category['id']) !!}
        </span>
        <ul class="nested-sortable"></ul>
        @isset($category['childs'])
            <ul class='nested-sortable'>
                @include('admin.category.child_category',['categories'=>$category['childs']])
            </ul>
        @endisset
    </li>
@endforeach
