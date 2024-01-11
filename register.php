<?php
include 'koneksi.php';
session_start();

if (isset($_SESSION['login'])) {
    header("Location: index.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Registrasi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style2.css">
    <link rel="stylesheet" href="assets/fontawesome/css/all.min.css">
    <link rel="shortcut icon" type="x-icon" href="assets/img/q&a.png">
</head>

<body>
    <div class="login">
        <h2 class="text-center text2">Halaman Registrasi</h2>
        <div class="row">
            <img src="assets/img/q&a.png" style="width: 150px; height: 120px; margin: auto;">
        </div>
        <form action="proses_regis.php" method="post">
            <div class="form-group input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-regular fa-user"></i></span>
                <input type="text" class="form-control" name="username" autocomplete="off" placeholder="Masukkan username" required>
            </div>
            <div class="form-group input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-solid fa-envelope"></i></span>
                <input type="email" class="form-control" name="email" autocomplete="off" placeholder="Masukkan email" required>
            </div>

            <div class="form-group input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-regular fa-lock"></i></span>
                <input type="password" class="form-control" name="password" placeholder="Masukkan password" required>
            </div>
            <div class="form-group input-group flex-nowrap">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-regular fa-lock"></i></span>
                <input type="password" class="form-control" name="password2" placeholder="Konfirmasi password" required>
            </div>

            <input type="submit" class="btn btn-warning btn-sm mt-3" value="Daftar">
        </form>
        <p>Sudah punya akun?<a href="login.php" class="ms-1 text-decoration-none">Login</a></p>
        <a href="home.php" class="text-decoration-none">kembali</a>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>