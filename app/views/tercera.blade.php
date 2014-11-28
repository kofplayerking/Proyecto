<!DOCTYPE html>
<html lan="es">

<head>
	<title>Municipios</title>
	<meta charset= "UTF-8" />
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/estilo.css">
</head>
<style type="text/css">
	body{
		background-image: url('/img/fondo4.jpg');
		background-repeat: no-repeat;
		background-size: 100% 100%;
	}
</style>
<body>
	<header>
		
			<div class="row">
				<div class="col-md-1">
					<img src="{{url('/')}}/img/escudo.jpeg" width="70px" height="70px" class="img-circle">
				</div>
				<div class="col-md-2 col-md-offset-3 titulo">
					<img src="{{url('/')}}/img/titulo.png">
				</div>
				<div class="col-md-1 col-md-offset-3 user">
					<img src="{{url('/')}}/img/usuario.jpg"width="50px" height="50px" class="img-circle" >
				</div>
				<div class="col-md-2 datos">
					<a class="inicio_sesion" href="{{url('/')}}/login.html">Iniciar sesion</a>
					<br>
					<a class="registro" href="{{url('/')}}/registrarse.html">Registrarse</a>
				</div>
			</div>
	
	</header>
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="menudes">
				<a href="/departamentos/cabanas">Inicio</a>
				<a href="">Imagenes</a>
				<a href="">Videos</a>
				<a href="">Contáctanos</a>
				<div class="marca"></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-md-offset-5 nombreMuni">
	<b><p>{{$munis->nombreMun}}</p></b>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-md-offset-1 descripcionDep"><br>
			<span class="ol">Ubicación :<span>{{$munis->Ubicacion}}</span></span><br><br>
			<span class="ol">Población :<span>{{$munis->poblacion}}</span></span><br><br>
			<span class="ol">Longitud : <span>{{$munis->longitud}}</span></span><br><br>
			<span class="ol">Latitud :<span>{{$munis->latitud}}</span></span>
		</div>
		<div class="col-md-2">
			<img src="{{url('/')}}/img/{{$munis->nombreMun}}.jpg" width="600px">
		</div>
		<div class="col-md-2 col-md-offset-4 panelDerecho">
			<p><i><b>Descripción</b></i></p>
			<p align="justify">{{$munis->descripcion}}</p>
			
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-2 panelBajo">
			<h3>Tradiciones</h3>
			<p align="justify">{{$munis->tradiciones}}</p>
			
		</div>
	</div>
	<br><br><br>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<footer class="bajo">
			     <a href="#" class="play2">PLAYAS</a>
		         <a href="#" class="hote2">HOTELES</a>		
	   		</footer>
		</div>
	</div>


</body>
</html>
