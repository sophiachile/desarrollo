<?php 

namespace Sophia;
use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class usuario extends Model implements AuthenticatableContract,
                                    AuthorizableContract,
                                    CanResetPasswordContract
                                    {
    use Authenticatable, Authorizable, CanResetPassword;
	protected $connection = 'mysql_seguridad';
 	protected $table = 'seguridad_desarrollo.usuarios';
     
    protected $fillable = [
        'nombre','apellido', 'email', 'password', 'fecha_nacimiento'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
    
   

}
