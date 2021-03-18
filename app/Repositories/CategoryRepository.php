<?php

namespace App\Repositories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Collection;

class CategoryRepository
{
    public function getTree(Collection $dataset): array
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

    public function getCategoryForHtmlOption(): array
    {
        $tree = $this->getSortTree($this->getCategory());

        return $this->getOptionForSelect($tree);
    }

    public function getSortTree(Collection $dataset): array
    {
        $tree = $this->getTree($dataset);

        $this->sort($tree);

        return $tree;
    }

    private function sort(&$tree): void
    {
        uasort($tree, function ($a, $b) {
            if ($a['sort'] == $b['sort']) {
                return 0;
            }
            return ($a['sort'] < $b['sort']) ? -1 : 1;
        });
    }

    private function getOptionForSelect(array $tree, $level = 0): array
    {
        static $result = [];
        foreach ($tree as $id => $item) {
            $result[$id] = str_repeat("&nbsp;", $level * 6) . $item['name'];
            if (isset($item['childs'])) {
                $this->getOptionForSelect($item['childs'], $level + 1);
            }
        }

        return $result;
    }

    private function getCategory(): Collection
    {
        return Category::all()->keyBy('id');
    }
}
