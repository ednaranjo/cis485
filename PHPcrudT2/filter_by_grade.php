<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Restaurants</title>
    </head>
    <body>
        <h3>New York City Restaurants Report: Filter By Grade</h3>
        
        <?php
        include("config.php");
        try {
            $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            $sql = 'CALL getgrades()';
            $q = $pdo->query($sql);
            $q->setFetchMode(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error occurred:" . $e->getMessage());
        }
        ?>
        <select onchange="loadGrades(this)">
            <option value="">-select grade-</option>
            <?php while ($r = $q->fetch()): ?>
            <option value="<?php echo $r['grade'] ?>"><?php echo $r['grade'] ?></option>
                
            <?php endwhile; ?>
        </select>
        <script>
        function loadGrades(a){
            grade = a.value;
            //alert(grade);
            window.location = "result_by_grade.php?grade="+grade;
        }
        </script>
    </body>
</html>
