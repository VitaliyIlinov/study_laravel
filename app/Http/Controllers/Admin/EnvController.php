<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Traits\CrudService;
use App\Http\Controllers\Controller;
use Dotenv\Loader\Lines;
use Dotenv\Loader\Parser;
use Dotenv\Regex\Regex;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\File;
use stdClass;

class EnvController extends Controller
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
     * Display a listing of the resource.
     */
    public function index()
    {

        return $this->crudIndex($this->getEnv(), 'ENV List');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        return $this->crudCreate($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request, string $envKey)
    {
        $row = $this->getEnv()->first(function (Collection $value) use ($envKey) {
            return $value->get('name') === $envKey;
        });

        if ($request->ajax()) {
            return response()->json([
                'form' => view('admin.helpers.forms.ajax_form', [
                    'row' => $row,
                    'fields' => $this->getFields(),
                ])->render(),
                'id' => $envKey
            ]);
        }

        return view('admin.helpers.forms.form', [
            'row' => $row,
            'fields' => $this->getFields(),
        ]);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $path = app()->environmentFilePath();
        $name = $request->get('name');
        $value = $request->get('value');

        $result = File::append($path, "{$name}={$value}");

        if ($request->ajax()) {
            return response()->json([
                'result'  => $result,
                'model'   =>  [
                    'name' => $name,
                    'value' => $value
                ],
                'message' => 'Row was created',
            ]);
        }
        return redirect()->route('env_list')->with('success', 'Row was created');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $EnvKey)
    {
        $result = File::replaceInFile(
            $EnvKey . '=' . env($EnvKey),
            $EnvKey . '=' . $request->get('value'),
            app()->environmentFilePath()
        );

        return response()->json([
            'result' => $result !== false,
            'model' => ['value' => $request->get('value')]
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $EnvKey)
    {
        return response()->json([
            'message' => 'Maybe later'
        ], 400);
    }

    private function fields(): array
    {
        return [
            'name' => [
                'show_in_table' => true,
                'type' => 'text',
                'show_table_filter' => 'input',
            ],
            'value' => [
                'show_in_table' => true,
                'type' => 'text',
            ],
        ];
    }

    private function getEnv(): Collection
    {
        $entries = Lines::process(Regex::split("/(\r\n|\n|\r)/", File::get(app()->environmentFilePath()))->getSuccess());

        return collect($entries)->map(function ($value) {
            list($name, $value) = Parser::parse($value);
            $object = new stdClass();
            $object->id = $name;
            $object->name = $name;
            $object->value = $value->getChars();
            return $object;
        });
    }
}
