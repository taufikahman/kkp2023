<?php
    $namaserver="localhost";
    $userdb="root";
    $passdb="";
    $namadb="tutorialphp";
    //$url='http://localhost/informasi_display/';
    $koneksi=mysqli_connect($namaserver,$userdb,$passdb,$namadb);

    if(!$koneksi) {
        die("Koneksi ke database gagal" . mysqli_connect_error());
    }
    //$url=trim($url,'/');
?>