<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInfo;
use App\Models\Category;
use App\Models\Info;
use App\Repositories\CategoryRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class InfoController extends Controller
{
    /**
     * @var CategoryRepository
     */
    private $repository;

    public function __construct(CategoryRepository $categoryRepository)
    {
        $this->repository = $categoryRepository;
    }

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
            'status'        => [
                'show_in_table' => false,
                'type'          => 'checkbox',
                'trans'         => 'status',
            ],
            'category_id'   => [
                'show_in_table' => false,
                'type'          => 'option',
                'values'        => function () {
                    return $this->repository->getCategoryForHtmlOption();
                },
                'trans'         => 'Category ID',
            ],
            'title'         => [
                'show_in_table'     => true,
                'show_table_filter' => true,
                'type'              => 'text',
                'trans'             => 'Title',
            ],
            'slug'         => [
                'show_in_table'     => false,
                'show_table_filter' => true,
                'type'              => 'text',
                'trans'             => 'slug',
            ],
            'text'          => [
                'show_in_table'     => false,
                'show_table_filter' => 'input',
                'trans'             => 'Text',
                'type'              => 'textarea',
                'callback'          => function (Info $info) {
                    return $this->textFormatter($info->text);
                },
            ],
            'category_name' => [
                'show_in_table'     => true,
                'show_table_filter' => 'select',
                'trans'             => 'Category name',
                'callback'          => function (Info $info) {
                    static $category;
                    $category = $category ?? Category::all()->keyBy('id');
                    return $category[$info->category_id]->name;
                },
            ],
            'sort'          => [
                'show_in_table' => true,
                'type'          => 'number',
            ],
            'updated_at'    => [
                'show_in_table' => true,
                'trans'         => 'updated_at',
                'callback'      => function (Info $info) {
                    return $info->updated_at->format('Y-m-d H:i');
                },
            ],
        ];
    }

    public function index()
    {
        return $this->crudIndex(
            Info::orderBy('category_id')->orderBy('sort')->get()->keyBy('id'),
            'Info List'
        );
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
        return Str::limit($text, 150);
    }
}
