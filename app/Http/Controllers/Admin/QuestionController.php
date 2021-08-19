<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class QuestionController extends Controller
{

    public function index()
    {
        if (request()->ajax()) {
            return response()->json([
                'content' => view('admin.questions.main_ajax')->render(),
                'title' => 'Interview Questions',
            ]);
        }

        return view('admin.questions.main');
    }
}
