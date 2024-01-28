<?php

use App\Http\Controllers\Front\CategoryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\InfoController;
use Illuminate\Routing\Router;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/test', function (Request $request) {
    return response()->json(['product' => ['id' => '345', 'name' => '345sdfsdfsdfsdf']]);
});
Route::prefix('category')->group(function (Router $router) {
    $router->get('/menu', [CategoryController::class, 'menu']);
});

Route::prefix('info')->group(function (Router $router) {
    $router->get('/{info}', [InfoController::class, 'show']);
//        ->middleware('cache.headers:public;max_age=3600;must_revalidate;etag');
});
