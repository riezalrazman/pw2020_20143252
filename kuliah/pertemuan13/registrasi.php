<?php
require 'functions.php';

if (isset($_POST['registrasi'])) {
  if (registrasi($_POST) > 0) {
    echo "<script>
    alert( ' User Baru Ditambahkan!');
    document.location.href = 'login.php';
    </script>";
  } else {
    echo 'User Gagal Ditambahkan!';
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registrasi User</title>
</head>

<body>
  <h3>Daftar User Baru</h3>
  <form action="" method="post">
    <ul>
      <li>
        <label> Username :</label>
        <input type="text" name="username">
      </li>

      <li>
        <label> Password :</label>
        <input type="password" name="p1">
      </li>

      <li>
        <label> Konfirmasi Password :</label>
        <input type="password" name="p2">
      </li>
      <li><button type="submit" name="registrasi">Daftar</button></li>
    </ul>
  </form>
</body>

</html>