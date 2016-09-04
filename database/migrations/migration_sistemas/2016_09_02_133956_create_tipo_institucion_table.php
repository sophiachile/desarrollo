<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTipoInstitucionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //creamos la tabla tipo_institucion aquí mismo
        Schema::connection('mysql')->create('tipo_institucions', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('descripcion', 100);
            $table->string('descripcion_html', 100);
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('tipo_institucions');
    }
}
