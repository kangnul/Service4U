<?php
	include"koneksi.php";

	$namagambar = $_FILES['gambar']['name'];
	$path = $_FILES['gambar']['tmp_name'];
	
	move_uploaded_file($path, 'images/'.$namagambar);
	$query = "INSERT INTO tesgambar VALUES ('$namagambar')";
	$hasilinput = mysqli_query($con, $query);
?>