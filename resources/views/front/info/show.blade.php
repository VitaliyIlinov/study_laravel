@extends('front.layouts.app')

@section('title', 'Info Create')

@section('content')
    <h2 class="mb-4">{!! $result->title !!}</h2>
    <div>
        {!! $result->text !!}
    </div>
    <script>hljs.initHighlightingOnLoad();</script>
@endsection
