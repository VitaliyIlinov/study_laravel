<?php

namespace App\View\Components;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;

class Category extends Component
{
    /**
     * @var array
     */
    public $rows;

    /**
     * @var string|null
     */
    private $currentPrefix;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(Collection $rows)
    {
        $this->rows = $rows;
        $this->currentPrefix = Route::current()->getPrefix();
    }

    public function getLink(...$args)
    {
        $args = implode(DIRECTORY_SEPARATOR, $args);
        return DIRECTORY_SEPARATOR . $this->currentPrefix . DIRECTORY_SEPARATOR . $args;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.category');
    }

    public function tree($dataset)
    {
        $tree = $this->getTree($dataset);

        $this->sort($tree);

        return $tree;
    }

    private function getTree($dataset): array
    {
        $tree = [];

        $dataset = $dataset->toArray();
        foreach ($dataset as $id => &$node) {
            if (!$node['parent_id']) {
                $tree[$id] = &$node;
            } else {
                $dataset[$node['parent_id']]['childs'][$id] = &$node;
                $this->sort($dataset[$node['parent_id']]['childs']);
            }
        }
        return $tree;
    }

    public function sort(&$tree)
    {
        uasort($tree, function ($a, $b) {
            if ($a['sort'] == $b['sort']) {
                return 0;
            }
            return ($a['sort'] < $b['sort']) ? -1 : 1;
        });
    }

}
