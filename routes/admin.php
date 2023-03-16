<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ConfigController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FileController;
use App\Http\Controllers\Admin\InfoController;
use App\Http\Controllers\Admin\QuestionController;
use App\Http\Controllers\Admin\SessionController;
use App\Http\Controllers\Admin\TodoListController;
use App\Http\Controllers\TestController;
use App\Http\Middleware\OnlyAjax;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [DashboardController::class, 'index'])->name('home');
Route::prefix('category')->as('category.')->group(function (Router $router) {
    $router->get('/', [CategoryController::class, 'index'])->name('list');
    $router->get('/{category}', [CategoryController::class, 'show']);
    $router->post('/{category}', [CategoryController::class, 'update']);
    $router->get('/create', [CategoryController::class, 'create']);
    $router->post('/create', [CategoryController::class, 'store']);
    $router->delete('/{category}', [CategoryController::class, 'destroy']);
    $router->group(['prefix' => 'ajax', 'middleware' => OnlyAjax::class], function (Router $router) {
        $router->post('/sort_update', [CategoryController::class, 'ajaxUpdateSort'])->name('ajaxCatUpdate');
    });
});

Route::prefix('info')->as('info.')->group(function (Router $router) {
    $router->get('/', [InfoController::class, 'index'])->name('list');
    $router->get('/create', [InfoController::class, 'create']);
    $router->post('/create', [InfoController::class, 'store']);
    $router->get('/{info}', [InfoController::class, 'show'])->name('show');
    $router->post('/{info}', [InfoController::class, 'update']);
    $router->delete('/{info}', [InfoController::class, 'destroy']);
});

Route::prefix('config')->as('config.')->group(function (Router $router) {
    $router->get('/', [ConfigController::class, 'index'])->name('list');
    $router->get('/create', [ConfigController::class, 'create']);
    $router->post('/create', [ConfigController::class, 'store']);
    $router->get('/{config}', [ConfigController::class, 'show']);
    $router->post('/{config}', [ConfigController::class, 'update']);
    $router->delete('/{config}', [ConfigController::class, 'destroy']);
});

/*Route::prefix('env')->group(function (Router $router) {
    $router->get('/', [EnvController::class, 'index'])->name('env_list');
    $router->get('/create', [EnvController::class, 'create']);
    $router->get('/{envKey}', [EnvController::class, 'show']);

    $router->group(['middleware' => OnlyAjax::class], function (Router $router) {
        $router->post('/{envKey}', [EnvController::class, 'update']);
        $router->post('/create', [EnvController::class, 'store']);
        $router->delete('/{envKey}', [EnvController::class, 'destroy']);
    });
});*/

Route::prefix('session')->as('session.')->group(function (Router $router) {
    $router->get('/edit', [SessionController::class, 'get']);
    $router->post('/edit', [SessionController::class, 'set'])->name('set');
    $router->delete('/', [SessionController::class, 'forget']);
});

Route::prefix('todo')->as('todo.')->group(function (Router $router) {
    $router->get('/', [TodoListController::class, 'index'])->name('list');
    $router->get('/create', [TodoListController::class, 'create'])->name('create');
    $router->post('/create', [TodoListController::class, 'store']);
    $router->get('/{todoList}', [TodoListController::class, 'show']);
    $router->post('/{todoList}', [TodoListController::class, 'update']);
    $router->delete('/{todoList}', [TodoListController::class, 'destroy']);
    $router->group(['prefix' => 'ajax', 'middleware' => OnlyAjax::class], function (Router $router) {
        $router->post('/sort_update', [TodoListController::class, 'ajaxUpdateSort'])->name('ajax-update');
        $router->post('/change_status/{todoList}', [TodoListController::class, 'changeStatus'])->name('change-status');
    });
});
Route::prefix('questions')->as('question.')->group(function (Router $router) {
    $router->get('/', [QuestionController::class, 'index'])->name('main');
});

Route::prefix('file')->as('file.')->group(function (Router $router) {
    $router->post('/store', [FileController::class, 'store'])->name('store');
    $router->delete('/delete', [FileController::class, 'delete'])->name('delete');
});
Route::prefix('test')->as('test.')->group(function (Router $router) {
    $router->get('/', [TestController::class, 'test'])->name('test');
});
