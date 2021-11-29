<?php

namespace App\Providers;

use App\Models\Category;
use App\Observers\CategoryCacheObserver;
use Illuminate\Support\ServiceProvider;

class Observers extends ServiceProvider
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
        Category::observe(CategoryCacheObserver::class);
    }
}
