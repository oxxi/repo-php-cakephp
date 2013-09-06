<?php
include("conexion.php");//script de conexion con el objeto $conexion
$contrasena = md5($_POST['pwd_txt']);
$consulta = "SELECT nombreusuario, password FROM usuarios WHERE nombreusuario = "."'".$_POST['nombre_txt']."' "."AND password = "."'".$contrasena."'";
$result = $conexion->query($consulta);
if ($result->num_rows == 0) {
	header("Location: /../index.php?error=si");
}else{
	/*echo "existe coinsidencias <br>";
	while ($aux = $result->fetch_assoc()) {
		$usuario = $aux['nombreusuario'];
		$pass = $aux['password'];
	}
	echo $usuario."<br/>";
	echo $pass;*/
	echo "autorizate";
	//inicio de sesion
	session_start();
	//variables de session
	$_SESSION["autorizate"] = true;
	$_SESSION["usuario"] = $_POST["nombre_txt"];
	//redireccionando 
	header("Location: /../home.php");
	
}

?>