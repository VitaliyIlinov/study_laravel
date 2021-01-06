@extends('admin.layouts.app')

@section('title', 'Category list')

@section('content')
    <x-category :fields="$fields" :rows="$rows" crudAjax="true"/>
@endsection