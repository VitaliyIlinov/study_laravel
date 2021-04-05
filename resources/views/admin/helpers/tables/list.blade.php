@extends('admin.layouts.admin-lte')

@section('title', $title ??' Table List')

@section('content')
    @include('admin.helpers.tables.list_ajax')
@endsection
