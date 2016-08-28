<?php

use Illuminate\Database\Seeder;

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class AdministradorTableSeeder extends Seeder{
    public function run()
    {
        \DB::table('usuarios')->insert(array(
            'nombre'            => 'Admin',
            'apellido'          => 'istrador',
            'email'             => 'carlos.gonzalez.gavilan@gmail.com',
            'password'          => \Hash::make('secret'),
            'fecha_nacimiento'  => '19850203',
            'edad'              => 31,
            'fecha_registro'    => date('aaaammdd'),
            'fecha_expiracion'  => date('aaaammdd') + 360,
            'reintentos'        => 0,
            'pregunta_secreta' => 'Hola como estas',
            'respuesta_secreta' => 'bien y tu',
            'pais'              => 'Chile'
        ));
        
        
    }
            
}