<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Http\Resources\InfoResource;
use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function show($info, Request $request): InfoResource
    {
        $info = Info::where('id', $info)->orWhere('slug', $info)->firstOrFail();

        return InfoResource::make($info);

        if ($request->ajax()) {
            return response()->json([
                'content' => view('front.info.show_ajax', [
                    'model' => $info,
                ])->render(),
            ]);
        }
        return view('front.info.show', [
            'model' => $info,
        ]);
    }
}
