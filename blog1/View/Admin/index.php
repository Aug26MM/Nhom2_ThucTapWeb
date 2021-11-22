<?php
	require('pages/login_admin.php');
	require '../../Lib/function.php';
	if (isset($_GET['controller'])) {
		$controller = $_GET['controller'];
	} else {
		$controller = '';
	}
	
	
