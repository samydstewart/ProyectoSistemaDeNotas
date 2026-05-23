    <?php
        include ("conexionDB.php");
        $cod_cur = intval($_GET["cod_cur"]);
        $year = intval($_GET["year"]);

        $sql = "Select distinct periodo from inscripciones where cod_cur=$cod_cur and year=$year order by periodo asc";
        $resultado = pg_query($dbconn, $sql);

        $periodo = [];

        while ($row = pg_fetch_assoc($resultado)){
            $periodo[] = $row;
        }

        header("Content-type: application/json");
        echo json_encode($periodo);




    ?>