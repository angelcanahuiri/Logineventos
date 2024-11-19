<?php
$tipo="";
session_start();
if(isset($_SESSION['usuario'])){$tipo=$_SESSION['usuario'];}else{$tipo="";}
echo json_encode($tipo);

