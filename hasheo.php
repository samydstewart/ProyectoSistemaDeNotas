<?php 
$contrasena= "señoradragon";

$hash_contrasena = password_hash($contrasena, PASSWORD_BCRYPT);
echo $hash_contrasena;

?>