<?php namespace Sophia\Http\Controllers;

use Illuminate\Http\Request;

use Sophia\Http\Requests;

class UsuarioController extends Controller
{

	public function create()
	{
		return view('usuario.create');
	}
	public function store(Request $request)
	{
		\Sophia\Usuario::create([
			'nombre' => $request['nombre'],
			'apellido' => $request['apellido'],
			'email' => $request['email'],
			//'fecha_nacimiento' => $request['fecha_nacimiento'],
			'password' => bcrypt($request["password"]),
			]);
		return "Usuario Registrado";

	}
}

