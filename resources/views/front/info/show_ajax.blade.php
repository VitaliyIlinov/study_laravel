<div data-render="content" id="info_content">
    <a class="nav-link" style="position: absolute;top: -30px;right: 0" target="_blank"
       href="{{route('admin.info.show',['info' => $model->id])}}">
        <i class="fas fa-edit"></i>
    </a>
    <h1 class="mb-4">{!! $model->title !!}</h1>
    <div class="info">
        {!! $model->text !!}
    </div>
    <script>hljs.highlightAll();</script>
</div>

