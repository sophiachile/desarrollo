<?php namespace Sophia\Http\Controllers;

use Illuminate\Http\Request;

use Sophia\Http\Requests;
use Sophia\Http\Requests\UsuarioCreateRequest;
use Sophia\Http\Requests\UsuarioUpdateRequest;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Session;
use Redirect;

class UsuarioController extends Controller
{
	public function index()
	{
		$usuarios = \Sophia\Usuario::All();
		$id = 1;
		// st04092016 - Se traen al usuario logeado
		$usuario = \Sophia\Usuario::find($id); 

		// st04092016 - Se traen los ramos que pertenecen al usuario
       	$ramos = DB::table('usuario_ramo_docentes')
        ->join('ramo_docentes', 'usuario_ramo_docentes.id_ramo_docente', '=', 'ramo_docentes.id_ramo')
        ->join('ramos', 'ramo_docentes.id_ramo', '=', 'ramos.id')
        ->select('ramos.*', 'id_ramo', 'nombre_ramo', 'nombre_ramo_html')
        ->where('usuario_ramo_docentes.id_usuario', '=', $id)
        ->distinct()
        ->orderBy('nombre_ramo')
        ->get();

        $carreras = DB::table('usuario_ramo_docentes')
        ->join('ramo_docentes', 'usuario_ramo_docentes.id_ramo_docente', '=', 'ramo_docentes.id_ramo')
        ->join('carrera_ramos', 'ramo_docentes.id_ramo', '=', 'carrera_ramos.id_ramo')
        ->join('carreras', 'carrera_ramos.id_carrera', '=', 'carreras.id')
        ->select('id_carrera', 'nombre_carrera')
        ->where('usuario_ramo_docentes.id_usuario', '=', $id)
        ->distinct()
        ->get();
        
        Session::put('carreras', $carreras);
        Session::put('ramos', $ramos);
        Session::put('usuario', $usuario);

        return view('usuario.index');
		//return view('usuario.index', compact('usuarios'));
	}

	public function create()
	{
		return view('admin.crearUsuarios');
	}

	public function store(UsuarioCreateRequest $request)
	{
		$dia = $request['dia_nacimiento'];
		$mes = $request['mes_nacimiento'];
		$ano = $request['ano_nacimiento'];
		\Sophia\Usuario::connection('mysql_seguridad')->create([
			'nombre' => $request['nombre'],
			'apellido' => $request['apellido'],
			'email' => $request['email'],
			'fecha_nacimiento' => $ano."-".$mes."-".$dia,
			'password' => bcrypt($request["password"]),
			]);      
		$usuarios = \Sophia\Usuario::All();
		/* 
		*Preguntar a traves de un IF si es primera ves que se loguea
		*si es asi que direccione 
		*/
		return view('registroAcademico');
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

    public function crearUsuarios()
    {
        if($request->ajax()){
            Genre::create($request->all());
            return response()->json([
                "mensaje" => "creado"
            ]);
        }
    }

	public function edit($id)
    {
        $usuario = \Sophia\Usuario::find($id);
        return view('admin.edit',['usuario'=>$usuario]);
    }

	public function ramos($id)
    {
    	$id = 1;
       	$ramos = DB::table('usuario_ramo_docentes')
        ->join('ramos', 'usuario_ramo_docentes.id_ramo', '=', 'ramos.id_ramo')
        ->select('ramos.*', 'nombre_ramo', 'nombre_ramo_html')
        ->where('usuario_ramo_docentes.id_ramo', '=', $id)->get();
        return view('admin.edit',['ramos'=>$ramos]);
    }

    public function profile()
    {
        return view('usuario.profile');
    }

		

}