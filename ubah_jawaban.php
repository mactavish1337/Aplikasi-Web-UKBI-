<?php
session_start();
require 'koneksi.php';

if (!isset($_SESSION["login"]) || $_SESSION['username'] != 'admin') {
    header("Location: login.php");
    exit;
}

$id = $_POST['id'];
$jawaban = $_POST['pilihan_jawab'];
$query = "UPDATE tbl_jawaban SET pilihan_jawab='$jawaban' WHERE id = '$id' ";
$result=mysqli_query($con, $query);
echo json_encode(array("status" => TRUE));
?>