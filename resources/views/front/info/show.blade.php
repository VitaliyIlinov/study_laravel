@extends('front.layouts.app')

@section('title', $model->title)

@section('content')
    <h2 class="mb-4">{!! $model->title !!}</h2>
    <div>
        {!! $model->text !!}
    </div>
    <script>hljs.initHighlightingOnLoad();</script>
@endsection
