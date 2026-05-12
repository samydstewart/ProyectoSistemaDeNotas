<?php 
$contrasena= "docente1";

$hash_contrasena = password_hash($contrasena, PASSWORD_BCRYPT);
echo $hash_contrasena;

?>