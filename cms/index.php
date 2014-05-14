<?php
	session_start();
	
	ini_set("memory_limit","1500M");
	include('config.php');
	include('../config.php');
	
	
	require_once(DIR_SYSTEM . 'startup.php');
	
	
	
	// Front Controller
	$controller = new Front();
	// Login
	$controller->addPreAction(new Action('common/login', 'checkLogin'));
	
	// Permission
	//$controller->addPreAction(new Action('common/permission', 'checkPermission'));
		
	// Router
	if (isset($request->get['route'])) {
		$action = new Router($request->get['route']);
	} else {
		$action = new Action('page/home', 'index');
	}
	
	// Dispatch
	$controller->dispatch($action, new Action('error/not_found', 'index'));
	
	// Output
	$response->output();
?>