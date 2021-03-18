<?php

namespace App\View\Components;

use App\Repositories\CategoryRepository;
use Illuminate\Database\Eloquent\Collection;

class Category extends TableList
{
    /**
     * @var CategoryRepository
     */
    private $repository;

    public function __construct(CategoryRepository $repository, array $fields, Collection $rows, bool $crudAjax = false)
    {
        $this->repository = $repository;
        parent::__construct($fields, $rows, $crudAjax);
    }

    public function render()
    {
        return view('components.category');
    }

    public function getMenu()
    {
        return $this->repository->getSortTree($this->getRows());
    }
}
