<?php 

class municipio extends \Eloquent {

function Depto(){
	return $this->belongsTo('departamento', 'nomDep');
}

}