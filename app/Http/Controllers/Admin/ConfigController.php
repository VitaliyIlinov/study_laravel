<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Config;
use Illuminate\Http\Request;

class ConfigController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return mixed
     */
    public function index()
    {
        $rows = Config::all()->keyBy('id');
        $fields = [
            'id'          => ['trans' => 'Id'],
            'name'        => ['trans' => 'name'],
            'value'       => ['trans' => 'value'],
            'description' => ['trans' => 'description'],
            'updated_at'  => ['trans' => 'updated_at'],
            'created_at'  => ['trans' => 'updated_at'],
        ];

        return view('admin.config.list', [
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
        return view('admin.config.create', [
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return mixed
     */
    public function store(Request $request)
    {
        $info = new Config();
        $info->fill($request->all())->save();
        return back()->with('success', 'Config was updated');
    }

    /**
     * Display the specified resource.
     *
     * @param Config $config
     * @return mixed
     */
    public function show(Config $config)
    {
        return view('admin.config.edit', [
            'row'    => $config,
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Config  $config
     * @return mixed
     */
    public function update(Request $request, Config $config)
    {
        $config->fill($request->all())->save();
        return back()->with('success', 'Config was updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Config $config
     * @return mixed
     */
    public function destroy(Config $config)
    {
        $config->delete();
        return response('success');
    }

    /**
     * @return array
     */
    private function getFields(): array
    {
        return $fields = [
            'name'        => ['type' => 'text'],
            'value'       => ['type' => 'text'],
            'description' => ['type' => 'text'],
        ];
    }
}
