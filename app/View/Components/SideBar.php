<?php

namespace App\View\Components;

use App\Models\Category;
use App\Repositories\CategoryRepository;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Cache;
use Illuminate\View\Component;

class SideBar extends Component
{
    /**
     * @var CategoryRepository
     */
    private $repository;

    public function __construct(CategoryRepository $repository)
    {
        $this->repository = $repository;
    }

    public function render()
    {
        return view('components.side-bar');
    }

    public function getMenu()
    {
        return $this->repository->getSortTree($this->getRows());
    }

    private function getRows()
    {
        return $this->repository->infoByCategoryCached();
    }
}
