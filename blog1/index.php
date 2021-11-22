<?php
	require 'Model/Database.php';
	$db = new Database();
	require 'View/Admin/layouts/header.php'; /*giao diện header*/

	if (isset($_GET['controller'])) {
		require '../../Route/admin/web.php'; /*xử lý các request trong Route/web.php*/
	} else {
		require 'View/Admin/pages/home.php'; /*require giao diện trang chủ*/
	}

	require 'View/Admin/layouts/footer.php'; /*giao diện footer*/

	$db->closeDatabase();


	

	
	


	