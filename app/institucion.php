<?php

namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class institucion extends Model
{
    //
	protected $connection = 'mysql_sistema_desarrollo';
	protected $table = 'institucions';
	protected $fillable = ['nombre_institucion','id_tipo_institucion'];
	
	
	public satic function instituciones ($id){
		return institucion::where('id_tipo_institucion','=',$id)
		->get();
	}
	
     
}
