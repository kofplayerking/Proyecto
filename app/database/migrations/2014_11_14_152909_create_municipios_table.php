<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMunicipiosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('municipios',function(Blueprint $table){
        $table->increments('idMuncipio');
        $table->String('nombreMun');
        $table->String('Ubicacion');
         $table->text('descripcion');
          $table->String('longitud');
           $table->String('latitud');
            $table->String('poblacion');
            $table->text('tradiciones');
        $table->String('nomDep');   
		});
		
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('municipios');
	}

}
