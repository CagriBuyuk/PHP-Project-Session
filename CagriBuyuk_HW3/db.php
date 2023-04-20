<?php
    //Database Connnection
    $dsn = "mysql:host=localhost;port=3306;dbname=test;charset=utf8mb4";
    $user = "root"; // "root" at home
    $pass = "";

    try {
        $db = new PDO($dsn,$user,$pass);
        $db -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }  catch(PDOException $ex){
        die("connection problem");
    }
    echo "Connected";

    function getProject($team){
        global $db;
        $stmt = $db -> prepare("select * from projects where team = ? ");
        $stmt -> execute([$team]);
        return $stmt -> fetch(PDO::FETCH_ASSOC);
    }


?>