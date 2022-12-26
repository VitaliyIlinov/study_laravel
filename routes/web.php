<?php

use App\Http\Controllers\Front\DashboardController;
use App\Http\Controllers\Front\InfoController;
use App\Http\Controllers\TestController;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/test', [TestController::class, 'test'])->name('test');
Route::get('/', [DashboardController::class, 'index'])->name('home');
Route::prefix('info')->group(function (Router $router) {
    $router->get('/{info}', [InfoController::class, 'show'])->middleware(
        'cache.headers:public;max_age=3600;must_revalidate;etag'
    );
});
