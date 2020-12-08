<?php

namespace App\View\Components;

class Category extends TableList
{
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
