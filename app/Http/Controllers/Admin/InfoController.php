<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInfo;
use App\Models\Category;
use App\Models\Info;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class InfoController extends Controller
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

    /**
     * @return array
     */
    protected function fields(): array
    {
        $category = Category::all()->keyBy('id');
        return [
            'id'            => ['show_in_table' => true, 'trans' => 'Id'],
            'title'         => ['show_in_table' => true, 'type' => 'text', 'trans' => 'Title'],
            'text'          => [
                'show_in_table' => true,
                'trans'         => 'Text',
                'type'          => 'textarea',
                'callback'      => function (Info $info) use ($category) {
                    return Str::limit($info->text, 200);
                },
            ],
            'category_id'   => [
                'show_in_table' => false,
                'type'          => 'option',
                'values'        => Category::all()->pluck('name', 'id'),
                'trans'         => 'Category ID',
            ],
            'category_name' => [
                'trans'    => 'Category name',
                'callback' => function (Info $info) use ($category) {
                    return $category[$info->category_id]->name;
                },
            ],
            'status'        => ['show_in_table' => true, 'type' => 'checkbox', 'trans' => 'status'],
            'sort'          => ['show_in_table' => false, 'type' => 'number'],
            'updated_at'    => ['show_in_table' => true,'trans' => 'updated_at'],
        ];
    }

    public function index()
    {
        return $this->crudIndex(Info::all()->keyBy('id'));
    }

    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    public function store(StoreInfo $request)
    {
        return $this->crudUpdate($this->mergeStatus($request), new Info(), 'info_list');
    }

    public function show(Info $info, Request $request)
    {
        return $this->crudShow($info, $request);
    }

    public function update(StoreInfo $request, Info $info)
    {
        return $this->crudUpdate($this->mergeStatus($request), $info, 'info_list');
    }

    public function destroy(Info $info)
    {
        return $this->crudDelete($info);
    }
}
