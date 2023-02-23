<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Http\Requests\TodoRequest;
use App\Models\TodoList;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class TodoListController extends Controller
{
    use CrudService {
        CrudService::index as crudIndex;
        CrudService::show as crudShow;
        CrudService::create as crudCreate;
        CrudService::destroy as crudDelete;
        CrudService::update as crudUpdate;
        CrudService::store as crudStore;
    }

    protected function fields(): array
    {
        return [
            'id'          => [
                'trans' => 'Id',
            ],
            'description' => [
                'trans' => 'description',
                'type'  => 'textarea',
            ],
            'label'       => [
                'trans' => 'label',
                'type'  => 'text',
            ],
            'status'      => [
                'trans' => 'status',
                'type'  => 'checkbox',
            ],
            'sort'        => [
                'trans' => 'sort',
                'type'  => 'text',
            ],
            'updated_at'  => [
                'trans' => 'updated_at',
            ],
        ];
    }

    public function index()
    {
        return $this->crudIndex(TodoList::all()->sortBy('sort'), 'Todo List', 'admin.todo.todo');
    }

    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    public function show(TodoList $todoList, Request $request)
    {
        return $this->crudShow($todoList, $request);
    }

    public function store(TodoRequest $request, TodoList $todoList)
    {
        return $this->crudStore($request, $todoList);
    }

    public function update(TodoRequest $request, TodoList $todoList)
    {
        return $this->crudUpdate($request, $todoList);
    }

    public function destroy(TodoList $todoList): JsonResponse
    {
        return $this->crudDelete($todoList);
    }

    public function ajaxUpdateSort(Request $request): JsonResponse
    {
        $lists = explode('|', $request->get('list'));
        $i = 0;
        foreach ($lists as $id) {
            TodoList::findOrFail($id)->update(['sort' => ++$i]);
        }
        return response()->json('success');
    }

    public function changeStatus(TodoList $todoList, Request $request): JsonResponse
    {
        $todoList->status = $request->get('status');
        $todoList->save();
        return response()->json('success');
    }
}
