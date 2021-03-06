<!-- Sidebar Menu -->
<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu"
        data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                    Starter Pages
                    <i class="right fas fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Active Page</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Inactive Page</p>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="{{ route('home') }}" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                    Dashboard
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('category_list') }}" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                <p>
                    Category
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('info_list') }}" class="nav-link">
                <i class="nav-icon fas fa-edit"></i>
                <p>
                    Info
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('config_list') }}" class="nav-link">
                <i class="nav-icon fas fa-tools"></i>
                <p>
                    Config
                    <span class="right badge badge-danger">New</span>
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('todo_list') }}" class="nav-link">
                <i class="nav-icon fas fa-tasks"></i>
                <p>
                    To Do list
                </p>
            </a>
        </li>

    </ul>
</nav>
<!-- /.sidebar-menu -->
@push('scripts')
    <script>
        $('#sidebar a[href="#"]').on('click',function (e){
            e.preventDefault();
            $(this).closest('li').toggleClass('menu-open');
            $(this).next('ul').slideToggle( 300, function() {
                // Animation complete.
            });
        });
        $('a[href="'+location.href+'"]').addClass('active');
    </script>
@endpush
