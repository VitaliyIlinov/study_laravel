@extends('front.layouts.app')

@section('title', $model->title)

@section('content')
    @include('front.info.show_ajax')
@endsection
