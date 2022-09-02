<?php 
$host = "localhost";
$user = "root";
$pass = "";
$db = "first_db";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
	die( "koneksi Error:" .mysqli_connect_errno(). '-'. mysqli_connect_error());

}
 ?>