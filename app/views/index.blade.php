<!DOCTYPE html>
<html lan="es">
<head>
	<title>Conoce tu Pais</title>
	<meta charset= "UTF-8" />
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/estilo.css">
</head>
<style type="text/css">
	body{
		background-image: url('/img/fondo.jpg');
		background-repeat: no-repeat;
		background-size: 100% 100%;
	}
</style>
<body>
	<header>
		<div class="container">
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
		</div>
	</header>
	<div class="row seccion2">
		<div class="col-md-3 col-md-offset-2">
			<img src="{{url('/')}}/img/mapa.png" width="600" height="300">
			<br>
				<p align="justify"><b>Nombre Oficial:</b> República de El Salvador. 
					<b>Ciudad Capital: </b>San Salvador. <br> 
					<b>Población:</b> 6.3 millones. <br>
					<b>Superficie:</b> 21,040.79 kilómetros cuadrado. <br>
					<b>Moneda:</b> Colón (SV ¢). El dólar (US$) es moneda de curso legal desde el 1 de enero de 2001. <br>
					<b>Día de la Independencia:</b> 15 de Septiembre. <br>
					<b>Idioma Oficial:</b> español. <br>
					<b>Ave Nacional:</b> El Torogoz, también llamado: Talapo. <br>
					<b>Flor Nacional:</b> La flor de Izote. <br>
					<b>Árbol Nacional:</b> El Maquilishuat. 
				</p>
		</div>
		<div class="col-md-2 col-md-offset-5 menu">
			<div id='cssmenu'>
				<ul>
					@foreach($deptos as $depto)						
						<li><a href="{{route('depto', $depto->nombreDep)}}"><span>{{$depto->nombreDep}}</span></a></li>
					@endforeach

				</ul>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-8 col-md-offset-1">
			<img src="{{url('/')}}/img/borde.png" width="900x" >
		</div>
	</div>
	<div class="row">
		<div class="col-md-3 col-md-offset-1">
			<img src="{{url('/')}}/img/costa.jpg" width="310px" height="250px">
			<a class="costa" href="#">Costa del Sol</a>
			<p align="justify">Playa Costa del Sol esta ubicada sureste de San Salvador, ideal para practicar el jogging, el football y el voleyball, o simplemente tomar el sol, es la playa más extensa de El Salvador, con cerca de 15 kms. de extensión. Al final del boulevard Costa del Sol hay un acceso al estero de Jaltepeque, donde se puede navegar por sus canales y apreciar diversas especies de aves como garzas, patos y gaviotas, que se refugian entre los manglares.</p>
		</div>
		<div class="col-md-1">
			<img src="{{url('/')}}/img/termos.jpg" width="200" height="150px">
			<div class="centros">
				<img src="{{url('/')}}/img/atlantis.jpg" width="200" height="150px">
			</div>
		</div>
		<div class="col-md-2 col-md-offset-1">
			<a href="http://www.termosdelrio.com.sv/">Termos del Rio</a>
			<p align="justify">Somos una empresa dedicada al entretenimiento y diversión familiar a través de la practica de actividades de atractivo turístico 
			Iniciando en Diciembre de 1999.</p>
			
			<p align="justify" class="centros"><a href="http://atlantis.com.sv/#carousel">Atlantis</a><br>
				Somos un parque acuático dedicado a crear experiencias únicas a través de atracciones innovadoras que ofrecen diversión, adrenalina y descanso a visitantes nacionales y extranjeros.</p>

		</div>
			
				
	</div>
	<div class="row">
		<div class="col-md-10 col-md-offset-1 footer">
			<footer class="footer">
			     <a href="#" class="play">PLAYAS</a>
		         <a href="#" class="hote">HOTELES</a>		
	   		</footer>
		</div>
	</div>

</body>
</html>