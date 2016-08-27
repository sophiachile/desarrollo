<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
|prueba de modificacion de archivo
*/

Route::get('productindex','ProductController@index');

Route::get('/', 'ProductController@login');

Route::get('terminos', 'ProductController@login_terminosUso');

Route::get('muro', 'ProductController@muro');

Route::get('home', 'HomeController@index');

Route::get('prueba', 'ProductController@prueba');

Route::get('home', 'HomeController@index');

Route::get('welcome', function () {
return view('welcome', compact('welcome'));
});

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

