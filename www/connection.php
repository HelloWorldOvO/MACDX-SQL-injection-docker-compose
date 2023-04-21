<?php

$servername = "mysql";
$username = "root";
$password = "admin";
$dbname = "testdb";

$con = mysqli_connect($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>

