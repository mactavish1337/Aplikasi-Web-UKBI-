<?php
session_start();
require 'koneksi.php';

if (!isset($_SESSION["login"]) || $_SESSION['username'] != 'admin') {
    header("Location: login.php");
    exit;
}

$path = "audio/";
$file_audio = $_FILES['audio']['name'];
$tmp_file = $_FILES['audio']['tmp_name'];
$soal = $_POST['soal'];
$jawaban = $_POST['jawaban'];
move_uploaded_file($tmp_file, $path.$file_audio);
$query = "INSERT INTO tbl_soal VALUES ('','$soal','$jawaban', '$file_audio')";
$result=mysqli_query($con, $query);
echo json_encode(array("status" => TRUE));
?>