<?php

namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class carrera extends Model
{
    protected $table = 'carreras';

    protected $fillable = ['id','nombre_carrera'];

	public static function carreras($id){
	return carrera::where('id','=',$id)
	->get();
	}
}
