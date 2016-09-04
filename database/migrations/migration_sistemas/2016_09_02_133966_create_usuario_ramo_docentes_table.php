<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsuarioRamoDocentesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('mysql')->create('usuario_ramo_docentes', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_usuario')->unsigned();
            $table->integer('id_ramo_docente')->unsigned();
            $table->foreign('id_usuario')->references('id')->on('seguridad_desarrollo.usuarios');
            $table->foreign('id_ramo_docente')->references('id')->on('ramo_docentes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('usuario_ramo_docentes');
    }
}
