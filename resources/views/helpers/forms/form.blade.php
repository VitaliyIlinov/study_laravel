@extends('admin.layouts.app')

@section('title', $title?? 'Edit')

@section('content')
    <x-form :fields="$fields" :options="$options??[]" :row="$row??null"/>
@endsection
