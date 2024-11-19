<?php
error_reporting(0);
$sql="select * from   evento where ID_Evento=".@$_GET['id'];

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$nombre="";
$query = $mysqli -> query ($sql);
while ($valores = mysqli_fetch_array($query)) {    
	$nombre=$valores['Descripcion'];
  
}
echo json_encode($nombre);
?>

