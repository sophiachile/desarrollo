<?php namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model {
	protected $connection = 'mysql_seguridad';

     
    protected $fillable = [
        'nombre','apellido', 'email', 'password', 'fecha_nacimiento'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
    
   

}
