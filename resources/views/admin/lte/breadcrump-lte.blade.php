<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item">
        <a href="{{route('admin.home')}}">Home</a>
    </li>
    <li class="breadcrumb-item active">{{ucwords(\Request::segments()[1] ??'Home')}}</li>
</ol>
