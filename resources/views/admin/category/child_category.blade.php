@foreach ($categories as $category)
    <li class='list-group-item' data-status={{$category['status']}} data-id={{$category['id']}}>
        <i role="button" class="fas fa-arrows-alt handle"></i>
        <span class="name">
        {{$category['name']}}
        </span>
        <span class="badge">
            <a data-onsave="saveRow" data-method="get" data-href="{{$getLink('edit',$category['id'])}}" class="btn">
                <i class='far fa-md fa-edit'></i>
            </a>
            <a data-onsuccess="deleteRow" data-method="delete" data-href="{{$getLink($category['id'])}}" class="btn">
                <i class='fas fa-md fa-trash'></i>
            </a>
        </span>
        <ul class="nested-sortable"></ul>
        @isset($category['childs'])
            <ul class='nested-sortable'>
                @include('admin.category.child_category',['categories'=>$category['childs']])
            </ul>
        @endisset
    </li>
@endforeach
