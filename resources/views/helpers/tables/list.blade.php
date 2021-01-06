@extends('admin.layouts.app')

@section('title', $title ??' Table List')

@section('content')
    <x-table-list :fields="$fields" :rows="$rows" :crudAjax="$crudAjax??0"/>
@endsection