<?php
require  "koneksi.php";
if(isset($_POST['upload'])){

    // filter data yang diinputkan
    $nip = filter_input(INPUT_POST, 'nip', FILTER_SANITIZE_STRING);
    $nama = filter_input(INPUT_POST, 'nama', FILTER_SANITIZE_STRING);
    $divisi = filter_input(INPUT_POST, 'divisi', FILTER_SANITIZE_STRING);
    $laker = filter_input(INPUT_POST, 'laker', FILTER_SANITIZE_STRING);
    $jabatan = filter_input(INPUT_POST, 'jabatan', FILTER_SANITIZE_STRING);
    $nilai = filter_input(INPUT_POST, 'nilai', FILTER_SANITIZE_STRING);
    $gaji = filter_input(INPUT_POST, 'gaji', FILTER_SANITIZE_STRING);
    $gol = filter_input(INPUT_POST, 'gol', FILTER_SANITIZE_STRING);
    $ket = filter_input(INPUT_POST, 'ket', FILTER_SANITIZE_STRING);
    // enkripsi password
    /*$password = password_hash($_POST["password"], PASSWORD_DEFAULT);
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);*/


    // menyiapkan query
    $mysql = "INSERT INTO user (nip,nama,divisi,laker,jabatan,nilai,gaji,gol,ket ) 
            VALUES ('$nip', '$nama','$divisi','$laker', '$jabatan', '$nilai','$gaji','$gol','$ket')";
    // var_dump($mysql); exit();
    $myQry = mysqli_query($conn,$mysql) or die ("gagal query" .mysqli_error($conn));

    // bind parameter ke query
    

    // jika query simpan berhasil, maka user sudah terdaftar
    // maka alihkan ke halaman login
    if($myQry) header("Location: upload.php");
}


?>