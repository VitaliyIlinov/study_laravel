<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        if (request()->ajax()) {
            return response()->json([
                'content' => view('admin.dashboard.dashboard_ajax')->render(),
                'title'   => 'Dashboard',
            ]);
        }

        return view('admin.dashboard.dashboard');
    }
}
