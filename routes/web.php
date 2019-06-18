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

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix'=>'admins'],function(){

    Route::get('/', 'AdminController@index')->name('admin.index');

    Route::get('/create', 'AdminController@create')->name('admin.create');

    Route::post('/store', 'AdminController@store')->name('admin.store');

    Route::get('{admin}/edit', 'AdminController@edit')->name('admin.edit');

    Route::patch('{admin}/update', 'AdminController@update')->name('admin.update');

    Route::delete('{admin}/delete', 'AdminController@destroy')->name('admin.delete');


    Route::group(['prefix'=>'/users'],function(){

        Route::get('/', 'AdminUsersController@index')->name('user.index');

        Route::get('/create', 'AdminUsersController@create')->name('user.create');

        Route::post('/store', 'AdminUsersController@store')->name('user.store');

        Route::get('{user}/edit', 'AdminUsersController@edit')->name('user.edit');

        Route::patch('{user}/update', 'AdminUsersController@update')->name('user.update');

        Route::delete('{user}/delete', 'AdminUsersController@destroy')->name('user.delete');

    });


    Route::group(['prefix'=>'/blogs'],function(){

        Route::get('/', 'AdminBlogsController@index')->name('blog.index');

        Route::get('/create', 'AdminBlogsController@create')->name('blog.create');

        Route::post('/store', 'AdminBlogsController@store')->name('blog.store');

        Route::get('{blog}/edit', 'AdminBlogsController@edit')->name('blog.edit');

        Route::patch('{blog}/update', 'AdminBlogsController@update')->name('blog.update');

        Route::delete('{blog}/delete', 'AdminBlogsController@destroy')->name('blog.delete');

    });

});

