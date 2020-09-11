@extends('admin.layouts.app')

@section('title', 'Info edit')

@section('content')
    @include('helpers.form_wrap',['options'=>['form'=>'edit']])
@endsection
