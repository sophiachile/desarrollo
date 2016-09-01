<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsuarioRamosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuario_ramos', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('id_usuario')->unsigned();
            $table->integer('id_ramo')->unsigned();
            $table->foreign('id_usuario')->references('id')->on('usuarios');
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
        Schema::drop('usuario_ramos');
    }
}
