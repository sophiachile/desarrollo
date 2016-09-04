<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocenteTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     public function up()
    {
        Schema::connection('mysql')->create('docentes', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('nombre', 100);
            $table->string('apellido_paterno', 100);
            $table->string('apellido_materno', 100);
            $table->string('nombre_html', 100);
            $table->string('apellido_paterno_html', 100);
            $table->string('apellido_materno_html', 100);
            $table->string('nombre_no_tilde', 100);
            $table->string('apellido_paterno_no_tilde', 100);
            $table->string('apellido_materno_no_tilde', 100);
            $table->string('email', 100);
            $table->integer('estado');
        });

    }

        public function down()
    {
        Schema::drop('docentes');

        // creamos las tabla instuticion
    }

}

