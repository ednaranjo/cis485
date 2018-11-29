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
        <h3>New York City Restaurants Report: Filter by Zip Code</h3>
        Zip Code: <input name="zipcodein" id="zipcodein">
        <br>
        <input type="button" name="search" id="search" value="Filter" onclick="FilterByZip()">
        <script>
        function FilterByZip(){
            var zipBtn = document.getElementById("zipcodein");
            var theZipCode = zipBtn.value;
            window.location =  "result_by_zipcode.php?zipcode="+theZipCode;
        };
        </script>
    </body>
</html>
