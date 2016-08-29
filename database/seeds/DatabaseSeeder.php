<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();
                
                /* CGG:
                 cuando se agrega una nueva class aca se debe correr el comando
                 composer dump-autoload 
                 o sino no toma las clases
                */
                
                //perfiles
                $this->call('PerfilsTableSeeder');
                //usuario administrador
                $this->call('AdministradorTableSeeder');
		//usuarios random
                $this->call('UsuariosTableSeeder');
                //modulos
                $this->call('ModulosTableSeeder');
                 
	}

}
