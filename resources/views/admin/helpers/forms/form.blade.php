@extends('admin.layouts.admin-lte')

@section('title', $title?? 'Edit')

@section('content')
    <x-form :fields="$fields" :options="$options??[]" :row="$row??null"/>
@endsection
