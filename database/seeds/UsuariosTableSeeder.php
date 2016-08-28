<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class UsuariosTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
        public function run()
        {
            
            $faker = Faker::create();    
        
            //seteamos cantidad de usuarios random a crear
            for($i= 0;$i < 50;$i ++)
            {
                \DB::table('usuarios')->insert(array(
                    'nombre'            => $faker->firstName,
                    'apellido'          => $faker->lastName,
                    'email'             => $faker->unique()->email,
                    'password'          => \Hash::make('123456'),
                    'fecha_nacimiento'  => $faker->date($format = 'Y-m-d', $max = 'now') ,
                    'edad'              => $faker->numberBetween($min = 1, $max = 120),
                    'fecha_registro'    => $faker->date($format = 'Y-m-d', $max = 'now') ,
                    'fecha_expiracion'  => $faker->date('Y-m-d') + 360,
                    'reintentos'        => 0,
                    'pregunta_secreta' => 'Hola como estas',
                    'respuesta_secreta' => 'bien y tu',
                    'pais'              => $faker->country
                ));
            }
        }

}
