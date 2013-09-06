<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="/_lib/home.css">
	<link rel="stylesheet" type="text/css" href="/_lib/reveal.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="_lib/script.js"></script>
	<script src="_lib/jquery.reveal.js"></script>
</head>
<body>
	<?php include("/php/sesiones.php");//inclucion del script de sesiones?>
	<div id="contenedor">
		<nav>
		<ul>
			<li><a href="javascript: void(0);" class="link" rel="seccion1">Facturacion</a></li>
			<li><a href="javascript: void(0);" class="link" rel="seccion2">Productos</a></li>
			<li><a href="javascript: void(0);" class="link" rel="seccion3">seccion3</a></li>
			<li><a href="javascript: void(0);" class="link" rel="seccion4">seccion4</a></li>
			<li><a href="javascript: void(0);" class="link" rel="seccion5">seccion5</a></li>
		</ul>
		</nav>
		<div id="sesion"><a href="/php/salir.php">Cerrar Sesion</a></div>
		<div id="contenido">
				<h1>BIENVENIDO</h1>
		</div>
	</div>
	
</body>
</html>
