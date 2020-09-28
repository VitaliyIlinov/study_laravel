@extends('admin.layouts.app')

@section('title', 'Config Create')

@section('content')
    @include('helpers.form_wrap',['options'=>['form'=>'create']])
@endsection
