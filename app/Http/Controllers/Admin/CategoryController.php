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

        return view('admin.category', [
            'fields' => $fields,
            'rows'   => $rows,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param Category $category
     * @return mixed
     */
    public function show(Category $category)
    {
        $fields = [
            'name'      => ['type' => 'text'],
            'parent_id' => ['type' => 'option', 'values' => Category::all()->pluck('name', 'id')],
            'status'    => ['type' => 'checkbox'],
        ];
        return view('admin.show', [
            'row'    => $category,
            'fields' => $fields,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param StoreCategory        $request
     * @param \App\Models\Category $category
     * @return mixed
     */
    public function update(StoreCategory $request, Category $category)
    {
         $category->fill($request->all())->save();
         return back()->with('success', 'Category was updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}
