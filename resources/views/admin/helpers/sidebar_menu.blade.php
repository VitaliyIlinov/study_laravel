@foreach($menu as $item)
    <li class="nav-item @isset($item['childs']) has-treeview @endisset">
        <a href="{{$item['url']??'#'}}" class="nav-link">
            <i class="nav-icon {{$item['icon_class']}}"></i>
            <p>
                {{$item['trans']}}
                @isset($item['additional_text'])
                    {!! $item['additional_text'] !!}
                @endisset
                @isset($item['childs'])
                    <i class="right fas fa-angle-left"></i>
                @endisset

            </p>
        </a>
        @isset($item['childs'])
            <ul class="nav nav-treeview">
                @include('admin.helpers.sidebar_menu',['menu'=>$item['childs']])
            </ul>
        @endisset
    </li>
@endforeach
