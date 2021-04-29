<?php
require 'functions.php';

//jika tiada id di url
if (!isset($_GET['id'])) {
  header("Location: index.php");
  exit;
}

//ambil id dari url
$id = $_GET['id'];

$m = query("SELECT * FROM mahasiswa WHERE id = $id");


//check apakah button ubah telah ditekan
if (isset($_POST['ubah'])) {
  if (ubah($_POST) > 0) {
    echo "<script>
        alert('Data berhasil diubah');
        document.location.href = 'index.php';
        </script>";
  } else {
    echo "<script>
        alert('Data gagal diubah');
        document.location.href = 'index.php';
        </script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ubah Data Mahasiswa</title>
  <style>
    body {
      background-color: #70CEFA;
    }
  </style>
</head>

<body>
  <h3>Ubah Data Mahasiswa</h3>
  <form action="" method="post">
    <input type="hidden" name="id" value="<?= $m['id']; ?>">
    <ul>
      <li>
        <label>Nama : <input type="text" name="nama" value="<?= $m['nama']; ?>" autofocus required></label>
      </li>

      <li>
        <label>NRP : <input type="text" name="nrp" value="<?= $m['nrp']; ?>" required></label>
      </li>

      <li>
        <label>Email : <input type="text" name="email" value="<?= $m['email']; ?>" required></label>
      </li>

      <li>
        <label>Jurusan : <input type="text" name="jurusan" value="<?= $m['jurusan']; ?>" required></label>
      </li>

      <li>
        <label>Gambar : <input type="text" name="gambar" value="<?= $m['gambar']; ?>"></label>
      </li>

      <li><button type="submit" name="ubah"> Ubah Data!</button></li>

    </ul>
  </form>
</body>

</html>