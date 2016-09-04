<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarreraRamosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //creamos la tabla tipo_institucion aquí mismo
        Schema::connection('mysql')->create('carrera_ramos', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_carrera')->unsigned();
            $table->integer('id_ramo')->unsigned();
            $table->foreign('id_carrera')->references('id')->on('carreras');
            $table->foreign('id_ramo')->references('id')->on('ramos');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('carrera_ramos');
    }


}
