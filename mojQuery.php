<?php


function getQuery($myQuery){
    $contents = file_get_contents('mySQLdatabase.json');
        $credentials = json_decode($contents, true);
    
        $servername = $credentials['server'];
        $username = $credentials['username'];
        $password = $credentials['password'];
        $database_name = $credentials['database_name'];
        
        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $database_name);
        
        // Check connection
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        $result = mysqli_query($conn, $myQuery);
        mysqli_close($conn);
        return $result;
    }

?>