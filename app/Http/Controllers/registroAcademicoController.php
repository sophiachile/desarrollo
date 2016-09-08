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
use Sophia\tipo_institucion;

class registroAcademicoController extends Controller
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
       
	   
		/*
		$tipos = DB::table('tipo_institucions')  
		->select('id', 'descripcion')
				->get();
		*/
		
		$tipos =  tipo_institucion::lists('descripcion', 'id')
		->get();
		

  
    

					
   		Session::put('tipos', $tipos);
		Session::put('carreras', $carreras);
        Session::put('ramos', $ramos);
        Session::put('usuario', $usuario);

        return view('usuario.registroAcademico');
		
		
  				  

	}


}