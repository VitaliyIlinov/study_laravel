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
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
//        DB::listen(function ($query) {
//            dump($query->sql);
//            dump($query->bindings);
//            dump($query->time);
//        });
//        Cache::forget('key');
        Storage::disk('local')->put('file.txt', 'Contents');
        $sidebar = Cache::remember('key', 2, function () {
            $data = Category::with([
                'info' => function (HasMany $query) {
                    $query->select(['id', 'category_id', 'title'])->active();
                },
            ])->has('info')->active()->get()->keyBy('id')->toArray();

            $tree = $this->getTree($data);
            return $this->renderSidebar($tree);
        });
        return view('components.side-bar')->with('sidebar', $sidebar);
    }

    public function renderSidebar($data, $level = 0)
    {
        static $menu;
        foreach ($data as $item) {
            $menu[] = "<li>";
            $menu[] = "<a href=#>{$item['name']} <i class='fas fa-chevron-down'></i></a>";
            $menu[] = "<ul>";
            foreach ($item['info'] as $value) {
                $menu[] = "<li><a href='/info/{$value['id']}'>{$value['title']}</a></li>";
            }
            if (count($item['childs']) > 0) {
                $this->renderSidebar($item['childs'], $level + 1);
            }
            $menu[] = "</li>";
            $menu[] = "</ul>";
        }

        return implode(PHP_EOL, $menu);
    }

    public function getTree($dataset)
    {
        $tree = [];

        foreach ($dataset as $id => &$node) {
            //Если нет вложений
            $node['childs'] = [];
            if (!$node['parent_id']) {

                $tree[$id] = &$node;
            } else {
                //Если есть потомки то перебераем массив
                $dataset[$node['parent_id']]['childs'][$id] = &$node;
            }
        }
        return $tree;
    }

    private function sidebarReturnExample($data, $level = 0)
    {
        $menu = [];
        foreach ($data as $item) {
            $menu[] = "<li>{$item['name']}";
            if (count($item['childs']) > 0) {
                $menu[] = "<ul>{$this->sidebarReturnExample($item['childs'], $level + 1)}</ul>";
            }
            $menu[] = "</li>";
        }
        return implode(PHP_EOL, $menu);
    }
}
