<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use App\Models\TodoList;
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

    protected const IS_CRUD_BY_AJAX = true;

    protected function fields(): array
    {
        return [
            'id'          => ['show_in_table' => true,'trans' => 'Id'],
            'description' => ['show_in_table' => true,'trans' => 'description', 'type' => 'text'],
            'status'      => ['show_in_table' => true,'trans' => 'status', 'type' => 'checkbox'],
            'updated_at'  => ['show_in_table' => true,'trans' => 'updated_at'],
        ];
    }

    public function index()
    {
        return $this->crudIndex(TodoList::all(),'Todo List');
    }

    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    public function show(TodoList $todoList, Request $request)
    {
        return $this->crudShow($todoList, $request);
    }

    public function store(Request $request)
    {
        return $this->crudUpdate($this->mergeStatus($request), new TodoList(), 'todo_list');
    }

    public function update(Request $request, TodoList $todoList)
    {
        return $this->crudUpdate($this->mergeStatus($request), $todoList, 'todo_list');
    }

    public function destroy(TodoList $todoList)
    {
        return $this->crudDelete($todoList);
    }
}
