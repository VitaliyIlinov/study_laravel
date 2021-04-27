<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Info;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        return response()->json([
            'data'            => [],
            "draw"            => 3,
            "recordsTotal"    => 57,
            "recordsFiltered" => 57,
//           'data' => Info::all()->toArray()
        ]);
    }
}
