@extends('admin.layouts.app')

@section('title', 'Category Create')

@section('content')
    @include('helpers.form_wrap',['options'=>['form'=>'create']])
@endsection
