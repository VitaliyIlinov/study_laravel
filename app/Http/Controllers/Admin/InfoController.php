<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInfo;
use App\Models\Category;
use App\Models\Info;
use Illuminate\Database\Eloquent\Relations\HasMany;
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
        return [
            'id'            => [
                'show_in_table' => true,
                'trans'         => 'Id',
            ],
            'title'         => [
                'show_in_table' => true,
                'type'          => 'text',
                'trans'         => 'Title',
            ],
            'text'          => [
                'show_in_table' => true,
                'trans'         => 'Text',
                'type'          => 'textarea',
                'callback'      => function (Info $info) {
                    return $this->textFormatter($info->text);
                },
            ],
            'category_id'   => [
                'show_in_table' => false,
                'type'          => 'option',
                'values'        => function () {
                    return Category::all()->pluck('name', 'id');
                },
                'trans'         => 'Category ID',
            ],
            'category_name' => [
                'show_in_table' => true,
                'trans'         => 'Category name',
                'callback'      => function (Info $info) {
                    static $category;
                    $category = $category ?? Category::all()->keyBy('id');
                    return $category[$info->category_id]->name;
                },
            ],
            'status'        => [
                'show_in_table' => true,
                'type'          => 'checkbox',
                'trans'         => 'status',
            ],
            'sort'          => [
                'show_in_table' => false,
                'type'          => 'number',
            ],
            'updated_at'    => [
                'show_in_table' => true,
                'trans'         => 'updated_at',
                'callback'      => function (Info $info) {
                    return $this->textFormatter($info->updated_at->format('Y-m-d H:i'));
                },
            ],
        ];
    }

    public function index()
    {
        $data = Category::with([
            'info' => function (HasMany $query) {
                $query->select([
                    'id',
                    'category_id',
                    'status',
                    'sort',
                    'title',
                    'updated_at',
                ])->orderBy('sort');
            },
        ])->orderBy('sort')->get()->keyBy('id')->toArray();
        $tree = $this->getTree($data);
        return view('admin.info.list', ['data' => $tree]);

        return $this->crudIndex(Info::all()->keyBy('id'), 'Info List');
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
        foreach ($categories as $categoryId => $info) {
            $infos = explode('|', $info);
            foreach ($infos as $order => $id) {
                if (strpos($id,'info') !== false) {
                    Info::findOrFail(substr($id, 0, -4))->update([
                        'sort'      => $order,
                        'category_id' => substr($categoryId, 0, -3),
                    ]);
                }
                if (strpos($id,'cat') !== false) {
                    Category::findOrFail(substr($id, 0, -3))->update([
                        'sort'      => $order,
                        'category_id' => substr($categoryId, 0, -3),
                    ]);
                }
            }
        }
        return response()->json('success');
    }

    private function getTree($dataset)
    {
        $tree = [];

        foreach ($dataset as $id => &$node) {
            if (!$node['parent_id']) {
                $tree[$id] = &$node;
            } else {
                $dataset[$node['parent_id']]['childs'][$id] = &$node;
            }
        }
        return $tree;
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

    private function textFormatter(string $text): string
    {
        return Str::limit($text, 200);
    }
}
