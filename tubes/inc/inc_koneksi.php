<?php 
$host       = "localhost";
$user       = "root";
$pass       = "";
$db         = "db_mytech";

$koneksi    = mysqli_connect($host,$user,$pass,$db);
if(!$koneksi){
    die("Gagal terkoneksi");
}