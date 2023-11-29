<?php

namespace App\Listeners;

use App\Events\CategoryAction;
use App\Events\InfoAction;
use App\Repositories\CategoryRepository;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ClearSideBarMenu implements ShouldQueue
{
    use InteractsWithQueue;

    private CategoryRepository $categoryRepository;

    public function __construct(CategoryRepository $repository)
    {
        $this->categoryRepository = $repository;
    }

    public function handle(CategoryAction|InfoAction $event): void
    {
        $this->categoryRepository->infoByCategoryCachedClear();
    }
}
