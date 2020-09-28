<?php

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
Route::prefix('category')->group(function (\Illuminate\Routing\Router $router) {
    $router->get('/', 'CategoryController@index')->name('category_list');
    $router->get('/edit/{category}', 'CategoryController@show');
    $router->post('/edit/{category}', 'CategoryController@update');
    $router->get('/create', 'CategoryController@create');
    $router->post('/create', 'CategoryController@store');
    $router->delete('/{category}', 'CategoryController@destroy');
});
Route::prefix('info')->group(function (\Illuminate\Routing\Router $router) {
    $router->get('/', 'InfoController@index')->name('info_list');
    $router->get('/edit/{info}', 'InfoController@show');
    $router->post('/edit/{info}', 'InfoController@update');
    $router->get('/create', 'InfoController@create');
    $router->post('/create', 'InfoController@store');
    $router->delete('/{info}', 'InfoController@destroy');
});
Route::prefix('config')->group(function (\Illuminate\Routing\Router $router) {
    $router->get('/', 'ConfigController@index')->name('config_list');
    $router->get('/edit/{info}', 'ConfigController@show');
    $router->post('/edit/{info}', 'ConfigController@update');
    $router->get('/create', 'ConfigController@create');
    $router->post('/create', 'ConfigController@store');
    $router->delete('/{info}', 'ConfigController@destroy');
});
