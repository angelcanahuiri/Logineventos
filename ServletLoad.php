<?php
error_reporting(0);
$validacion="";
$sql="select * from usuarios";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ($sql);
               
while ($valores = mysqli_fetch_array($query)) {    
	$validacion.="<tr>";
	$validacion.='<td>'.$valores['nombre_usuario'].'<td>';
	//$validacion.='<td><td><td><a onclick="editar('.$valores['id'].','."'".$valores['nombre_usuario']."'".')" class="btn btn-success">Editar</a><td>';
        $validacion.='<td><td><a onclick="editar('.$valores['id'].','."'".$valores['nombre_usuario']."'".')" class="btn btn-success">Editar</a>';
	$validacion.='<a onclick="eliminar('.$valores['id'].')" class="btn btn-danger">Eliminar</a><td>';
	$validacion.="</tr>";
  
}




echo json_encode($validacion);
?>