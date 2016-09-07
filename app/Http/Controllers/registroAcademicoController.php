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

class registroAcademicoController extends Controller
{

public function index()
	{
		
				
    	
      			 	$tipoInstitucion = DB::table('tipo_institucions')
      				  ->select('tipo_institucions.*', 'descripcion', 'id')
					->get();
   				     return view('usuario.registroAcademico',['tipos'=>$tipoInstitucion]);
		
		
  				  

	}


}