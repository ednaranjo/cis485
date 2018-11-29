<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Restaurants</title>
    </head>
    <body>
        <h3>New York City Restaurants Report</h3>

        <?php
        include("config.php");

        try {
            $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            $sql = 'CALL GetCount()';
            $q = $pdo->query($sql);
            $q->setFetchMode(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error occurred:" . $e->getMessage());
        }
        ?>
        <table border="1">
            <tr>
                <th>Restaurants on Report</th>
            </tr>
            <?php while ($r = $q->fetch()): ?>
                <tr>
                    <td><?php echo $r['restaurants'] ?></td>
                </tr>
            <?php endwhile; ?>
        </table>

        <ul>
            <li><a href="filter_by_borough.php">Filter by Borough</a></li>
            <li><a href="filter_by_grade.php">Filter by Grade</a></li>
            <li><a href="filter_by_zipcode.php">Filter by Zip Code</a></li>
        </ul>
    </body>
</html>
