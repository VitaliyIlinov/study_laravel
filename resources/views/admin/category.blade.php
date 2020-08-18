@extends('layouts.app')

@section('title', 'Category List')

@section('content')
        <h2>Edit List</h2>
        @include('admin.table_list',['prefix'=>Route::current()->getPrefix()])
@endsection
