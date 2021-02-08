@extends('front.layouts.app')

@section('title', $result->title)

@section('content')
    <h2 class="mb-4">{!! $result->title !!}</h2>
    <div>
        {!! $result->text !!}
    </div>
    <script>hljs.initHighlightingOnLoad();</script>
@endsection
