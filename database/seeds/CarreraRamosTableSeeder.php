<?php

use Illuminate\Database\Seeder;



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class CarreraRamosTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
        public function run()
        {
                //modulo administración de usuarios
                $idCarrera = \DB::table('carreras')->insertGetId(array(
                    'nombre_carrera'    => 'Ingeniería en Computación e Informática',
                    'nombre_carrera_html'    => 'Ingenier&iacute;a en Computaci&oacute;n e Inform&aacute;tica',
                    'nombre_carrera_no_tilde'    => 'Ingenieria en Computacion e Informatica',
                ));

                $idRamo = \DB::table('ramos')->insertGetId(array(
                    'nombre_ramo'    => 'Matemáticas I',
                    'nombre_ramo_html'    => 'Matem&aacute;ticas I',
                    'nombre_ramo_no_tilde'    => 'Matematicas I',
                ));

                //insertamos relacion perfil modulo
                \DB::table('carrera_ramos')->insert(array(
                    'id_carrera'         => $idCarrera,
                    'id_ramo'         => $idRamo //perfil administrador
                ));
                
        }

}
