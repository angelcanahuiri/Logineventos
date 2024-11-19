<?php
error_reporting(0);
$validacion="";
$sql="select * from   trabajador";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
$validacion.="<option value='0'>SELECCIONE</option>";              
while ($valores = mysqli_fetch_array($query)) {    
	$validacion.="<option value='".$valores['ID_Trabajador']."'>";
	$validacion.=$valores['Nombre'].' '.$valores['Apellido'];
	$validacion.="</option>";
  
}
echo json_encode($validacion);
?>
