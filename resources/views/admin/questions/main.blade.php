@extends('admin.layouts.admin-lte')

@section('title', $title??'Question')

@section('content')
    @include('admin.questions.main_ajax')
@endsection

