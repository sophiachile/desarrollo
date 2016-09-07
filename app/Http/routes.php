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

Route::get('admin', 'AdminController@index');

Route::get('editUsuarios', 'AdminController@edit');

Route::get('verUsuarios', 'UsuarioController@verUsuarios');
Route::get('crearUsuarios', 'UsuarioController@crearUsuarios');






Route::get('welcome', function () {
return view('welcome', compact('welcome'));
});

Route::get('registroAcademico', function () {
return view('registroAcademico', compact('registroAcademico'));
});

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);


Route::resource('registroAcademico', 'registroAcademicoController');
Route::resource('administrador', 'AdminController');
Route::resource('usuario', 'UsuarioController');
Route::resource('log', 'LogController');


Route::get('ramo/{ramo}', 'RamoController@index');



//Hola Jaime y Carlos!!!