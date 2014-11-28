<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	
	$deptos=departamentos::all();
		//eturn $deptos;
	return View::make('index', compact('deptos'));

});
Route::get('/', function()
{
	
	$munis=municipios::all();
		//eturn $deptos;
	return View::make('cabanas', compact('muni'));

});

Route::get('secundaria', function()
{
	return View::make('secundaria');

});
Route::get('tercera', function()
{
	return View::make('tercera');

});

Route::get("/departamentos/{slug}",['as'=>'depto',"uses"=>"departamentoController@mostrar"]);
Route::resource('departamentos', 'departamentoController');
Route::get("/municipios/{slug}",['as'=>'muni',"uses"=>"municipiosController@mostrar"]);
Route::resource('municipios', 'municipiosController');
