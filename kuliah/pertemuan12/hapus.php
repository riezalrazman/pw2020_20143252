<?php
session_start();

if (!isset($_SESSION['login'])) {
  header("Location: login.php");
  exit;
}
require 'functions.php';

//jika tiada id di url
if (!isset($_GET['id'])) {
  header("Location: index.php");
  exit;
}

//ambil id dari url
$id = $_GET['id'];

if (hapus($id) > 0) {
  echo "<script>
  alert('Data berhasil dihapus');
  document.location.href = 'index.php';
  </script>";
} else {
  echo "<script>
  alert('Data gagal dihapus');
  document.location.href = 'latihan3.php';
  </script>";
}
