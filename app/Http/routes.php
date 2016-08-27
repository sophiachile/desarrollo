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

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

