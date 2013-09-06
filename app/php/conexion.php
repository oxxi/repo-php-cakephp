<?php
function conectar(){
	$DB="appdb";
	$USU="root";
	$PASS="";
	$HOST="127.0.0.1";
	$cox = new mysqli($HOST,$USU,$PASS,$DB) or die ("No se puede conectar a la base de datos");
	return $cox;
}

$conexion = conectar();

?>