<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{config('app.name')}} - @yield('title','')</title>
    <!-- Scripts -->
    <script src="{{ asset('js/front.js') }}"></script>
    <!-- Styles -->
    <link href="{{ asset('css/front.css') }}" rel="stylesheet">
</head>
<body>
<div class="wrapper d-flex align-items-stretch">
    @section('sidebar')
        <x-side-bar/>
    @show

    <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                        <i class="fa fa-bars"></i> <span class="sr-only">Toggle Menu</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Portfolio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                        <li class="nav-item">

                        </li>
                    </ul>
                </div>
                </div>
            </nav>
            <div id="main_content" class="position-relative">
                @yield('content',
                'https://colorlib.com/wp/bootstrap-sidebar/
                https://colorlib.com/etc/bootstrap-sidebar/sidebar-02/#'
                )
            </div>
            <div id="arrow-top" data-anchor="content">
                <a href="#content">
                    <i class="fas fa-lg fa-arrow-up"></i>
                </a>
            </div>

        </div>
</div>
</body>
<script>
    (function ($) {

        "use strict";

        var fullHeight = function () {

            $('.js-fullheight').css('height', $(window).height());
            $(window).resize(function () {
                $('.js-fullheight').css('height', $(window).height());
            });

        };
        fullHeight();

        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });

    })(jQuery);

</script>
</html>
