<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInfo;
use App\Models\Category;
use App\Models\Info;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class InfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return mixed
     */
    public function index()
    {
        $rows = Info::all()->keyBy('id');
        $category = Category::all()->keyBy('id');
        $fields = [
            'id'            => ['trans' => 'Id'],
            'title'         => ['trans' => 'Title'],
            'text'          => [
                'trans'    => 'Text',
                'callback' => function (Info $info) use ($category) {
                    return Str::limit($info->text, 200);
                },
            ],
            'category_id'   => [
                'trans'    => 'Category ID',
            ],
            'category_name'   => [
                'trans'    => 'Category name',
                'callback' => function (Info $info) use ($category) {
                    return $category[$info->category_id]->name;
                },
            ],
            'status'        => ['trans' => 'status'],
            'updated_at'    => ['trans' => 'updated_at'],
        ];

        return view('admin.info.list', [
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
        return view('admin.info.create', [
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreInfo $request
     * @return mixed
     */
    public function store(StoreInfo $request)
    {
        $info = new Info();
        $info->fill($this->mergeStatus($request))->save();
        return back()->with('success', 'Info was updated');
    }

    /**
     * Display the specified resource.
     *
     * @param Info    $info
     * @param Request $request
     * @return mixed
     */
    public function show(Info $info, Request $request)
    {
        return view('admin.info.edit', [
            'row'    => $info,
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param StoreInfo $request
     * @param Info      $info
     * @return mixed
     */
    public function update(StoreInfo $request, Info $info)
    {
        $info->fill($this->mergeStatus($request))->save();
        return back()->with('success', 'Info was updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Info    $info
     * @param Request $request
     * @return mixed
     */
    public function destroy(Info $info, Request $request)
    {
        $info->delete();
        if ($request->ajax()) {
            return response()->json('success');
        }
        return response('success');
    }

    /**
     * @return array
     */
    private function getFields(): array
    {
        return $fields = [
            'title'       => ['type' => 'text'],
            'category_id' => ['type' => 'option', 'values' => Category::all()->pluck('name', 'id')],
            'status'      => ['type' => 'checkbox'],
            'text'        => ['type' => 'textarea'],
        ];
    }

    private function mergeStatus(Request $request)
    {
        return $request->all() + ['status' => 0];
    }
}
