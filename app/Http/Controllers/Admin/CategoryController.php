<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCategory;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $rows = Category::all()->keyBy('id');
        $fields = [
            'id'          => ['trans' => 'Id'],
            'name'        => ['trans' => 'name'],
            'parent_id'   => ['trans' => 'parent_id'],
            'parent_name' => [
                'trans'    => 'parent_name',
                'callback' => function (Category $category) use ($rows) {
                    return $rows[$category->parent_id]->name ?? 'no';
                },
            ],
            'status'      => ['trans' => 'status'],
            'updated_at'  => ['trans' => 'updated_at'],
        ];

        return view('admin.category.list', [
            'fields' => $fields,
            'rows'   => $rows,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return mixed
     */
    public function create()
    {
        return view('admin.category.create', [
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreCategory $request
     * @return mixed
     */
    public function store(StoreCategory $request)
    {
        $info = new Category();
        $info->fill($this->mergeStatus($request))->save();
        return back()->with('success', 'Category was updated');
    }

    /**
     * Display the specified resource.
     *
     * @param Category $category
     * @return mixed
     */
    public function show(Category $category)
    {
        return view('admin.info.edit', [
            'row'    => $category,
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param StoreCategory $request
     * @param Category      $category
     * @return mixed
     */
    public function update(StoreCategory $request, Category $category)
    {
        $category->fill($this->mergeStatus($request))->save();
        return back()->with('success', 'Category was updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Category $category
     * @param Request  $request
     * @return mixed
     */
    public function destroy(Category $category, Request $request)
    {
        if (0 === $count = $category->info->count()) {
            $category->delete();
            return response()->json('success');
        }
        return response()->json(['message' => "There are {$count} info rows. Please delete them first"], 400);
    }

    /**
     * @return array
     */
    private function getFields(): array
    {
        return $fields = [
            'name'      => ['type' => 'text'],
            'parent_id' => ['type' => 'option', 'values' => Category::all()->pluck('name', 'id')],
            'status'    => ['type' => 'checkbox'],
        ];
    }

    private function mergeStatus(Request $request)
    {
        return $request->all() + ['status' => 0];
    }
}
