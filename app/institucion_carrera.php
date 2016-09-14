<?php

namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class institucion_carrera extends Model
{
    
    protected $table = 'institucion_carreras';

    protected $fillable = ['id_institucion','id_carrera'];

	public static function idCarreras($id){
	return institucion_carrera::where('id_carrera','=',$id)
	->get();
	}
}
