<?php
error_reporting(0);
$idusuario="";
$trabajador=$_GET['trabajador'];
$fecha=$_GET['fecha'];
$id=$_GET['id'];

$tipo="";
session_start();
if(isset($_SESSION['usuario'])){$tipo=$_SESSION['usuario'];}else{$tipo="";}
$sql="select id from    usuarios where nombre_usuario='".$_SESSION['usuario']."'";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');
$query = $mysqli -> query ($sql);
while ($valores = mysqli_fetch_array($query)) {    
	$idusuario=$valores['id'];
  
}
$sqlx="insert into  contratacion(ID_Cliente,ID_Evento,ID_Trabajador,Fecha_Contratacion,Estado) values(".$idusuario.",".$id.",".$trabajador.",'".$fecha."','Pendiente')";
 $mysqli -> query ($sqlx);

echo json_encode(true);
?>
