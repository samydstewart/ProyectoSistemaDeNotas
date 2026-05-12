<?php
$host = "ep-nameless-unit-aqy5qwk2-pooler.c-8.us-east-1.aws.neon.tech";
$port = "5432";
$dbname = "neondb";
$user = "neondb_owner";
$password = "escribe contraseña";

// El sslmode=require es vital para servicios en la nube como Neon
$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password} sslmode=require";

$dbconn = pg_connect($connection_string);

if (!$dbconn) {
    // Esto nos dirá exactamente por qué falló (ej: contraseña mal, host no encontrado)
    echo "Error de conexión: se cagó todo.";
} else {
    echo "¡Conexión exitosa a NeonDB!";
}
?>