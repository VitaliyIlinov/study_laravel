@extends('admin.layouts.admin-lte')

@section('title', $title)

@section('content')
  @include('admin.todo.todo_ajax')
@endsection

