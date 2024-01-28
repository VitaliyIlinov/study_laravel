<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Repositories\CategoryRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function menu(Request $request, CategoryRepository $repository): JsonResponse
    {
        return response()->json(['data' => $repository->getSortTree($repository->infoByCategoryCached())]);
    }
}
