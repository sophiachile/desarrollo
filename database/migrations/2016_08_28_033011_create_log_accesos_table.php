<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLogAccesosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('log_accesos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->timestamps();
                        $table->integer('id_usuario');
                        $table->datetime('fecha_y_hora_acceso');
                        $table->string('descripcion_accion');
                        $table->foreign('id_usuario')->references('id')->on('usuarios');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('log_accesos');
	}

}
