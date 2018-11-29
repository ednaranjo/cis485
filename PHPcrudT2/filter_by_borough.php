<?php
include("config.php");
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Restaurants</title>
    </head>
    <body>
        <h3>New York City Restaurants Report: Filter by Borough</h3>
        <?php
        include("config.php");
        try {
            $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            $sql = "CALL GetBoros()";
            $q = $pdo->query($sql);
            $q->setFetchMode(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error occurred:" . $e->getMessage());
        }
        ?>
        <select onchange="loadGrades(this)">
            <option value="">-select boro-</option>
            <?php while ($r = $q->fetch()): ?>
            <option value="<?php echo $r['boro'] ?>"><?php echo $r['boro'] ?></option>
                
            <?php endwhile; ?>
        </select>
        <script>
        function loadGrades(a){
            boro = a.value;
            window.location = "result_by_boro.php?boro="+boro;
        }
        </script>
    </body>
</html>
