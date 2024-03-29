<?php

namespace App\Providers;

use App\Http\Views\Composers\AdminMenuSideBarComposer;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('admin.helpers.sidebar_menu', AdminMenuSideBarComposer::class);
    }
}
