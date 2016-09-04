<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarrerasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('mysql')->create('carreras', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('nombre_carrera',100);
            $table->string('nombre_carrera_html', 100);
            $table->string('nombre_carrera_no_tilde', 100);
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('carreras');
    }
}
