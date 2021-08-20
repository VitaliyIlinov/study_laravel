<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function show($info)
    {
        $info = Info::where('id', $info)->orWhere('slug', $info)->firstOrFail();
        return view('front.info.show', [
            'model' => $info,
        ]);
    }
}
