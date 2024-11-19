<?php
error_reporting(0);
$validacion="";
$sql="select * from  evento";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
               
while ($valores = mysqli_fetch_array($query)) {    
	$validacion.="<tr>";
	$validacion.='<td>'.$valores['Descripcion'].'<td>';
        $validacion.='<td><a class="btn btn-info" href="comprobante.html?id='.$valores['ID_Evento'].'">Comprobante</a><td>';
	$validacion.="</tr>";
  
}
echo json_encode($validacion);
?>
