<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\SessionConfigsInterface;
use Illuminate\Http\Request;

class SessionController extends Controller
{
    /**
     * @var SessionConfigsInterface
     */
    private $sessionConfigs;

    public function __construct(SessionConfigsInterface $sessionConfigs)
    {
        $this->sessionConfigs = $sessionConfigs;
    }

    public function get(Request $request)
    {
        return $this->sessionConfigs->get($request->get('key'));
    }

    public function set(Request $request)
    {
        $this->sessionConfigs->put($request->get('key'), $request->get('value'));
        return response()->json('success');
    }

    public function forget(Request $request)
    {
        return $this->sessionConfigs->forget($request->get('key'));
    }
}
