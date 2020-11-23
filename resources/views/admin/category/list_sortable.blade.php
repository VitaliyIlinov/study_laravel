@extends('admin.layouts.app')

@section('title', 'Category list')

@section('content')
    <x-category :rows="$rows"/>
@endsection
