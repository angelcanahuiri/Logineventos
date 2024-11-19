<?php

$ud=$_GET['id'];
$V=$_GET['V'];

$idusuario=0;
$sql="select MAX(ID_Contratacion) AS ID_Contratacion from  contratacion";
$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');
$query = $mysqli -> query ($sql);
while ($valores = mysqli_fetch_array($query)) {    
	$idusuario=$valores['ID_Contratacion'];  
}

if($V==1)
{
    $sqlx="insert into  eventosdb_contratacion_servicio(ID_Contratacion,ID_Servicio) values(".$idusuario.",".$ud.")";
}
if($V==0)
{
    $sqlx="delete from eventosdb_contratacion_servicio where ID_Contratacion=".$idusuario."  and ID_Servicio=".$ud;
}
$mysqli -> query ($sqlx);
echo json_encode(true);