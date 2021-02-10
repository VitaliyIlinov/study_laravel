<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Models\Config;
use Illuminate\Http\Request;

class ConfigController extends Controller
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
            'id'          => [
                'show_in_table' => true,
                'trans'         => 'Id',
            ],
            'name'        => [
                'show_in_table' => true,
                'type'          => 'text',
                'trans'         => 'name',
            ],
            'value'       => [
                'show_in_table' => true,
                'type'          => 'text',
                'trans'         => 'value',
            ],
            'description' => [
                'show_in_table' => true,
                'type'          => 'text',
                'trans'         => 'description',
            ],
            'updated_at'  => [
                'show_in_table' => true,
                'trans'         => 'updated_at',
            ],
            'created_at'  => ['trans' => 'updated_at'],
        ];
    }

    public function index()
    {
        return $this->crudIndex(Config::all()->keyBy('id'), 'Config List');
    }

    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    public function store(Request $request)
    {
        return $this->crudUpdate($request, new Config(), 'config_list');
    }

    public function show(Config $config, Request $request)
    {
        return $this->crudShow($config, $request);
    }

    public function update(Request $request, Config $config)
    {
        return $this->crudUpdate($request, $config, 'config_list');
    }

    public function destroy(Config $config)
    {
        return $this->crudDelete($config);
    }
}
