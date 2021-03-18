<?php

namespace App\Repositories;

use App\Repositories\Interfaces\SessionConfigsInterface;
use Illuminate\Http\Request;

class SessionConfigs implements SessionConfigsInterface
{

    public const AVAILABLE_KEYS = [
        'editor' => ['ck_editor', 'code_mirror', 'default'],
    ];

    /**
     * @var Request
     */
    private $request;

    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function get(string $key, $default = null)
    {
        $this->request->session()->get($key, $default);
    }

    public function put(string $key, $value)
    {
        $this->request->session()->put($key,$value);
    }

    public function forget(string $key)
    {
        $this->request->session()->forget($key);
    }
}
