<?php

namespace App\View\Components;

use App\Models\Category;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\Component;

class SideBar extends Component
{
    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.side-bar');
    }

    public function menu()
    {
//        DB::listen(function ($query) {
//            dump($query->sql);
//            dump($query->bindings);
//            dump($query->time);
//        });

        $sidebar = Cache::remember('key', 2, function () {
            $data = Category::with([
                'info' => function (HasMany $query) {
                    $query->select(['id', 'category_id', 'title'])->active();
                },
            ])->active()->get()->keyBy('id')->toArray();

            $tree = $this->getTree($data);
            $this->sort($tree);
            return $tree;
        });

        return $sidebar;
    }

    public function tree($dataset)
    {
        $tree = $this->getTree($dataset);

//        $this->sort($tree);

        return $tree;
    }

    private function getTree($dataset)
    {
        $tree = [];

        foreach ($dataset as $id => &$node) {
            if (!$node['parent_id']) {
                $tree[$id] = &$node;
            } else {
                $dataset[$node['parent_id']]['childs'][$id] = &$node;
//                $this->sort($dataset[$node['parent_id']]['childs']);
            }
        }
        return $tree;
    }

    private function sort(&$tree)
    {
        uasort($tree, function ($a, $b) {
            if ($a['sort'] == $b['sort']) {
                return 0;
            }
            return ($a['sort'] < $b['sort']) ? -1 : 1;
        });
    }
}
