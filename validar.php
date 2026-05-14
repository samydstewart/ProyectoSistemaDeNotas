<?php

include ('conexionDB.php');
session_start();

$usuario_digitado = $_POST['usuario_db'];
$usuario_digitado = intval($usuario_digitado);
$contrasena_digitada = $_POST['contrasena_db'];



$consulta = "select * from docentes where cod_doc=$usuario_digitado";
$consulta = pg_query($consulta);
$fila = pg_fetch_assoc($consulta);
$contrasena_db = trim($fila["clave"]);



if (!password_verify($contrasena_digitada, $contrasena_db)) {
    header("Location: index.php?error=1");
} else {
    $_SESSION['cod_doc'] = $fila['cod_doc'];
    $_SESSION['nomb_doc'] = $fila['nomb_doc'];
    header("Location: info-docente.php");
}



?>