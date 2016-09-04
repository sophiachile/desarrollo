<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitucionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     public function up()
    {
        Schema::connection('mysql')->create('institucions', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('nombre_institucion', 100);
            $table->string('nombre_institucion_html', 100);
            $table->string('nombre_institucion_no_tilde', 100);
            $table->integer('id_tipo_institucion')->unsigned();
            $table->foreign('id_tipo_institucion')->references('id')->on('tipo_institucions');
        });
    }

    public function down()
    {
        Schema::drop('institucions');
    }

}