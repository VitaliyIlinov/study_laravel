<?php

namespace App\Observers;

use App\Models\Category;
use App\Repositories\CategoryRepository;

class CategoryCacheObserver
{
    private $categoryRepository;

    public function __construct(CategoryRepository $repository)
    {
        $this->categoryRepository = $repository;
    }


    /**
     * Handle the category "created" event.
     *
     * @param \App\Models\Category $category
     * @return void
     */
    public function created(Category $category)
    {
        $this->forget();
    }

    /**
     * Handle the category "updated" event.
     *
     * @param \App\Models\Category $category
     * @return void
     */
    public function updated(Category $category)
    {
        $this->forget();
    }

    /**
     * Handle the category "deleted" event.
     *
     * @param \App\Models\Category $category
     * @return void
     */
    public function deleted(Category $category)
    {
        $this->forget();
    }

    private function forget()
    {
        $this->categoryRepository->infoByCategoryCachedClear();
    }
}
