<?php
error_reporting(0);
$validacion="";
$sql="select * from   servicio";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
               
while ($valores = mysqli_fetch_array($query)) {    
	$validacion.="<tr>";
	$validacion.='<td>'.$valores['Descripcion'].'<td>';
        $validacion.='<td>'.$valores['Precio_Base'].'<td>';
        $validacion.='<td><input onclick="savedetalle('.$valores['ID_Servicio'].')" type="checkbox" id="c'.$valores['ID_Servicio'].'" name="c'.$valores['ID_Servicio'].'" ><td>';
	$validacion.="</tr>";
  
}
echo json_encode($validacion);
?>
