<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMipaisTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('departamentos',function(Blueprint $table){
	        $table->increments('idDepartamento');
	        $table->String('nombreDep');
	        $table->String('Ubicacion');
	        $table->Text('descripcion');
	        $table->String('longitud');
	        $table->String('latitud');
	        $table->String('poblacion');
		});

	
	}

	
	


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('departamentos');
	}
	

}
