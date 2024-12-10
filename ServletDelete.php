<?php

error_reporting(0);

$validacion="";
$sql="select * from usuarios";

$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

$query = $mysqli -> query ('delete from usuarios where id='.$_GET['id']);

echo json_encode(1);
?>
