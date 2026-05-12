<?php

include ('conexionDB.php');


$usuario_digitado = $_POST['usuario_db'];
$usuario_digitado = intval($usuario_digitado);
$contrasena_digitada = $_POST['contrasena_db'];



$consulta = "select * from docentes where cod_doc={$usuario_digitado}";
$consulta = pg_query($consulta);
$fila = pg_fetch_assoc($consulta);
$contrasena_db = trim($fila["clave"]);



if (password_verify($contrasena_digitada, $contrasena_db)) {
    header("Location: info-docente.php");
} else {
    header("Location: index.php?error=1");
}



?>