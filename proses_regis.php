<?php
include 'koneksi.php';

$username = strtolower(stripslashes($_POST['username'])); 
$password = $_POST['password'];
$password2 = $_POST['password2'];
$email = strtolower(stripslashes($_POST['email'])); 

// cek kesamaan username
$result = mysqli_query($con, "SELECT * FROM users WHERE username='$username'");

if(mysqli_fetch_assoc($result)) {
    echo "<script>
        alert('username sudah terdaftar');
        document.location.href = 'register.php';
    </script>";
    return false;
}

// cek konfirmasi password
if($password !== $password2) {
    echo "<script>
        alert('konfirmasi password tidak sesuai');
        document.location.href = 'register.php';
    </script>";
    return false;
}

// enkripsi password
$pass_acak = password_hash($password, PASSWORD_DEFAULT);

$input = mysqli_query($con, "INSERT INTO users VALUES ('','$username','$email','$pass_acak')");

if($input) {
    echo "<script>
    alert('berhasil registrasi! silahkan login');
    document.location.href = 'login.php';
    </script>";
} else {
    echo "Gagal disimpan";
}