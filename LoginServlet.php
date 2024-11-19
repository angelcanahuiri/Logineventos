<?php

error_reporting(0);
session_start();
$usuario=@$_GET['nombreUsuario'];
$password=@$_GET['clave'];
$validacion=0;
$sql="select * from usuarios where nombre_usuario='".$usuario."' and clave='".base64_encode($password)."'";

  $mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
                    
while ($valores = mysqli_fetch_array($query)) {
                        
  $validacion=$valores['rol'];
  $_SESSION['usuario']=$valores['nombre_usuario'];
}

echo json_encode($validacion);
?>


