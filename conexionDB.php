<?php
 $conn_string = "dbname=proyecto host=localhost port=5432 user=postgres password=postgres";
 $dbconn = pg_connect($conn_string);


if(!$dbconn) {
    echo "No pude conectarme con la base de datos carnal, cagamos feo";
} else {
    echo "Me conecté re bien pana, trabaje"."</br>";
}

?>
