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

    Route::get('/', 'Admin\AdminController@index')->name('admin.index');

    Route::get('/create', 'Admin\AdminController@create')->name('admin.create');

    Route::post('/store', 'Admin\AdminController@store')->name('admin.store');

    Route::get('{admin}/edit', 'Admin\AdminController@edit')->name('admin.edit');

    Route::patch('{admin}/update', 'Admin\AdminController@update')->name('admin.update');

    Route::delete('{admin}/delete', 'Admin\AdminController@destroy')->name('admin.delete');


    Route::group(['prefix'=>'/users'],function(){

        Route::get('/', 'Admin\AdminUsersController@index')->name('user.index');

        Route::get('/create', 'Admin\AdminUsersController@create')->name('user.create');

        Route::post('/store', 'Admin\AdminUsersController@store')->name('user.store');

        Route::get('{user}/edit', 'Admin\AdminUsersController@edit')->name('user.edit');

        Route::patch('{user}/update', 'Admin\AdminUsersController@update')->name('user.update');

        Route::delete('{user}/delete', 'Admin\AdminUsersController@destroy')->name('user.delete');

    });


    Route::group(['prefix'=>'/blogs'],function(){

        Route::get('/', 'Admin\AdminBlogsController@index')->name('blog.index');

        Route::get('/create', 'Admin\AdminBlogsController@create')->name('blog.create');

        Route::post('/store', 'Admin\AdminBlogsController@store')->name('blog.store');

        Route::get('{blog}/edit', 'Admin\AdminBlogsController@edit')->name('blog.edit');

        Route::patch('{blog}/update', 'Admin\AdminBlogsController@update')->name('blog.update');

        Route::delete('{blog}/delete', 'Admin\AdminBlogsController@destroy')->name('blog.delete');



       Route::get('/{blog}/comments/showblogcomments', 'Admin\AdminBlogCommentsController@show')->name('blogcomments.show');

       Route::patch('/{comment}/updateblogStatus', 'Admin\AdminBlogCommentsController@update')->name('blogcomment.update');


    });


    Route::group(['prefix'=>'/courses'],function(){

        Route::get('/', 'Admin\AdminCoursesController@index')->name('course.index');

        Route::get('/create', 'Admin\AdminCoursesController@create')->name('course.create');

        Route::get('{course}/edit', 'Admin\AdminCoursesController@edit')->name('course.edit');

        Route::delete('{course}/delete', 'Admin\AdminCoursesController@destroy')->name('course.delete');

        Route::post('/store', 'Admin\AdminCoursesController@store')->name('course.store');

        Route::patch('{course}/update', 'Admin\AdminCoursesController@update')->name('course.update');



       Route::get('/{course}/comments/showcoursecomments', 'Admin\AdminCourseCommentsController@show')->name('coursecomments.show');

       Route::patch('/{comment}/updateCourseStatus', 'Admin\AdminCourseCommentsController@update')->name('coursecomment.update');

    });


    Route::get('/orders', 'Admin\AdminOrdersController@show')->name('orders.index');


});

