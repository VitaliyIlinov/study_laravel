<?php

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

Route::get('/', 'DashboardController@index')->name('home');
Route::prefix('category')->group(function (Router $router) {
    $router->get('/', 'CategoryController@index')->name('category_list');
    $router->get('/edit/{category}', 'CategoryController@show');
    $router->post('/edit/{category}', 'CategoryController@update');
    $router->get('/create', 'CategoryController@create');
    $router->post('/create', 'CategoryController@store');
    $router->delete('/{category}', 'CategoryController@destroy');
    $router->group(['prefix' => 'ajax', 'middleware' => OnlyAjax::class], function (Router $router) {
        $router->post('/sort_update', 'CategoryController@ajaxUpdateSort')->name('ajaxCatUpdate');
    });
});
Route::prefix('info')->group(function (Router $router) {
    $router->get('/', 'InfoController@index')->name('info_list');
    $router->get('/edit/{info}', 'InfoController@show');
    $router->post('/edit/{info}', 'InfoController@update');
    $router->get('/create', 'InfoController@create');
    $router->post('/create', 'InfoController@store');
    $router->delete('/{info}', 'InfoController@destroy');
});
Route::prefix('config')->group(function (Router $router) {
    $router->get('/', 'ConfigController@index')->name('config_list');
    $router->get('/edit/{config}', 'ConfigController@show');
    $router->post('/edit/{config}', 'ConfigController@update');
    $router->get('/create', 'ConfigController@create');
    $router->post('/create', 'ConfigController@store');
    $router->delete('/{config}', 'ConfigController@destroy');
});
Route::prefix('todo')->group(function (Router $router) {
    $router->get('/', 'TodoListController@index')->name('todo_list');
    $router->get('/edit/{todoList}', 'TodoListController@show');
    $router->post('/edit/{todoList}', 'TodoListController@update');
    $router->get('/create', 'TodoListController@create');
    $router->post('/create', 'TodoListController@store');
    $router->delete('/{todoList}', 'TodoListController@destroy');
    $router->group(['prefix' => 'ajax', 'middleware' => OnlyAjax::class], function (Router $router) {
        $router->post('/sort_update', 'TodoListController@ajaxUpdateSort')->name('ajaxToDoUpdate');
        $router->post('/change_status/{todoList}', 'TodoListController@changeStatus')->name('todoStatus');
    });
});
