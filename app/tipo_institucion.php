<?php

namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class tipo_institucion extends Model
{
    //
	protected $connection = 'mysql_sistema_desarrollo';
	protected $table = 'tipo_institucions';
	protected $fillable = ['descripcion','id'];
}
