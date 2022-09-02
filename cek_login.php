<script type="text/javascript">
<?php 
// mengaktifkan session pada php
session_start();

// menghubungkan php dengan koneksi database
require 'koneksi.php';

// menangkap data yang dikirim dari form login
$email = $_POST['email'];
$password = $_POST['password'];


// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($conn,"select * from akun where email='$email' and password='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);

	// cek jika user login sebagai admin
	if($data['level']=="admin"){

		// buat session login dan username
		$_SESSION['email'] = $email;
		$_SESSION['level'] = "admin";
		// alihkan ke halaman dashboard admin
		header("location:awal.php");

	// cek jika user login sebagai pegawai
	}else if($data['level']=="pengunjung"){
		// buat session login dan username
		$_SESSION['email'] = $email;
		$_SESSION['level'] = "pengunjung";
		// alihkan ke halaman dashboard pegawai
		header("location:pengunjung/halaman_pengunjung.php");

	// cek jika user login sebagai pengurus
	

	}else{

		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}	
}else{
	header("location:index.php?pesan=gagal");
}

?>
</script>
