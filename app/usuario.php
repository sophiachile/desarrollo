<?php namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model {

    //conexion a BD de seguridad
    protected $connection = 'mysql_seguridad';
     
    protected $fillable = [
        'nombre','apellido', 'email', 'password',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
    
   

}
