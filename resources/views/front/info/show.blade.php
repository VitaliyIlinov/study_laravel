@extends('front.layouts.app')

@section('title', 'Info Create')

@section('content')
    <h1 class="text-center my-3">{!! $result->title !!}</h1>
    <div class="text-secondary p-3">
        {!! $result->text !!}
    </div>
    <script>hljs.initHighlightingOnLoad();</script>
@endsection
