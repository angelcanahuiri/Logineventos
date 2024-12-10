<?php

error_reporting(0);
session_start();
$usuario=@$_GET['nombreUsuario'];
$password=@$_GET['clave'];
$validacion=0;
//$sql="select * from usuarios where nombre_usuario='".$usuario."' and clave='".base64_encode($password)."'";

 $sql = "SELECT * FROM usuarios WHERE nombre_usuario= \"".$usuario."\" and clave=\"".base64_encode($password)."\" ";

  $mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
                    
while ($valores = mysqli_fetch_array($query)) {
                 
    $datos="";
    $sqlx='select * from cliente where ID_Cliente='.$valores['ID_Cliente'];
    $queryx = $mysqli -> query ($sqlx);
    while ($valoresxx = mysqli_fetch_array($queryx)) 
    {
        $datos=$valores['nombre_usuario'].'<br>'.$valoresxx['Nombre'].' '.$valoresxx['Apellido'].'<br> '.$valoresxx['Email'];
    }
    
  $validacion=$valores['rol'];
  $_SESSION['usuario']=$valores['nombre_usuario'];
  $_SESSION['ID_Cliente']=$valores['ID_Cliente'];
  $_SESSION['datos']=$datos;
}

echo json_encode($validacion);
?>


