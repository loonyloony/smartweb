<?php
	ini_set("memory_limit","150M");
	include('config.php');
	include('../config.php');
	//include('../config_default.php');
	require_once(DIR_SYSTEM . 'startup.php');
	
	// Front Controller
	$controller = new Front();
	
	$action = new Action('common/logout', 'index');
	// Dispatch
	$controller->dispatch($action, new Action('error/not_found', 'index'));
	
	// Output
	$response->output();
?>