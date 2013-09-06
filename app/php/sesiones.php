<?php 
session_start();
if (!$_SESSION["autorizate"]) {//si la sesion no es true lo redirecciona a el login
	header("Location: /php/salir.php");
}
?>