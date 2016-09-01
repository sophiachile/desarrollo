<?php namespace Sophia\Http\Controllers;

use Illuminate\Http\Request;

use Sophia\Http\Requests;
use Sophia\Http\Requests\UsuarioCreateRequest;
use Sophia\Http\Requests\UsuarioUpdateRequest;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Session;
use Redirect;

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
	public function store(UsuarioCreateRequest $request)
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

    public function update(UsuarioUpdateRequest $request, $id)
    {
        $usuario = \Sophia\Usuario::find($id);
        $usuario->fill($request->all());
        $usuario->save();
        Session::flash('message','Usuario Actualizado Correctamente');
        return Redirect::to('/admin');
    }

    public function verUsuarios()
	{
		$usuarios = \Sophia\Usuario::All();
		return view('admin.verUsuarios', compact('usuarios'));
	}
	public function edit($id)
    {
        $usuario = \Sophia\Usuario::find($id);
        return view('admin.edit',['usuario'=>$usuario]);
    }


}