<?php

namespace App\Http\Controllers\Admin\Traits;

use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\View\View;
use Throwable;

trait CrudService
{
    /**
     * Display a listing of the resource.
     *
     * @param Collection $rows
     * @return Application|Factory|View
     */
    public function index(Collection $rows)
    {
        return view('helpers.tables.list', [
            'fields'   => $this->getFields(),
            'rows'     => $rows,
            'crudAjax' => self::IS_CRUD_BY_AJAX,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return mixed
     * @throws Throwable
     */
    public function create(Request $request)
    {
        if ($request->ajax()) {
            return response()->json([
                'form' => view('helpers.forms.ajax_form', [
                    'fields' => $this->getFields(),
                ])->render(),
            ]);
        }
        return view('helpers.forms.form', [
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param Model   $model
     * @param Request $request
     * @return Application|Factory|JsonResponse|View
     * @throws Throwable
     */
    public function show(Model $model, Request $request)
    {
        if ($request->ajax()) {
            return response()->json([
                'form' => view('helpers.forms.ajax_form', [
                    'row'    => $model,
                    'fields' => $this->getFields(),
                ])->render(),
            ]);
        }
        return view('helpers.forms.form', [
            'row'    => $model,
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @param Model   $model
     * @param string  $route
     * @return JsonResponse|RedirectResponse
     */
    public function store(Request $request, Model $model, string $route)
    {
        $result = $model->fill($request->all())->save();
        if ($request->ajax()) {
            return response()->json([
                'result' => $result,
                'model'  => $model->toArray(),
            ]);
        }
        return redirect()->route($route)->with('success', 'Row was created');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Model   $model
     * @param string  $route
     * @return JsonResponse|RedirectResponse
     */
    public function update(Request $request, Model $model, string $route)
    {
        $result = $model->fill($request->all())->save();
        if ($request->ajax()) {
            return response()->json([
                'result' => $result,
                'model'  => $model,
            ]);
        }
        return redirect()->route($route)->with('success', 'Row was updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Model $model
     * @return JsonResponse
     * @throws Exception
     */
    public function destroy(Model $model)
    {
        $model->delete();
        return response()->json(['message' => 'success']);
    }

    /**
     * @param array $allowedFields
     * @return array
     */
    protected function getFields(array $allowedFields = []): array
    {
        $fields = $this->fields();

        if (!empty($allowedFields)) {
            $fields = array_filter($fields, function ($k) use ($allowedFields) {
                return in_array($k, $allowedFields);
            }, ARRAY_FILTER_USE_KEY);
        }

        return $fields;
    }

    abstract protected function fields(): array;

    protected function mergeStatus(Request $request): Request
    {
        $request->request->add(['status' => $request->get('status') ? 1 : 0]);
        return $request;
    }
}
