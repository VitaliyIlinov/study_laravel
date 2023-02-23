<?php

namespace App\Http\Controllers\Admin\Traits;

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
     * @param Collection $rows
     * @param string|null $title
     * @param string $view
     * @return mixed
     */
    public function index(Collection $rows, ?string $title = null, string $view = 'admin.helpers.tables.list')
    {
        $data = [
            'fields' => $this->getFields(),
            'title' => $title,
            'rows' => $rows,
        ];
        if (request()->ajax()) {
            return response()->json([
                'content' => view("{$view}_ajax", $data)->render(),
                'title' => $title,
            ]);
        }

        return view($view, $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request, string $title = 'Create form'): View|JsonResponse
    {
        if ($request->ajax()) {
            return response()->json([
                'content' => view('admin.helpers.forms.ajax_form', ['fields' => $this->getFields()])->render(),
                'title' => $title,
            ]);
        }
        return view('admin.helpers.forms.form', [
            'fields' => $this->getFields(),
            'title' => $title,
        ]);
    }

    /**
     * Display the specified resource.
     * @param Model $model
     * @param Request $request
     * @return Application|Factory|JsonResponse|View
     * @throws Throwable
     */
    public function show(Model $model, Request $request)
    {
        if ($request->ajax()) {
            return response()->json([
                'content' => view('admin.helpers.forms.ajax_form', [
                    'row' => $model,
                    'fields' => $this->getFields(),
                ])->render(),
                'title' => 'Id: ' . $model->{$model->getKeyName()},
            ]);
        }
        return view('admin.helpers.forms.form', [
            'row' => $model,
            'fields' => $this->getFields(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @param Model $model
     * @return JsonResponse|RedirectResponse
     */
    public function store(Request $request, Model $model)
    {
        $result = $model->fill($request->all())->save();
        if ($request->ajax()) {
            return response()->json([
                'result' => $result,
                'model' => $model->toArray(),
                'message' => 'Row was created',
            ]);
        }
        return redirect()->action([self::class, 'index'])->with('success', 'Row was created');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param Model $model
     * @return JsonResponse|RedirectResponse
     */
    public function update(Request $request, Model $model)
    {
        $result = $model->fill($request->all())->save();
        if ($request->ajax()) {
            $fields = $this->getFields();
            $customData = [];
            foreach ($fields as $k => $v) {
                if (!empty($v['show_in_table']) && !empty($v['callback'])) {
                    $customData[$k] = $v['callback']($model);
                }
            }
            return response()->json([
                'result' => $result,
                'model' => array_merge($model->getChanges(), $customData),
                'message' => 'Row was updated',
            ]);
        }
        return redirect()->action([self::class, 'index'])->with('success', 'Row was updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Model $model)
    {
        $model->delete();
        if (request()->ajax()) {
            return response()->json([
                'message' => 'Row was deleted',
            ]);
        }
        return redirect()->action([self::class, 'index'])->with('success', 'Row was deleted');
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
}
