<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{config('app.name')}} - @yield('title',''))</title>
    <!-- Scripts -->
    <script src="{{ asset('js/front.js') }}"></script>
    <!-- Styles -->
    <link href="{{ asset('css/front.css') }}" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <a href="/" class="d-inline-block" style="width: 100px;">
        <img class="img-fluid w-100 p-2" src="/logo.png" alt="Main page">
    </a>
</div>
<div class="container-fluid">
    <div class="row">
        @section('sidebar')
            <x-side-bar/>
        @show

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
            @yield('content')
        </main>
        @stack('scripts')
    </div>
</div>
</body>
</html>
