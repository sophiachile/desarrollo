<?php

namespace Sophia;

use Illuminate\Http\Request;

use Sophia\Http\Requests;
use Sophia\Http\Requests\UsuarioCreateRequest;
use Sophia\Http\Requests\UsuarioUpdateRequest;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Session;
use Redirect;
use Sophia\institucion;
use Sophia\tipo_institucion;

use Illuminate\Database\Eloquent\Model;

class institucion extends Model
{
     protected $table = 'institucions';

    protected $fillable = ['nombre_institucion','id_tipo_institucion'];

	public static function instituciones($id){
	return institucion::where('id_tipo_institucion','=',$id)
	->get();
	}
	
     
}
