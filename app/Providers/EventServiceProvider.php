<?php

namespace App\Providers;

use App\Events\CategoryAction;
use App\Events\FileUploaded;
use App\Events\InfoAction;
use App\Listeners\ClearSideBarMenu;
use App\Listeners\SaveFileModel;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        FileUploaded::class => [
            SaveFileModel::class,
        ],
        CategoryAction::class => [
            ClearSideBarMenu::class,
        ],
        InfoAction::class => [
            ClearSideBarMenu::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        //
    }
}
