<?php

error_reporting(0);

$id=$_GET['id'];
$usuario=$_GET['usuario'];

$validacion="";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ('update usuarios set nombre_usuario="'.$usuario.'" where id='.$id);

echo json_encode(1);
?>