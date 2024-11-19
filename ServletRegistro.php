<?php
error_reporting(0);
sleep(2);
$usuario = @$_POST['nombreUsuario'];
$password = @$_POST['clave'];
$nombre = @$_POST['nombre'];
$apellido = @$_POST['apellido'];
$telefono = @$_POST['telefono'];
$email = @$_POST['email'];
$direccion = @$_POST['direccion'];
$distrito = @$_POST['distrito'];


$validacion = 0;

// SQL para verificar si el usuario ya existe
$sql_check = "SELECT * FROM usuarios WHERE nombre_usuario='" . $usuario . "'";

// SQL para insertar en la tabla cliente
$sql_insert_cliente = "INSERT INTO cliente (Nombre, Apellido, Telefono, Email, Direccion, Distrito, Fecha_Registro) 
VALUES ('" . $nombre . "', '" . $apellido . "', '" . $telefono . "', '" . $email . "', '" . $direccion . "', " . $distrito . ", NOW())";

// Establecer conexión con la base de datos
$mysqli = new mysqli('localhost', 'root', 'essalud25', 'eventosdb');

// Verificar si el usuario ya existe
$query = $mysqli->query($sql_check);
$contar = 0;

while ($valores = mysqli_fetch_array($query)) {
    $contar++;
}

// Si el usuario ya existe
if ($contar > 0) {
    $validacion = 1;
} else {
    // Insertar datos en la tabla cliente
    if ($mysqli->query($sql_insert_cliente)) {
        // Obtener el ID del cliente recién insertado
        $id_cliente = $mysqli->insert_id;

        // Insertar en la tabla usuarios vinculando el ID_Cliente
        $sql_insert_usuario = "INSERT INTO usuarios (nombre_usuario, clave, rol, ID_Cliente) 
        VALUES ('" . $usuario . "', '" . base64_encode($password) . "', 'CLIENTE', " . $id_cliente . ")";

        if ($mysqli->query($sql_insert_usuario)) {
            $validacion = 2; // Registro exitoso
        } else {
            $validacion = 0; // Error al insertar en usuarios
        }
    } else {
        $validacion = 0; // Error al insertar en cliente
    }
}

echo json_encode($validacion);
?>
