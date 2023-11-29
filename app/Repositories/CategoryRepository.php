<?php

namespace App\Repositories;

use App\Models\Category;
use App\Models\Info;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Cache;

class CategoryRepository
{
    private const CACHE_KEY = 'front_menu';

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

    public function infoByCategoryCached()
    {
        return Cache::remember(self::CACHE_KEY, 3600, function () {
            return Category::active()->with([
                'info' => function (HasMany|Info $query) {
                    $query->select(['id', 'category_id', 'title', 'slug'])->active()->orderBy('sort');
                },
            ])->get()->keyBy('id');
        });
    }

    public function infoByCategoryCachedClear(): bool
    {
        return Cache::forget(self::CACHE_KEY);
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
