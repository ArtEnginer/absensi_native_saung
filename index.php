<?php
/**
 * 
 *  Absensi Siswa CV. Saung IT Bumiayu *  CV. Saung IT Bumiayu
 *  fb.me/M DEF.ofdraw
 *  
 */

session_start();
include './lib/db/dbconfig.php';
//include './lib/db/functions.php';
date_default_timezone_set('Asia/Jakarta');

if (isset($_GET['page'])) {
  $page = $_GET['page'];
} else {
  $page = "home";
}
if (isset($_GET['id'])) {
  $id = $_GET['id'];
} else {
  $id = "id";
}
if (!isset($_SESSION['sw']) AND !isset($_SESSION['pb'])) {
  include 'view/login.php';
} else {
  include 'view/media.php';
}
?>