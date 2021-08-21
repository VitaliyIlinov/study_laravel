<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Info;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        return view('test.test');
    }
}
