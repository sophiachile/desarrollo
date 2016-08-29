<?php namespace Sophia;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model {

	protected $fillable = [
        'nombre','apellido', 'email', 'password',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

}
