<?php

namespace App\Providers;

use App\Repositories\Interfaces\SessionConfigsInterface;
use App\Repositories\SessionConfigs;
use Illuminate\Support\ServiceProvider;

class SessionConfigRepServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        $this->app->bind(
            SessionConfigsInterface::class,
            SessionConfigs::class
        );
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
