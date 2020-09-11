@extends('admin.layouts.app')

@section('title', 'Category edit')

@section('content')
    @include('helpers.form_wrap',['options'=>['method'=>'post','action'=>'','form'=>'edit'])
@endsection
