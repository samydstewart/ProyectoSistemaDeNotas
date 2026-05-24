<?php 

    include ("conexionDB.php");

    $cod_est = intval($_GET["cod_est"]);
    $cod_cur = intval($_GET["cod_cur"]);
    $year = intval($_GET["year"]);
    $periodo = intval($_GET["periodo"]);
    $nomb_est = isset($_GET["nomb_est"]) ? $_GET["nomb_est"] : "Estudiante";

    $sql = "select * from vista_calificaciones_notas
    where cod_est=$cod_est and cod_cur=$cod_cur and year=$year and periodo=$periodo order by posicion asc;";

    $result = pg_query($dbconn, $sql);
?>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Notas</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="/Proyecto/lapiz.png" type="image/x-icon">
</head>

<body>
    <header>
        <div class="titulo">
            <h1>Sistema de Notas - PHP y Postgresql</h1>
        </div>
        <div class="descripcion-pagina">
            <?php echo "<p>Lista de notas del estudiante {$nomb_est}</p>"; ?>
        </div>
    </header>
    <div class="card">
        <section>
            <h3>Calificaciones</h3>
            <table>
                <thead>
                    <th>Posicion</th>
                    <th>Descripción</th>
                    <th>Valor</th>
                </thead>
                <tbody>
                    <?php
                    while ($fila = pg_fetch_assoc($result)) {   
                        echo "<tr>";
                        echo "<td>{$fila['posicion']}</td><td>{$fila['desc_nota']}</td>";
                        echo "<td>{$fila['valor']}</td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>

        </section>

    </div>
</body>

</html>