<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function show($info, Request $request)
    {
        $info = Info::where('id', $info)->orWhere('slug', $info)->firstOrFail();

        if ($request->ajax()) {
            return response()->json([
                'result' => view('front.info.show_ajax', [
                    'model' => $info,
                ])->render(),
            ]);
        }
        return view('front.info.show', [
            'model' => $info,
        ]);
    }
}
