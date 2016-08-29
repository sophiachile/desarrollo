<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
|prueba de modificacion de archivo
*/

Route::get('productindex','LoginController@index');

Route::get('/', 'LoginController@login');

Route::get('terminos', 'LoginController@login_terminosUso');

Route::get('muro', 'LoginController@muro');

Route::get('home', 'HomeController@index');

Route::get('home', 'HomeController@index');

Route::get('welcome', function () {
return view('welcome', compact('welcome'));
});

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::resource('usuario', 'UsuarioController');


//Hola Jaime y Carlos!!!