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
      

      /*
      // Seeds Seguridad

      //perfiles
      $this->call('seeds_seguridad.PerfilsTableSeeder');
      //usuario administrador
      $this->call('seeds_seguridad.AdministradorTableSeeder');
//usuarios random
      $this->call('seeds_seguridad.UsuariosTableSeeder');
      //modulos
      $this->call('seeds_seguridad.ModulosTableSeeder');
       */


      // Seeds Sistema
      $this->call('InstitucionsTableSeeder');
      $this->call('CarrerasTableSeeder');
      $this->call('DocentesTableSeeder');
      $this->call('RegimenTableSeeder');

      $this->call('RamosTableSeeder');
      $this->call('RamoDocentesTableSeeder');
      $this->call('CarreraRamosTableSeeder');
      $this->call('InstitucionCarrerasTableSeeder');
      $this->call('UsuarioRamoDocentesTableSeeder');
	}
}
