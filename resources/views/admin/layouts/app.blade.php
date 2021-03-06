<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{config('app.name')}} - @yield('title','')</title>
    <!-- Styles -->
    <link href="{{ asset('css/admin.css') }}" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        @section('sidebar')
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="sidebar-sticky pt-3">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="{{ route('home') }}">
                                <span data-feather="home"></span> Dashboard <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('category_list') }}">
                                <span data-feather="file"></span> Category
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('info_list') }}">
                                <span data-feather="shopping-cart"></span> Info
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('config_list') }}">
                                <span data-feather="shopping-cart"></span> Config
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('todo_list') }}">
                                <span data-feather="shopping-cart"></span> To Do list
                            </a>
                        </li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Saved reports</span>
                        <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
                            <span data-feather="plus-circle"></span>
                        </a>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span> Current month
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span> Last quarter
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span> Social engagement
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span> Year-end sale
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        @show

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
            <x-message isToastr=1 :errors="$errors"/>
            @yield('content')
        </main>
    </div>
</div>
<!-- Scripts -->
<script src="{{ asset('js/admin.js') }}"></script>
<script src="/ckeditor5/build/ckeditor.js"></script>
@stack('scripts')
</body>
</html>
