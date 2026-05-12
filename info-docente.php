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
            <p>Informaciond de Docentes</p>
        </div>
    </header>

    <div class="card">
        <section>
            <h3>Cursos del Docente</h3>
            <form action="curso.php" method="POST">
                <div class="campo">
                    <label for="cursos">Cursos</label>
                    <input list="cursos-lista" id="cursos-input" name="cursos" placeholder="Elige el cursos" class="form-control">
                    <datalist id="cursos-lista">
                        <option value="Bases de Datos">Bases de Datos</option>
                        <option value="Ecuaciones Diferenciales">Ecuaciones Diferenciales</option>
                        <option value="Estadística y Probabilidad">Estadística y Probabilidad</option>
                        <option value="Termodinámica">Termodinámica</option>
                        <option value="Bioquímica">Bioquímica</option>
                    </datalist>
                </div>
                <div class="campo">
                    <label for="year">Año Académico</label>
                    <input type="number" id="year" name="year" min="2000" max="2027" value="2026">
                </div>
                <div class="campo">
                    <p>Periodo Académico:</p>
                    <input type="radio" id="p1" name="periodo" value="2026-1">
                    <label for="p1">Primer Semestre</label>

                    <input type="radio" id="p2" name="periodo" value="2026-2">
                    <label for="p2">Segundo Semestre</label>
                </div>
            </form>
            <label for="ver-listado">Estudiantes</label>
            <button type="submit">Ver listado</button>
        </section>
    </div>




</body>

</html>