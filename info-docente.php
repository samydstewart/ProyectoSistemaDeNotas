<?php
session_start();

if (!isset($_SESSION["cod_doc"])) {
    header("Location: index.php");
    exit();
}

$cod_doc = $_SESSION["cod_doc"];
$nomb_doc = $_SESSION["nomb_doc"];

include 'conexionDB.php';


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
            <p>Informaciond de <?php echo $_SESSION['nomb_doc']; ?></p>
        </div>
    </header>

    <div class="card">
        <section>
            <h3>Cursos del Docente</h3>
            <form action="ver-estudiantes.php" method="POST">
                <div class="campo">
                    <label>Cursos</label>
                    <select name="cod_cur" id="cursos-input" onchange="ActualizarPeriodos()">

                        <option value="">Seleccione el curso</option>
                        <?php
                        $sql = "select * from docentes e join cursos c on e.cod_doc=c.cod_doc and e.cod_doc=$cod_doc";
                        $result = pg_query($sql);

                        while ($fila = pg_fetch_assoc($result)) {
                            echo "<option value='{$fila['cod_cur']}'>{$fila["nomb_cur"]}</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="campo">
                    <label for="year">Año Académico</label>
                    <input type="number" id="year" name="year" min="2000" max="2027" value="2026" oninput="ActualizarPeriodos()">
                </div>
                <div class="campo">
                    <p>Periodo Académico:</p>
                    <div id="contenedor-periodos">
                        <span style="color: gray" ;>Seleccione un curso para ver los periodos</span>
                    </div>
                </div>
            </form>
            <label for="ver-listado">Estudiantes</label>
            <button type="submit">Ver listado</button>
        </section>
    </div>



    <script>
        async function ActualizarPeriodos() {
            const codCur = document.getElementById("contenedor-periodos");
            
        }

    </script>
</body>

</html>