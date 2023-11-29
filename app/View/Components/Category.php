<?php

namespace App\View\Components;

use App\Repositories\CategoryRepository;
use Illuminate\Database\Eloquent\Collection;

class Category extends TableList
{
    /**
     * @var CategoryRepository
     */
    private CategoryRepository $repository;

    public function __construct(CategoryRepository $repository, array $fields, Collection $rows)
    {
        $this->repository = $repository;
        parent::__construct($fields, $rows);
    }

    public function render()
    {
        return view('components.category');
    }

    public function getMenu(): array
    {
        return $this->repository->getSortTree($this->getRows());
    }
}
