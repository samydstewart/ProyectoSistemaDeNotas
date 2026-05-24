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
            <p>Inicio de Sesion</p>
        </div>
    </header>
<div class="card">
    <section class="login-container">
        <form action="validar-login.php" method="POST">
            <div class="campo">
                <label for="usuario">Codigo de Docente</label>
                <input type="text" id="usuario" name="usuario_db" required placeholder="1">
            </div>
            <div class="campo">
                <label for="contraseña">Contraseña</label>
                <input type="password" id="contrasena" name="contrasena_db" required/>
            </div>

            <button type="submit">Ingresar</button>
        </form>
    </section>

</div>
    


</body>
</html>