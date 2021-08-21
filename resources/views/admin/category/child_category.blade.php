@foreach ($categories as $category)
    <li class='list-group-item' data-status={{$category['status']}} data-id={{$category['id']}}>
        <i role="button" class="fas fa-arrows-alt handle"></i>
        <span data-name="name">
            <a style="color: #212529;text-decoration: underline" target="_blank" href="{{route('info_list', ['search' => $category['name']])}}">
                {{$category['name']}}
            </a>
        </span>
        <span class="badge badge-primary" data-name="updated_at">{{$category['updated_at']}}</span>
        <span class="badge">
            {!! $category['info_count'] !!}
            {!! $buildEditButton($category['id']) !!}
            {!! $buildDeleteButton($category['id']) !!}
        </span>
        @isset($category['childs'])
            <ul class='nested-sortable'>
                @include('admin.category.child_category',['categories'=>$category['childs']])
            </ul>
        @endisset
        <ul class='nested-sortable'></ul>
    </li>
@endforeach
