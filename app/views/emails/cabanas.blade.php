<!DOCTYPE html>
<html lan="es">

<head>
	<title>Departamentos</title>
	<meta charset= "UTF-8" />
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="{{url('/')}}/css/estilo.css">
</head>
<body >
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-1">
					<img src="{{url('/')}}/img/escudo.jpeg" width="70px" height="70px" class="img-circle">
				</div>
				<div class="col-md-1 col-md-offset-8 user">
					<img src="{{url('/')}}/img/usuario.jpg"width="50px" height="50px" class="img-circle" >
				</div>
				<div class="col-md-2">
					<a class="inicio_sesion" href="#">Iniciar sesion</a>
					<br>
					<a class="registro" href="#">Registrarse</a>
				</div>
			</div>
		</div>
	</header>
		
		<h2 class="ti">Cabañas</h2>
			<center><img src="{{url('/')}}/img/cabanas.jpg" width="400" class="img" ></center>

		<center><TEXTAREA cols="75" rows="5" class="text">Cabañas es un departamento de la zona paracentral de El Salvador. Su cabecera departamental es Sensuntepeque. Esta región tiene muchas reservas naturales. El departamento fue nombrado en honor del político centroamericanista hondureño, José Trinidad Cabañas</TEXTAREA></center>
		
		<div  class="m">
					<div id='cssmenu'> 
						<ul>
						    
						    @foreach($munis as $muni)						
								<li><a href="{{route('muni', $muni->nombreMun)}}"><span>{{$muni->nombreMun}}</span></a></li>
							@endforeach

						</ul>
					</div>
				</div>
				<div class="i">
				<div id='cssmenu'> 
						<ul>
						   <li class='active'><a href="{{url('/')}}/departamentos"/><span>Inicio</span></a></li>
						</ul>    
					</div>
					<div class="cu">
						
						<span class="ol">Ubicación:<span class="com">95952</span></span>
						<span class="ol">Población:<span class="com">153,696 h</span></span>
						<span class="ol">Longitud: <span class="co">95952</span></span>
						<span class="ol">Latitud:<span class="c">95952</span></span>
					</div>
			    </div>
		<center>
			<footer class="f">
			     <a href="#" class="play">PLAYAS</a>
		         <a href="#" class="hot">HOTELES</a>		
		
	   </footer>
	</center>

</body>
</html>