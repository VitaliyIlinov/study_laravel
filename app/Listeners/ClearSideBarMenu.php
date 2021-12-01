<?php

namespace App\Listeners;

use App\Events\CategoryAction;
use App\Events\InfoAction;
use App\Repositories\CategoryRepository;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ClearSideBarMenu
{
    private $categoryRepository;

    public function __construct(CategoryRepository $repository)
    {
        $this->categoryRepository = $repository;
    }

    /**
     * Handle the event.
     *
     * @param  CategoryAction|InfoAction  $event
     * @return void
     */
    public function handle($event)
    {
        $this->categoryRepository->infoByCategoryCachedClear();
    }
}
