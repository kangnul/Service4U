<?php
	include "koneksi.php";
	
	$usernametoko = $_REQUEST['usernametoko'];
	$passwordtoko = $_REQUEST['passwordtoko'];
	$nomortelepontoko = $_REQUEST['phonenumbertoko'];
	$namatoko = $_REQUEST['namatoko'];
	$alamattoko = $_REQUEST['alamattoko'];
	$layanantoko = $_REQUEST['jenislayanan'];
	$deskripsitoko = $_REQUEST['deskripsitoko'];
	$jamoperasitoko = $_REQUEST['jamoperasi'];
	$terms = $_REQUEST['terms'];
	$date = date('Y-m-d H:i:s');

	$cek = "SELECT usernametoko from toko where usernametoko = '$usernametoko'";
	$hasilcek = mysqli_query($con, $cek);
	
	if ($usernametoko == "" || $passwordtoko == "" || $nomortelepontoko == "" || $namatoko == "" || $alamattoko == "" || $layanantoko == "" || $deskripsitoko == "" || $jamoperasitoko == "" || $terms != "agree"){
		echo "<script type = 'text/javascript'> 
							alert('MOHON ISI SEMUA DATA YANG DIPERLUKAN');
							window.location = 'registertoko.php';
					</script>";
	}
	else{
		if (mysqli_num_rows($hasilcek) != 0){
			echo "<script type = 'text/javascript'> 
								alert('MOHON MASUKKAN USERNAME YANG LAIN');
								window.location = 'registertoko.php';
						</script>";
		}
		else{
			$insertdata = "INSERT INTO toko VALUES ('$usernametoko', MD5('$passwordtoko'), '$nomortelepontoko', '$namatoko', '$alamattoko', '$layanantoko', '$deskripsitoko', '$jamoperasitoko', '$date')";
			$masukkan = mysqli_query($con, $insertdata);
			header("Location: login.php");
		}
	}
	
?>