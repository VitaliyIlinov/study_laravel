@foreach ($categories as $category)
    <li class='list-group-item' data-status={{$category['status']}} data-id={{$category['id']}}cat>
        <i role="button" class="fas fa-arrows-alt handle"></i>
        <i class="fas fa-folder"></i>
        <span data-name="name">{{$category['name']}}</span>
        <span class="badge badge-primary" data-name="updated_at">{{$category['updated_at']}}</span>
        <span class="badge">
         11
        </span>
        <ul class="nested-sortable">
            @isset($category['info'])
                @foreach($category['info'] as $info)
                    <li class="list-group-item" data-status={{$info['status']}} data-id={{$info['id']}}info>
                        <i role="button" class="fas fa-arrows-alt handle"></i>
                        <i class="fas fa-file"></i>
                        <a href=#>
                            {{$info['title']}}
                        </a>
                    </li>
                @endforeach
            @endisset

            @isset($category['childs'])
                @include('admin.info.childs',['categories'=>$category['childs']])
            @endisset
        </ul>
    </li>
@endforeach
