<?php
include("conexionDB.php");

$cod_cur = intval($_POST["cod_cur"]);
$year = intval($_POST["year"]);
$periodo = intval($_POST["periodo"]);

$sql = "select cod_est, nomb_est from vista_estudiantes_curso where cod_cur=$cod_cur and year=$year and periodo=$periodo;";
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
            <p>Lista de Estudiantes</p>
        </div>
    </header>
    <div class="card">
        <section>
            <h3>Estudiantes</h3>
            <table>
                <thead>
                    <th>Codigo de estudiante</th>
                    <th>Nombre</th>
                    <th>Acciones</th>
                </thead>
                <tbody>
                    <?php
                    while ($fila = pg_fetch_assoc($result)) {   
                        echo "<tr>";
                        echo "<td>{$fila["cod_est"]}</td><td>{$fila["nomb_est"]}</td>";
                        echo "<td>";
                        echo "<a href='editar_nota.php?cod_est={$fila['cod_est']}&cod_cur=$cod_cur&year=$year&periodo=$periodo' class='btn btn-editar'><img src='editar-icon.png' alt='icono-editar'>Editar</a>";
                        echo "<form action='eliminar-inscripcion.php' method='POST' style='display:inline;' onsubmit='return desearEliminar()'>";
                        echo "<input type='hidden' name='cod_cur' value='$cod_cur'>";
                        echo "<input type='hidden' name='cod_est' value='{$fila['cod_est']}'>";
                        echo "<button type='submit' class='btn btn-eliminar'> <img src='delete.webp' alt='boton-eliminar'> Eliminar</button>";

                        echo "</form>";
                        echo "</td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>

        </section>

    </div>


    <script>
        function desearEliminar(){
            return confirm("¿Deseas de verdad eliminar a este estudiante del curso?");
        }
    </script>
</body>

</html>