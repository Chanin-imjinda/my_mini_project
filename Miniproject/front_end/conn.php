<?php
    
    $severname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "art_shop";

    $conn = mysqli_connect($severname,$username,$password,$dbname);

    if(!$conn){
        die("Connection failed".mysqli_connect_error());
    }else{
        echo "Connection successfully";
    }
?>