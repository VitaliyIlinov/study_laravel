<?php

namespace App\Providers;

use App\Helpers\EnvHelper;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if (EnvHelper::isDev()) {
            URL::forceScheme('https');
        }
    }
}
