<?php

Route::group(['prefix' => 'admin'], function () {

    Route::group(['prefix' => 'login', 'middleware' => 'guest.admin'], function () {

    Route::get('/','Admin\loginController@index')->name('admin.login');

    Route::post('/','Admin\loginController@adminLogin')->name('admin.login.store');

    });

});


Route::get('/','Admin\loginController@logout')->name('admin.logout');


Route::group(['prefix'=>'admins' , 'middleware' => 'auth.admin'],function(){

    Route::get('/home', 'HomeController@index')->name('admin.home');

    Route::get('/', 'Admin\AdminController@index')->name('admin.index');

    Route::get('/create', 'Admin\AdminController@create')->name('admin.create');

    Route::post('/store', 'Admin\AdminController@store')->name('admin.store');

    Route::get('{admin}/edit', 'Admin\AdminController@edit')->name('admin.edit');

    Route::patch('{admin}/update', 'Admin\AdminController@update')->name('admin.update');

    Route::delete('{admin}/delete', 'Admin\AdminController@destroy')->name('admin.delete');


    Route::group(['prefix'=>'/users'],function(){

        Route::get('/', 'Admin\UsersController@index')->name('user.index');

        Route::get('/create', 'Admin\UsersController@create')->name('user.create');

        Route::post('/store', 'Admin\UsersController@store')->name('user.store');

        Route::get('{user}/edit', 'Admin\UsersController@edit')->name('user.edit');

        Route::patch('{user}/update', 'Admin\UsersController@update')->name('user.update');

        Route::delete('{user}/delete', 'Admin\UsersController@destroy')->name('user.delete');

    });


    Route::group(['prefix'=>'/blogs'],function(){

        Route::get('/', 'Admin\BlogsController@index')->name('blog.index');

        Route::get('/create', 'Admin\BlogsController@create')->name('blog.create');

        Route::post('/store', 'Admin\BlogsController@store')->name('blog.store');

        Route::get('{blog}/edit', 'Admin\BlogsController@edit')->name('blog.edit');

        Route::patch('{blog}/update', 'Admin\BlogsController@update')->name('blog.update');

        Route::delete('{blog}/delete', 'Admin\BlogsController@destroy')->name('blog.delete');



       Route::get('/{blog}/comments/showblogcomments', 'Admin\BlogCommentsController@show')->name('blogcomments.show');

       Route::patch('/{comment}/updateblogStatus', 'Admin\BlogCommentsController@update')->name('blogcomment.update');


    });


    Route::group(['prefix'=>'/courses'],function(){

        Route::get('/', 'Admin\CoursesController@index')->name('course.index');

        Route::get('/create', 'Admin\CoursesController@create')->name('course.create');

        Route::get('{course}/edit', 'Admin\CoursesController@edit')->name('course.edit');

        Route::delete('{course}/delete', 'Admin\CoursesController@destroy')->name('course.delete');

        Route::post('/store', 'Admin\CoursesController@store')->name('course.store');

        Route::patch('{course}/update', 'Admin\CoursesController@update')->name('course.update');



       Route::get('/{course}/comments/showcoursecomments', 'Admin\CourseCommentsController@show')->name('coursecomments.show');

       Route::patch('/{comment}/updateCourseStatus', 'Admin\CourseCommentsController@update')->name('coursecomment.update');


    });

    Route::group(['prefix'=>'/orders'],function(){

        Route::get('/', 'Admin\OrdersController@show')->name('orders.index');

        Route::patch('/{order}/update', 'Admin\OrdersController@update')->name('order.update');

    });

    Route::group(['prefix'=>'/offers'],function(){

        Route::get('/','Admin\offersController@index')->name('offers.index');

        Route::get('/create','Admin\offersController@create')->name('offers.create');

        Route::post('/store','Admin\offersController@store')->name('offers.store');

        Route::get('/{offer}/edit','Admin\offersController@edit')->name('offers.edit');

        Route::patch('/{offer}/update','Admin\offersController@update')->name('offers.update');

        Route::delete('/{offer}/delete','Admin\offersController@destroy')->name('offers.delete');
    });


    Route::group(['prefix'=>'/videos'],function(){

        Route::get('/','Admin\videosController@index')->name('videos.index');

        Route::get('/create','Admin\videosController@create')->name('videos.create');

        Route::post('/store','Admin\videosController@store')->name('videos.store');

        Route::get('/{video}/edit','Admin\videosController@edit')->name('videos.edit');

        Route::patch('/{video}/update','Admin\videosController@update')->name('videos.update');

        Route::delete('/{video}/delete','Admin\videosController@destroy')->name('videos.delete');
    });

    Route::group(['prefix'=>'/categories'],function(){

        Route::get('/','Admin\categoryController@index')->name('categories.index');

        Route::post('/store','Admin\categoryController@store')->name('categories.store');

        Route::get('/{video}/edit','Admin\categoryController@edit')->name('categories.edit');

        Route::patch('/{video}/update','Admin\categoryController@update')->name('categories.update');

        Route::delete('/{video}/delete','Admin\categoryController@destroy')->name('categories.delete');
    });

    Route::group(['prefix'=>'/contacts'],function(){

        Route::get('/','Admin\ContactController@index')->name('contacts.index');
    });


    Route::group(['prefix'=>'/notifications'],function(){

        Route::get('/', 'Admin\NotificationController@index')->name('notifications.index');

    });


});


Route::group(['prefix' => 'api'], function () {

    Route::post('/login', 'UserLoginApiController@userLogin')->name('user.login');

    Route::post('/register', 'UserLoginApiController@register')->name('user.register');

    Route::get('/courses', 'userCoursesApiController@index')->name('user.courses');
});
