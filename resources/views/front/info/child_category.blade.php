@foreach ($categories as $category)
    <li>
        <a href="#" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">{{$category['name']}}</a>
        <ul class="list-unstyled collapse">
            @isset($category['info'])
                @foreach($category['info'] as $info)
                    <li>
                        <a href={{action([\App\Http\Controllers\Front\InfoController::class, 'show'], ['info' => $info['slug']??$info['id']])}}>
                            {{$info['title']}}
                        </a>
                    </li>
                @endforeach
            @endisset

            @isset($category['childs'])
                @include('front.info.child_category',['categories'=>$category['childs']])
            @endisset
        </ul>
    </li>
@endforeach
