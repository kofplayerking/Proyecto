<?php

class departamento extends \Eloquent {

	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
		'nombreDep'		=> 'required',
		// 'specie'	=> 'required',
		'Ubicacion'	=> 'required',
		
		];

		function municipios(){
			return $this->hasMany('municipio','nomDep', 'idDepartamento');
		}
	}
	/*class municipios extends \Eloquent {

	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
		'nombreMun'		=> 'required',
		// 'specie'	=> 'required',
		'Ubicacion'	=> 'required',
		
		];}*/
		
	// Don't forget to fill this array
	//protected $fillable = ['name', 'height', 'weight'];