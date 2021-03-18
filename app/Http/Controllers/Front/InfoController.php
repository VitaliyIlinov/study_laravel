<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function show(Info $info)
    {
        return view('front.info.show',[
            'model' => $info,
        ]);
    }
}
