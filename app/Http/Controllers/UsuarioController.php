<?php namespace Sophia\Http\Controllers;

use Illuminate\Http\Request;

use Sophia\Http\Requests;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class UsuarioController extends Controller
{
	public function index()
	{
		$usuarios = \Sophia\Usuario::All();
		return view('usuario.index', compact('usuarios'));
	}

	public function create()
	{
		return view('usuario.create');
	}
	public function store(Request $request)
	{
		$dia = $request['dia_nacimiento'];
		$mes = $request['mes_nacimiento'];
		$ano = $request['ano_nacimiento'];
		\Sophia\Usuario::create([
			'nombre' => $request['nombre'],
			'apellido' => $request['apellido'],
			'email' => $request['email'],
			'fecha_nacimiento' => $ano."-".$mes."-".$dia,
			'password' => bcrypt($request["password"]),
			]);      
		$usuarios = \Sophia\Usuario::All();
		return view('layout.master', compact('usuarios'));
	}
	public function getUserById(){
		return "hola";
	}
}