<?php

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

Auth::routes();
Route::get('/', 'Controller@index');

Route::get('/news', 'NewsController@index' );
Route::get('/news/create', 'NewsController@create' );
Route::get('/news/{id}', 'NewsController@show' );
Route::get('/news/edit/{id}', 'NewsController@edit' );
Route::post('/news/store', 'NewsController@store' );
Route::post('/news/update/{id}', 'NewsController@update' );




Route::get('/articles', 'ArticleController@index' );


