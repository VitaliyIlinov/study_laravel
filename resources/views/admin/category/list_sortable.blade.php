@extends('admin.layouts.admin-lte')

@section('title', 'Category list')

@section('content')
    @include('admin.category.list_sortable_ajax')
@endsection
