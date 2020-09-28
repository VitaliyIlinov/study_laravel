@extends('admin.layouts.app')

@section('title', 'Config edit')

@section('content')
    @include('helpers.form_wrap',['options'=>['form'=>'edit']])
@endsection
