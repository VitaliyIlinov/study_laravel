@extends('front.layouts.app')

@section('title', 'Info Create')

@section('content')
    <h1>{!! $result->title !!}</h1>
    <div>
        {!! $result->text !!}
    </div>
@endsection
