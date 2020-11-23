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

//        return view('admin.category.list', [
        return view('admin.category.list_sortable', [
            'fields' => $fields,
            'rows'   => $rows,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return mixed
     * @throws \Throwable
     */
    public function create(Request $request)
    {
        $response = [
            'fields' => $this->getFields(),
        ];

        if ($request->ajax()) {
            return response()->json(['form' => view('helpers.form_wrap', $response)->render()]);
        }

        return view('admin.category.create', $response);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreCategory $request
     * @return mixed
     */
    public function store(StoreCategory $request)
    {
        $category = new Category();
        $result = $category->fill($this->mergeStatus($request))->save();
        if ($request->ajax()) {
            return response()->json($result);
        }
        return back()->with('success', 'Category was updated');
    }

    /**
     * Display the specified resource.
     *
     * @param Category $category
     * @param Request  $request
     * @return mixed
     */
    public function show(Category $category, Request $request)
    {
        if ($request->ajax()) {
            return response()->json(['form' => view('helpers.form_wrap', [
                'row'    => $category,
                'fields' => $this->getFields(['status','name']),
            ])->render()]);
        }
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
        $result = $category->fill($this->mergeStatus($request))->save();
        if ($request->ajax()) {
            return response()->json($result);
        }
        return back()->with('success', 'Category was updated');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @return mixed
     */
    public function ajaxUpdateSort(Request $request)
    {
        $categories = array_filter($request->get('list'));
        foreach ($categories as $parentId => $category) {
            $childCategory = explode('|', $category);
            foreach ($childCategory as $order => $id) {
                Category::findOrFail($id)->update(['sort' => $order, 'parent_id' => $parentId]);
            }
        }
        return response()->json('success');
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
            return response()->json(['message'=>'success','function' =>'']);
        }
        return response()->json(['message' => "There are {$count} info rows. Please delete them first"], 400);
    }

    /**
     * @param array $allowedFields
     * @return array
     */
    private function getFields(array $allowedFields = []): array
    {
        $fields = [
            'name'      => ['type' => 'text'],
            'parent_id' => ['type' => 'option', 'values' => Category::all()->pluck('name', 'id')->prepend('Main', 0)],
            'status'    => ['type' => 'checkbox'],
            'sort'      => ['type' => 'number'],
        ];

        if(!empty($allowedFields)){
            $fields = array_filter($fields, function($k) use($allowedFields) {
                return in_array($k, $allowedFields);
            }, ARRAY_FILTER_USE_KEY);
        }

        return $fields;
    }

    private function mergeStatus(Request $request)
    {
        return $request->all() + ['status' => 0];
    }
}
