<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCategory;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    use CrudService {
        CrudService::index as crudIndex;
        CrudService::show as crudShow;
        CrudService::create as crudCreate;
        CrudService::destroy as crudDelete;
        CrudService::update as crudUpdate;
        CrudService::store as crudStore;
    }

    protected const IS_CRUD_BY_AJAX = true;

    protected function fields(): array
    {
        return [
            'id'         => [
                'trans' => 'Id',
            ],
            'name'       => [
                'type'  => 'text',
                'trans' => 'name',
            ],
            'status'     => [
                'type'  => 'checkbox',
                'trans' => 'status',
            ],
            'updated_at' => [
                'trans' => 'updated_at',
            ],
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cat = Category::withCount(['info'])->get()->keyBy('id');
        return $this->crudIndex($cat, 'Category List', 'admin.category.list_sortable');
    }

    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    public function store(StoreCategory $request)
    {
        return $this->crudUpdate($this->mergeStatus($request), new Category(), 'category_list');
    }

    public function show(Category $category, Request $request)
    {
        return $this->crudShow($category, $request);
    }

    public function update(StoreCategory $request, Category $category)
    {
        return $this->crudUpdate($this->mergeStatus($request), $category, 'category_list');
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
                Category::findOrFail($id)->update([
                    'sort'      => $order,
                    'parent_id' => $parentId,
                ]);
            }
        }
        return response()->json('success');
    }

    public function destroy(Category $category)
    {
        if (0 === $count = $category->info->count()) {
            return $this->crudDelete($category);
        }
        return response()->json(['message' => "There are {$count} info rows. Please delete them first"], 400);
    }
}
